package com.controller;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.Goods;
import com.model.Supplier;
import java.util.regex.*;    
import java.util.*;  

import dbutil.SupplierDAO;
@Controller
@RequestMapping("Supplier")
public class SupplierController {
	
	@RequestMapping("details")
	protected ModelAndView details(String value, HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		SupplierDAO Supplierdao = new SupplierDAO();
		List<Supplier> sList = Supplierdao.getAll();
		ModelAndView model = new ModelAndView("StockManagement/Supplier");
		model.addObject("successAdd",value);
		model.addObject("sList",sList);
		return model;
	}

	@RequestMapping("addSupplierForm")
	protected ModelAndView addSupplierForm(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("StockManagement/AddNewSupplier");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}
	@RequestMapping("updateSupplierForm")
	protected ModelAndView updateSupplierForm(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		SupplierDAO Supplierdao = new SupplierDAO();
		int id = Integer.parseInt(request.getParameter("updateindex"));
		Supplier SupplierDetails = Supplierdao.findById(id);
		List<Goods> goodsList = Supplierdao.findGoodsById(id);
		ModelAndView model = new ModelAndView("StockManagement/UpdateSupplier");
		model.addObject("sDetails",SupplierDetails);
		model.addObject("sList",goodsList);
		return model;
	}
	protected Boolean testInput(String regex,String value) {
	    Pattern pattern = Pattern.compile(regex);  
	    Matcher matcher = pattern.matcher(value);  
	    return matcher.matches();
	}
	//can add throw exception 
	/*1. the name & ref no should be unique 
	 * 2. quantity must > 0 */
	@RequestMapping("addSupplier")
	protected ModelAndView addSupplier(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		SupplierDAO Supplierdao = new SupplierDAO();
		Boolean error=false;
		Supplier i = new Supplier(); 
		ModelAndView model = new ModelAndView("StockManagement/AddNewSupplier");
		 try { 
		i.setCompanyName(request.getParameter("companyName"));
		String email = request.getParameter("email");
		String website = request.getParameter("website");
		String phoneNo = request.getParameter("phoneNo");
		
		i.setWebsite(website);
		i.setEmail(email);
		i.setPhoneNo(phoneNo);
		i.setContact(request.getParameter("contact"));
		i.setAddress(request.getParameter("address"));
		String[] goodsName = request.getParameterValues("goodsName");
		String[] goodsDescription = request.getParameterValues("goodsDescription");
		List<Goods>goodsList = new ArrayList<Goods>();
		for(int n=0;n<goodsName.length;n++) {
			Goods goods = new Goods();
			goods.setName(goodsName[n]);
			goods.setDescription(goodsDescription[n]);
			goods.setStatus("unorder");
			goods.setQuantity(0);
			goods.setOrderID(-1);
			goodsList.add(goods);
		}
        i.setGoods(goodsList);
        //Input validation
    	//check email error
	    String regex = "^[A-Za-z0-9+_.-]+@(.+)$"; 
	    error = !testInput(regex,email);
		if(error)model.addObject("emailError","Please gives a proper email address !!");
		//check website url error
		regex = "https://.*";
		error = !testInput(regex,website);
		if(error)model.addObject("websiteError","Please gives a proper website url !!");
		//check phone no error
		regex = "^(\\+?6?01)[0-46-9]-*[0-9]{7,8}$";
		error = !testInput(regex,phoneNo);
		if(error)model.addObject("phoneNoError","Please gives a proper phone number with the format of (012-12345678) !!");
		System.out.print("website url:"+i.getWebsite());
        if(error==false) Supplierdao.add(i);else throw new Exception();
		 } catch(Exception e) { 
		  System.err.print(e.toString()); if(e instanceof DuplicateKeyException) 
		  model.addObject("duplicateError",e); 
		  model.addObject("sDetails",i);
		  return model; }
		return details("New Supplier was successfully added !!", request);
	}
	//can add throw exception where the ref no should be unique
	@RequestMapping("updateSupplier")
	protected ModelAndView updateSupplier(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		Supplier i = new Supplier();
		int id = Integer.parseInt(request.getParameter("id"));
		i.setCompanyName(request.getParameter("companyName"));
		i.setEmail(request.getParameter("email"));
		i.setPhoneNo(request.getParameter("phoneNo"));
		i.setContact(request.getParameter("contact"));
		i.setAddress(request.getParameter("address"));
		i.setWebsite(request.getParameter("website"));
		String[] arr =null;
		String[] goodsName = request.getParameterValues("goodsName");
		String[] goodsDescription = request.getParameterValues("goodsDescription");
		List<Goods>goodsList = new ArrayList<Goods>();
		for(int n=0;n<goodsName.length;n++) {
			Goods goods = new Goods();
			goods.setName(goodsName[n]);
			goods.setDescription(goodsDescription[n]);
			goodsList.add(goods);
		}
        i.setGoods(goodsList);
		SupplierDAO insdao = new SupplierDAO();
		int rw = insdao.update(i,id);
		return details("Successfully updates the supplier", request);
	}
	
	@RequestMapping("deleteSupplier")
	@ResponseBody()
	public ModelAndView delete(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int id = Integer.parseInt(request.getParameter("delindex"));
		SupplierDAO insdao = new SupplierDAO();
		int rw = insdao.delete(id);
		return details("Successfully delete a supplier", request);
	}	
}
