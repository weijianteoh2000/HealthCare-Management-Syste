package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dbutil.OrderDAO;
import dbutil.ProfileDAO;
import com.model.Profile;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	
	@RequestMapping("/getAll")
	@ResponseBody()
	public String getAll(Model model){
		ProfileDAO insdao = new ProfileDAO();
		List<Profile> iList = insdao.getAll();
		model.addAttribute(iList);
		return "this is from getAll - Profile"+iList.toString();
	}
	
	@RequestMapping("/getByUTC")
	@ResponseBody()
	public ModelAndView getByUTC(){
		ProfileDAO insdao = new ProfileDAO();
		List<Profile> pList = insdao.findByUTC("customer");
		
		List<Profile> iList = insdao.getAll();
		List<String> dateList = new ArrayList<String>();
		List<String> regList = new ArrayList<String>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for (Profile p : iList) {
			dateList.add(sdf.format(p.getLastOrderDate()));
			regList.add(sdf.format(p.getRegisteredDate()));
		}
		
		
		ModelAndView model = new ModelAndView("OrderManagement/Customer");
		model.addObject("dList",dateList);
		model.addObject("rList",regList);
		model.addObject("pList",pList);
		return model; //return jsp view
	}
	
	@RequestMapping("/getById")
	@ResponseBody()
	public ModelAndView getById(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		ProfileDAO idao= new ProfileDAO();
		Profile prof= idao.findById(id);
		ModelAndView model = new ModelAndView("OrderManagement/Order");
		model.addObject("cust",prof);
		return model;
	}
	
	@RequestMapping("/add")
	//@ResponseBody()
	public ModelAndView add(HttpServletRequest request){
		Profile i = new Profile();
		i.setName(request.getParameter("firstName")+request.getParameter("lastName"));
		i.setUsername(request.getParameter("username"));
		i.setEmail(request.getParameter("email"));
		i.setPassword(request.getParameter("password"));
		ProfileDAO insdao = new ProfileDAO();
		int rw = insdao.add(i);
		ModelAndView model = new ModelAndView("Login_Register/Login");
		return model;
	}
	
	@RequestMapping("/update")
	@ResponseBody()
	public String update(HttpServletRequest request) {
		Profile i = new Profile();
		int id = Integer.parseInt(request.getParameter("id"));
		i.setName(request.getParameter("name"));
		i.setUsername(request.getParameter("username"));
		i.setEmail(request.getParameter("email"));
		i.setPassword(request.getParameter("password"));
		ProfileDAO insdao = new ProfileDAO();
		int rw = insdao.update(i,id);
		return "this is from update - Profile... row affected :"+rw;
	}

	@RequestMapping("/delete")
	@ResponseBody()
	public String delete(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		ProfileDAO insdao = new ProfileDAO();
		int rw = insdao.delete(id);
		return "this is from delete - Profile... row affected :"+rw;
	}
	
	@RequestMapping("/editCustomer")
	protected ModelAndView editCustomer(HttpServletRequest request) {
		Profile p = new Profile();
		int id = Integer.parseInt(request.getParameter("id"));
		ModelAndView model = new ModelAndView("OrderManagement/EditCustomer"); //jsp file name
		ProfileDAO idao= new ProfileDAO();
		p = idao.findById(id);
		model.addObject("customer",p);
		return model;
	}
}
