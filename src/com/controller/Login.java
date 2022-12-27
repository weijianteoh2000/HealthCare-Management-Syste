package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("username", request.getParameter("username"));
		session.setAttribute("password", request.getParameter("password"));
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals("admin") && password.equals("a1234")) {
			response.sendRedirect("../HealthCare-Management-System/shareFiles/HomePage.jsp");
		}else if(username.equals("customer") && password.equals("c1234")) {
			response.sendRedirect("../HealthCare-Management-System/shareFiles/HomePage.jsp");
		}else if(username.equals("doctor") && password.equals("d1234")) {
			response.sendRedirect("../HealthCare-Management-System/shareFiles/HomePage.jsp");
		}else if(username.equals("pharmacist") && password.equals("p1234")) {
			response.sendRedirect("../HealthCare-Management-System/shareFiles/HomePage.jsp");
		}else {
			PrintWriter out = response.getWriter();
			out.print("Username or password are wrong");
		}
		
	}

}
