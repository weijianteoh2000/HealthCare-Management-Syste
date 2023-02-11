package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dbutil.ProfileDAO;
import dbutil.StockDAO;

import com.model.Profile;
import com.model.Stock;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@RequestMapping("/customerPage")
	protected ModelAndView customerPage() {
		ProfileDAO insdao = new ProfileDAO();
		List<Profile> pList = insdao.findByUTC("customer");
		ModelAndView model = new ModelAndView("OrderManagement/Customer");
		model.addObject("pList",pList);
		return model;
	}
	
	@RequestMapping("/getAll")
	@ResponseBody()
	public String getAll(Model model){
		ProfileDAO insdao = new ProfileDAO();
		List<Profile> iList = insdao.getAll();
		model.addAttribute(iList);
		return "this is from getAll - Profile"+iList.toString();
	}
	
	@RequestMapping("/getById")
	@ResponseBody()
	public String getById(HttpServletRequest request, Model model) {
		int id = Integer.parseInt(request.getParameter("id"));
		ProfileDAO idao= new ProfileDAO();
		Profile prof= idao.findById(id);
		model.addAttribute(prof);
		return "this is from getById - Profile"+ prof.toString();
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	@ResponseBody()
	public ModelAndView update(HttpServletRequest request) {
		Profile i = new Profile();
		int id = Integer.parseInt(request.getParameter("id"));
		i.setName(request.getParameter("name"));
		i.setAddress(request.getParameter("address"));
		i.setPhone(request.getParameter("phone"));
		i.setEmail(request.getParameter("email"));
		ProfileDAO pdao = new ProfileDAO();
		int rw = pdao.update(i,id);
		
		List<Profile> pList = pdao.findByUTC("customer");
		ModelAndView model = new ModelAndView("OrderManagement/Customer");
		model.addObject("pList",pList);
		model.addObject("successUpdate", "You have successfully updated!");
		return model;
	}
	
	@RequestMapping(value="/updateCust",method=RequestMethod.POST)
	@ResponseBody()
	public ModelAndView updateCust(HttpServletRequest request) {
		Profile i = new Profile();
		int id = Integer.parseInt(request.getParameter("id"));
		i.setName(request.getParameter("name"));
		i.setAddress(request.getParameter("address"));
		i.setPhone(request.getParameter("phone"));
		i.setEmail(request.getParameter("email"));
		ProfileDAO pdao = new ProfileDAO();
		int rw = pdao.update(i,id);
		
		List<Profile> pList = pdao.findByUTC("customer");
		ModelAndView model = new ModelAndView("OrderManagement/Customer");
		model.addObject("pList",pList);
		model.addObject("successUpdate", "You have successfully updated!");
		return model;
	}
	
	@RequestMapping("deleteCustomer")
	@ResponseBody()
	public ModelAndView delete(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		ProfileDAO pdao = new ProfileDAO();
		int rw = pdao.delete(id);
		
		List<Profile> pList = pdao.findByUTC("customer");
		ModelAndView model = new ModelAndView("OrderManagement/Customer");
		model.addObject("pList",pList);
		model.addObject("successDelete", "You have successfully deleted!");
		return model;
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
