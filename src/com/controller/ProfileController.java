package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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

}
