package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.Order;
import com.model.Profile;
import com.model.Stock;

import dbutil.OrderDAO;
import dbutil.ProfileDAO;
import dbutil.StockDAO;

@Controller
@RequestMapping("order")
public class OrderController {

	private static final boolean TRUE = false;

	@RequestMapping("/orderPage")
	protected ModelAndView orderPage(HttpServletRequest request) {
		OrderDAO Orderdao = new OrderDAO();
		List<Order> oList = Orderdao.getAll();
		ModelAndView model = new ModelAndView("OrderManagement/Order");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		model.addObject("oList", oList);
		return model;
	}

	@RequestMapping("/pharManageOrderPage")
	protected ModelAndView pharManageOrderPage(HttpServletRequest request) {
		OrderDAO Orderdao = new OrderDAO();
		List<Order> oList = Orderdao.getAll();
		ModelAndView model = new ModelAndView("OrderManagement/phar_manageOrder");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		model.addObject("oList", oList);
		return model;
	}

	@RequestMapping("editOrderPending")
	protected ModelAndView editOrderPending(HttpServletRequest request) {
		OrderDAO orderpendingdao = new OrderDAO();
//		List<Order> orderPendingList = orderpendingdao.getAll();
		ModelAndView model = new ModelAndView("OrderManagement/EditOrderPending"); // jsp file name
//		model.addObject("orderPendingList",orderPendingList);
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}

	@RequestMapping("custCheckOrder")
	protected ModelAndView custCheckOrder(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int custId = (int) session.getAttribute("id");

		// view pending order
		OrderDAO odao = new OrderDAO();
		List<Order> oList = odao.findByCustId(custId);

		ModelAndView model = new ModelAndView("OrderManagement/cust_manageOrder"); // jsp file name

		model.addObject("oList", oList);
		return model;
	}

	@RequestMapping("custViewOrderHistory")
	protected ModelAndView custViewOrderHistory(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int custId = (int) session.getAttribute("id");

		// view pending order
		OrderDAO odao = new OrderDAO();
		List<Order> oList = odao.findByCustId(custId);

		List<String> dateList = new ArrayList<String>();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for (Order o : oList) {
			if (o.getStatus().equals("Delivered")) {
				dateList.add(sdf.format(o.getOrderDate()));
			}
		}

		ModelAndView model = new ModelAndView("OrderManagement/CustomerOrderHistory"); // jsp file name
		model.addObject("oList", oList);
		model.addObject("dList", dateList);
		return model;
	}

	@RequestMapping("pharViewOrderHistory")
	protected ModelAndView pharViewOrderHistory(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int custId = (int) session.getAttribute("id");

		// view pending order
		OrderDAO odao = new OrderDAO();
		List<Order> oList = odao.getAll();

		ModelAndView model = new ModelAndView("OrderManagement/PharmacistViewOrderHistory"); // jsp file name
		model.addObject("oList", oList);
		return model;
	}

	@RequestMapping("placeOrder")
	protected ModelAndView placeOrder(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int custId = (int) session.getAttribute("id");
		OrderDAO orderDao = new OrderDAO();
		// get array of data
		String[] arrName = request.getParameterValues("orderName");
		String[] arrPrice = request.getParameterValues("price");
		String[] arrQuantity = request.getParameterValues("qty");
		String[] arrID = request.getParameterValues("id");
		List<Order> orderList = new ArrayList();
		for (int n = 0; n < arrQuantity.length; n++) {
			Order o = new Order();
			o.setItem(arrName[n]);
			o.setUnitPrice(Double.parseDouble(arrPrice[n]));
			o.setQuantity(Integer.parseInt(arrQuantity[n]));
			int rw = orderDao.update(o, Integer.parseInt(arrID[n]));
			orderList.add(o);
		}

		// get customer details
		Profile p = new Profile();
		ProfileDAO pdao = new ProfileDAO();
		p = pdao.findById(custId);

		// get order receipt
		OrderDAO odao = new OrderDAO();
		// List<Order> oList = odao.findByCustId(custId);

		ModelAndView model = new ModelAndView("OrderManagement/confirmOrder");// jsp file name
		model.addObject("custDetails", p);
		model.addObject("oList", orderList);
		return model;
	}

