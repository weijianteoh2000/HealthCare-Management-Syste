package com.controller;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.Order;
import com.model.Stock;

import dbutil.OrderDAO;
import dbutil.StockDAO;
@Controller
@RequestMapping("product")
public class ProductController {
	
	@RequestMapping("getAll")
	protected ModelAndView getAll() {
		StockDAO stockdao = new StockDAO();
		List<Stock> sList = stockdao.getAll();
		ModelAndView model = new ModelAndView("OrderManagement/Product");
		model.addObject("defaultQTY",0);
		model.addObject("productList",sList);
		return model;
	}

	@RequestMapping("addStockForm")
	protected ModelAndView addStockForm() {
		ModelAndView model = new ModelAndView("StockManagement/AddNewStock");
		return model;
	}
	@RequestMapping("updateStockForm")
	protected ModelAndView updateStockForm(HttpServletRequest request) {
		StockDAO stockdao = new StockDAO();
		int id = Integer.parseInt(request.getParameter("updateindex"));
		Stock stockDetails = stockdao.findById(id);
		ModelAndView model = new ModelAndView("StockManagement/UpdateStock");
		model.addObject("sDetails",stockDetails);
		return model;
	}
	//can add throw exception 
	/*1. the name & ref no should be unique 
	 * 2. quantity must > 0 */
	@RequestMapping("addStock")
	protected ModelAndView addStock(HttpServletRequest request) throws Exception{
		StockDAO stockdao = new StockDAO();
		 try { 
		Stock i = new Stock(); 
		if(Integer.parseInt(request.getParameter("quantity"))<=0) throw new Exception("negativeValue");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		double price = Double.parseDouble(request.getParameter("price"));
		if(quantity<=0) throw new Exception("negativeValue");
		i.setImage(request.getParameter("image"));
		i.setName(request.getParameter("name"));
		i.setQuantity(quantity);
		i.setOrigin(request.getParameter("origin"));
		i.setRefNo(request.getParameter("refNo"));
		double unitPrice=  price/quantity;
		i.setUnitPrice(unitPrice); 
		i.setArrDate(request.getParameter("arrDate"));
		i.setExpDate(request.getParameter("expDate"));
		int rw = stockdao.add(i);
		}
		catch(Exception e) {
			ModelAndView model = new ModelAndView("StockManagement/AddNewStock");
			System.err.print(e.toString());
			if(e instanceof DuplicateKeyException) {
				model.addObject("duplicateError",e);
			}else if(e.toString().equals("negativeValue")) {
				model.addObject("negativeValue",e.toString());
			}
			return model;
		}
		List<Stock> sList = stockdao.getAll();
		ModelAndView model = new ModelAndView("StockManagement/Details");
		model.addObject("sList",sList);
		model.addObject("successAdd","New stock was successfully added !!");
		return model;
	}
	//can add throw exception where the ref no should be unique
	@RequestMapping("updateStock")
	protected ModelAndView updateStock(HttpServletRequest request) {
		Stock i = new Stock();
		int id = Integer.parseInt(request.getParameter("id"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		i.setName(request.getParameter("name"));
		i.setQuantity(quantity);
		i.setOrigin(request.getParameter("origin"));
		i.setRefNo(request.getParameter("refNo"));
		i.setArrDate(request.getParameter("arrDate"));
		i.setExpDate(request.getParameter("expDate"));
		StockDAO insdao = new StockDAO();
		int rw = insdao.update(i,id);
		return getAll();
	}
	@RequestMapping("deleteStock")
	@ResponseBody()
	public ModelAndView delete(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("delindex"));
		StockDAO insdao = new StockDAO();
		int rw = insdao.delete(id);
		return getAll();
	}
	
	@RequestMapping("addToCart") 
	public ModelAndView addToCart(HttpServletRequest request) {
		StockDAO stockdao = new StockDAO();
		OrderDAO orderDao = new OrderDAO();
		Order o = new Order();
		HttpSession session =  request.getSession(false);
		String[] arrQuantity = request.getParameterValues("qty");
		int index = Integer.parseInt(request.getParameter("looping"));
		String[] arrUnitPrice = request.getParameterValues("arrUnitPrice");
		String[] arrID = request.getParameterValues("arrId");
		String[] arrName = request.getParameterValues("arrName");
		int id = (int)session.getAttribute("id");
		List<Order> oList = new ArrayList<Order>();
		
		for(int n=0; n<index; n++) {
			o.setItem(arrName[n]);
			System.out.print(arrName[n]);
			System.out.print(index);
			System.out.print("quantity:" + Integer.parseInt(arrQuantity[n]));
			o.setQuantity(Integer.parseInt(arrQuantity[n]));
			o.setUnitPrice(Double.parseDouble(arrUnitPrice[n]));
			int rw = orderDao.addNew(o,id);
		}
		return getAll();
	}
}