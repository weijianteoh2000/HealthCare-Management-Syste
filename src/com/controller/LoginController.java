package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.model.Profile;
import dbutil.ProfileDAO;

/*
Before login regsiter for these three persons:
 
  */
@Controller
@RequestMapping("login")
public class LoginController {
	
	@RequestMapping("loginForm")
	protected ModelAndView loginForm(){
		ModelAndView model = new ModelAndView("Login_Register/Login");
		return model;
	}
	@RequestMapping("validate")
	protected ModelAndView validate(HttpServletRequest req) throws Exception{
		ModelAndView model;
		try { 
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		HttpSession session = req.getSession(true);
		session.setAttribute("username",username);
		session.setAttribute("password", password);
		ProfileDAO idao = new ProfileDAO();
		Profile prof = idao.findByUP(username,password);
		}
		catch(Exception e) {
                    e.printStackTrace();
			model = new ModelAndView("Login_Register/Login");
			if(e instanceof EmptyResultDataAccessException) {
			model.addObject("EmptyResult",e);}
			return model;
		}
		model = new ModelAndView("shareFiles/HomePage");
		return model;
	}
}