	@RequestMapping("manageOrder")
	protected ModelAndView manageOrder(HttpServletRequest request) {
		int custId = Integer.parseInt(request.getParameter("id"));

		// get customer details
		Profile p = new Profile();
		ProfileDAO pdao = new ProfileDAO();
		p = pdao.findById(custId);

		// get order receipt
		OrderDAO odao = new OrderDAO();
		List<Order> oList = odao.findByCustId(custId);

		ModelAndView model = new ModelAndView("OrderManagement/EditOrderPending");// jsp file name
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		model.addObject("custDetails", p);
		model.addObject("oList", oList);
		return model;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody()
	public ModelAndView update(HttpServletRequest request) {
		Profile p = new Profile();
		Order o = new Order();

		OrderDAO odao = new OrderDAO();

		int id = Integer.parseInt(request.getParameter("id"));
		int orderId = Integer.parseInt(request.getParameter("orderId"));

		p.setName(request.getParameter("name"));
		p.setAddress(request.getParameter("address"));
		p.setPhone(request.getParameter("phone"));

		ProfileDAO idao = new ProfileDAO();
		int rw = idao.updateCust(p, id);
//		rw = odao.update(o, orderId);
//
		List<Order> oList = odao.findByCustId(id);
		ModelAndView model = new ModelAndView("OrderManagement/cust_manageOrder");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		model.addObject("oList", oList);
		model.addObject("successUpdate", "You have successfully updated!");
		return model;
	}

	@RequestMapping("custEditOrder")
	protected ModelAndView custEditOrder(HttpServletRequest request) {
		OrderDAO odao = new OrderDAO();
		Order o = new Order();
		Profile p = new Profile();
		int id = Integer.parseInt(request.getParameter("id"));
		int orderId = Integer.parseInt(request.getParameter("orderId"));
		ModelAndView model = new ModelAndView("OrderManagement/EditOrder"); // jsp file name
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		ProfileDAO idao = new ProfileDAO();
		p = idao.findById(id);
		o = odao.findById(orderId);
		model.addObject("customer", p);
		model.addObject("order", o);
		return model;
	}

	@RequestMapping("addOrder")
	protected ModelAndView addOrder(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		OrderDAO Orderdao = new OrderDAO();
		try {
			Order o = new Order();
			int qtt = Integer.parseInt(request.getParameter("quantity"));
			double uPrice = Double.parseDouble(request.getParameter("unitPrice"));
			if (Integer.parseInt(request.getParameter("quantity")) <= 0)
				throw new Exception("negativeValue");
			o.setItem(request.getParameter("name"));
			o.setQuantity(qtt);
			o.setUnitPrice(uPrice);
			int rw = Orderdao.add(o);
		} catch (Exception e) {
			ModelAndView model = new ModelAndView("OrderManagement/Order");
			System.err.print(e.toString());
			if (e instanceof DuplicateKeyException) {
				model.addObject("duplicateError", e);
			} else if (e.toString().equals("negativeValue")) {
				model.addObject("negativeValue", e.toString());
			}
			return model;
		}
		List<Order> sList = Orderdao.getAll();
		ModelAndView model = new ModelAndView("OrderManagement/Order");
		model.addObject("orderList", sList);
		model.addObject("successAdd", "New Order was successfully added !!");
		return model;
	}

	@RequestMapping("/deleteOrder")
	@ResponseBody()
	public ModelAndView delete(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int custId = (int) session.getAttribute("id");
		int orderId = Integer.parseInt(request.getParameter("id"));
		OrderDAO odao = new OrderDAO();
		int rw = odao.delete(orderId);

		List<Order> oList = odao.findByCustId(custId);
		ModelAndView model = new ModelAndView("OrderManagement/Order");
		model.addObject("oList", oList);
		model.addObject("successDelete", "You have successfully deleted!");
		return model;
	}

	@RequestMapping("/deletePlacedOrder")
	@ResponseBody()
	public ModelAndView deletePlacedOrder(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int custId = (int) session.getAttribute("id");
		int orderId = Integer.parseInt(request.getParameter("id"));
		OrderDAO odao = new OrderDAO();
		int rw = odao.delete(orderId);

		List<Order> oList = odao.findByCustId(custId);
		ModelAndView model = new ModelAndView("OrderManagement/cust_manageOrder");
		model.addObject("oList", oList);
		model.addObject("successDelete", "You have successfully deleted your order!");
		return model;
	}

	@RequestMapping("/rejectOrder")
	@ResponseBody()
	public ModelAndView rejectOrder(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int custId = (int) session.getAttribute("id");
		int orderId = Integer.parseInt(request.getParameter("id"));
		OrderDAO odao = new OrderDAO();
		int rw = odao.delete(orderId);

		List<Order> oList = odao.findByCustId(custId);
		ModelAndView model = new ModelAndView("OrderManagement/phar_manageOrder");
		model.addObject("oList", oList);
		model.addObject("successDelete", "The Order has been rejected!");
		return pharManageOrderPage(request);
	}

	@RequestMapping("/pharRejectOrder")
	@ResponseBody()
	public ModelAndView pharRejectOrder(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int custId = (int) session.getAttribute("id");
		int orderId = Integer.parseInt(request.getParameter("id"));
		OrderDAO odao = new OrderDAO();
		int rw = odao.delete(orderId);

		List<Order> oList = odao.findByCustId(custId);
		ModelAndView model = new ModelAndView("OrderManagement/EditOrderPending");
		model.addObject("oList", oList);
		model.addObject("successDelete", "The Order has been rejected!");
		return pharManageOrderPage(request);
	}

	@RequestMapping("/getByCustID")
	@ResponseBody()
	public ModelAndView getByCustID(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int custId = (int) session.getAttribute("id");
		OrderDAO odao = new OrderDAO();
		List<Order> oList = odao.findByCustId(custId);
		ModelAndView model = new ModelAndView("OrderManagement/Order");
		model.addObject("oList", oList);
		return model; // return jsp view
	}

	@RequestMapping("/updateStatusShipping")
	public ModelAndView updateStatusShipping(HttpServletRequest request) {
		Profile p = new Profile();
		ProfileDAO pdao = new ProfileDAO();
		Order i = new Order();
		OrderDAO Orderdao = new OrderDAO();
		int id = Integer.parseInt(request.getParameter("id"));
		List<Order> oList = Orderdao.findByCustId(id);
		for (Order o : oList) {
			String s = (String) o.getStatus();
			if (s.compareTo("Shipping") == 0) {
				o.setStatus("Delivered");
				int rw = Orderdao.updateStatus(o, o.getId());
				p.setNumOrder(p.getNumOrder() + 1);
				rw = pdao.updateNumOrder(p, id);
			}
		}
		ModelAndView model = new ModelAndView("OrderManagement/phar_manageOrder");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		model.addObject("successUpdate", "The order status has been updated to Delivered!");
		return model;
	}

	@RequestMapping("/updateStatusPreparing")
	public ModelAndView updateStatusPreparing(HttpServletRequest request) {
		Order i = new Order();
		OrderDAO Orderdao = new OrderDAO();

		int id = Integer.parseInt(request.getParameter("id"));
		System.out.print("customer id:" + id);
		List<Order> oList = Orderdao.findByCustId(id);
		for (Order o : oList) {
			String s = (String) o.getStatus();
			System.out.print("status: " + s);
			if (s.equals("Preparing")) {
				o.setStatus("Shipping");
				int rw = Orderdao.updateStatus(o, o.getId());
			}
		}
		ModelAndView model = new ModelAndView("OrderManagement/phar_manageOrder");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		model.addObject("successUpdate", "The order status has been updated to Delivered!");
		return pharManageOrderPage(request);
	}

}
