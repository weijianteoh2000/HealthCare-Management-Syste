package com.controller;

import java.text.SimpleDateFormat;

import java.util.Date;

import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dbutil.OrderDAO;
import dbutil.ProfileDAO;
import com.model.Profile;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	
	@RequestMapping("/profileEdit")
	protected ModelAndView profileEdit(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("shareFiles/profileEdit");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int id = (int)session.getAttribute("id");
		ProfileDAO idao= new ProfileDAO();
		Profile prof= idao.findById(id);
		model.addObject("prof",prof);
		model.addObject("userType",prof.getUserType());
		return model;
	}
	
	@RequestMapping("/getByUTC")
	@ResponseBody()
	public ModelAndView getByUTC(HttpServletRequest request){
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
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
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
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
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		Profile i = new Profile();
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yy");
		i.setName(request.getParameter("firstName")+request.getParameter("lastName"));
		i.setGender(request.getParameter("gender"));
		i.setAge(Integer.parseInt(request.getParameter("age")));
		i.setPhone(request.getParameter("phone"));
		i.setOccupation(request.getParameter("occupation"));
		i.setIc(request.getParameter("ic"));
		i.setAddress(request.getParameter("address"));
		i.setUsername(request.getParameter("username"));
		i.setEmail(request.getParameter("email"));
		i.setPassword(request.getParameter("password"));
		i.setUserType("customer");
		i.setNumOrder(0);
		i.setLastOrderDate(date);
		i.setRegisteredDate(date);
		ProfileDAO insdao = new ProfileDAO();
		int rw = insdao.add(i);
		ModelAndView model = new ModelAndView("Login_Register/Login");
		return model;
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	@ResponseBody()
	public ModelAndView update(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		Profile prof = new Profile();
		ProfileDAO idao= new ProfileDAO();
		int id = (int)session.getAttribute("id");
		prof.setId(id);
		
		if(request.getParameter("action") != null) {
			ModelAndView model1 = new ModelAndView("shareFiles/profile");
			prof = idao.findById(id);
			model1.addObject("prof",prof);
			return model1;
		}
		
		prof.setName(request.getParameter("name"));
		prof.setGender(request.getParameter("gender"));
		prof.setAge(Integer.parseInt(request.getParameter("age")));
		prof.setPhone(request.getParameter("phone"));
		prof.setOccupation(request.getParameter("occupation"));
		prof.setIc(request.getParameter("ic"));
		prof.setAddress(request.getParameter("address"));
		prof.setEmail(request.getParameter("email"));
		ProfileDAO insdao = new ProfileDAO();
		
		int rw = insdao.update(prof);
		
		ModelAndView model = new ModelAndView("shareFiles/profile");
		prof = idao.findById(id);
		model.addObject("prof",prof);
		return model;
	}


	

	@RequestMapping("/editCustomer")
	protected ModelAndView editCustomer(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		Profile p = new Profile();
		int id = Integer.parseInt(request.getParameter("id"));
		ModelAndView model = new ModelAndView("OrderManagement/EditCustomer"); //jsp file name
		ProfileDAO idao= new ProfileDAO();
		p = idao.findById(id);
		model.addObject("customer",p);
		return model;
	}
	
	@RequestMapping("/addStuff")
	//@ResponseBody()
	public ModelAndView addStuff(HttpServletRequest request){
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		String check = (String)request.getAttribute("addStuffStop");
		if (check==null) {
			Profile i = new Profile();
			Date date = new Date();
			i.setName(request.getParameter("firstName")+request.getParameter("lastName"));
			i.setGender(request.getParameter("gender"));
			i.setAge(Integer.parseInt(request.getParameter("age")));
			i.setPhone(request.getParameter("phone"));
			i.setOccupation(request.getParameter("occupation"));
			i.setIc(request.getParameter("ic"));
			i.setAddress(request.getParameter("address"));
			i.setUsername(request.getParameter("username"));
			i.setEmail(request.getParameter("email"));
			i.setPassword(request.getParameter("password"));
			i.setUserType(request.getParameter("userType"));
			i.setNumOrder(0);
			i.setLastOrderDate(date);
			i.setRegisteredDate(date);
			ProfileDAO insdao = new ProfileDAO();
			int rw = insdao.add(i);
			request.setAttribute("addStuffStop", "stop");
		}

		ModelAndView model = new ModelAndView("Login_Register/AddStuff");
		return model;
	}
}
