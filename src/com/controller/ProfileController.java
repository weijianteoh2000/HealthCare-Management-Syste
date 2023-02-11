package com.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dbutil.ProfileDAO;
import com.model.Profile;

@Controller
@RequestMapping("/profile")
public class ProfileController {
	
	@RequestMapping("/profileEdit")
	protected ModelAndView profileEdit(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("shareFiles/profileEdit");
		HttpSession session =  request.getSession(false);
		int id = (int)session.getAttribute("id");
		ProfileDAO idao= new ProfileDAO();
		Profile prof= idao.findById(id);
		model.addObject("prof",prof);
		model.addObject("userType",prof.getUserType());
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
	
	@RequestMapping("/add")
	//@ResponseBody()
	public ModelAndView add(HttpServletRequest request){
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
		
		HttpSession session =  request.getSession(false);
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

	@RequestMapping("/delete")
	@ResponseBody()
	public String delete(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		ProfileDAO insdao = new ProfileDAO();
		int rw = insdao.delete(id);
		return "this is from delete - Profile... row affected :"+rw;
	}
	
	@RequestMapping("/addStuff")
	//@ResponseBody()
	public ModelAndView addStuff(HttpServletRequest request){
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
