package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.model.Stock;
import dbutil.StockDAO;

@Controller
@RequestMapping("stock")
public class StockController {

	@RequestMapping("details")
	protected ModelAndView details(String value, HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		StockDAO stockdao = new StockDAO();
		List<Stock> sList = stockdao.getAll();
		ModelAndView model = new ModelAndView("StockManagement/Details");
		model.addObject("sList", sList);
		model.addObject("successAdd", value);
		return model;
	}

	@RequestMapping("addStockForm")
	protected ModelAndView addStockForm(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		ModelAndView model = new ModelAndView("StockManagement/AddNewStock");
		return model;
	}

	@RequestMapping("updateStockForm")
	protected ModelAndView updateStockForm(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		StockDAO stockdao = new StockDAO();
		int id = Integer.parseInt(request.getParameter("updateindex"));
		Stock stockDetails = stockdao.findById(id);
		ModelAndView model = new ModelAndView("StockManagement/UpdateStock");
		model.addObject("sDetails", stockDetails);
		return model;
	}

	// can add throw exception
	/*
	 * 1. the name & ref no should be unique 2. quantity must > 0
	 */
	@RequestMapping("addStock")
	protected ModelAndView addStock(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		StockDAO stockdao = new StockDAO();
		Stock i = new Stock();
		ModelAndView model = new ModelAndView("StockManagement/AddNewStock");
		try {
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			double price = Double.parseDouble(request.getParameter("price"));
			i.setImage(request.getParameter("image"));
			i.setName(request.getParameter("name"));
			i.setDescription(request.getParameter("description"));
			i.setQuantity(quantity);
			i.setOrigin(request.getParameter("origin"));
			i.setRefNo(request.getParameter("refNo"));
			double unitPrice = price / quantity;
			i.setUnitPrice(unitPrice);
			i.setArrDate(request.getParameter("arrDate"));
			i.setExpDate(request.getParameter("expDate"));
			if (quantity <= 0 && price <= 0)
				throw new Exception("negative values");
			if (quantity <= 0)
				throw new MyException("negative quantity");
			if (price <= 0)
				throw new MyException("negative price");
			int rw = stockdao.add(i);
		} catch (MyException e) {
			System.out.print("error message:" + e.str);
			model.addObject("negativeValue", e.str);
			model.addObject("sDetails", i);
			return model;
		} catch (Exception e) {
			System.err.print("error message: " + e);
			if (e instanceof DuplicateKeyException)
				model.addObject("duplicateError", e);
			model.addObject("sDetails", i);
			return model;
		}
		return details("New stock was successfully added !!", request);
	}

	// can add throw exception where the ref no should be unique
	@RequestMapping("updateStock")
	protected ModelAndView updateStock(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		StockDAO stockdao = new StockDAO();
		Stock i = new Stock();
		ModelAndView model = new ModelAndView("StockManagement/UpdateStock");
		try {
			int id = Integer.parseInt(request.getParameter("updateindex"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			double price = Double.parseDouble(request.getParameter("price"));
			i.setImage(request.getParameter("image"));
			i.setName(request.getParameter("name"));
			i.setDescription(request.getParameter("description"));
			i.setQuantity(quantity);
			i.setOrigin(request.getParameter("origin"));
			i.setRefNo(request.getParameter("refNo"));
			double unitPrice = price / quantity;
			i.setUnitPrice(unitPrice);
			i.setArrDate(request.getParameter("arrDate"));
			i.setExpDate(request.getParameter("expDate"));
			if (quantity <= 0 && price <= 0)
				throw new Exception("negative values");
			if (quantity <= 0)
				throw new MyException("negative quantity");
			if (price <= 0)
				throw new MyException("negative price");
			int rw = stockdao.update(i, id);
		} catch (MyException e) {
			System.out.print("error message:" + e.str);
			model.addObject("negativeValue", e.str);
			model.addObject("sDetails", i);
			return model;
		} catch (Exception e) {
			System.err.print("error message: " + e);
			if (e instanceof DuplicateKeyException)
				model.addObject("duplicateError", e);
			model.addObject("sDetails", i);
			return model;
		}
		return details("Successfully update the stock !!", request);
	}

	@RequestMapping("deleteStock")
	@ResponseBody()
	public ModelAndView delete(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int id = Integer.parseInt(request.getParameter("delindex"));
		StockDAO insdao = new StockDAO();
		int rw = insdao.delete(id);
		return details("The stock is deleted", request);
	}
}
