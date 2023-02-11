package com.controller;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.model.Goods;
import com.model.OrderStock;
import com.model.Supplier;

import dbutil.OrderStockDAO;
import dbutil.SupplierDAO;
@Controller
@RequestMapping("OrderStock")
public class OrderStockController {
	
	@RequestMapping("details")
	protected ModelAndView details(String value) {
		ModelAndView model = new ModelAndView("StockManagement/OrderStock");
		OrderStockDAO osd = new OrderStockDAO();
		List<OrderStock> osl = osd.getAll();
		List<OrderStock> posl = new ArrayList<OrderStock>();
		for(OrderStock a:osl) {
			if(!a.getStatus().equals("paid")) {
				posl.add(a);
			}
		}
		model.addObject("successAdd",value);
		model.addObject("sList",posl);
		return model;
	}
	//after press received button
	@RequestMapping("received")
	protected ModelAndView received(HttpServletRequest request) {
		OrderStockDAO osd = new OrderStockDAO();
		int id = Integer.parseInt(request.getParameter("orderID"));
		OrderStock os = osd.findById(id);
		ModelAndView model = new ModelAndView("StockManagement/OrderReceived");
		model.addObject("id",id);
		model.addObject("oDetails",os);
		return model;
	}
	//after press paid button
	//update the status of the orderstock to paid
	@RequestMapping("paid")
	protected ModelAndView paid(HttpServletRequest request) {
		OrderStock os = new OrderStock();
		os.setStatus("paid");
		os.setReceipt(request.getParameter("receipt"));
		os.setInvoice(request.getParameter("invoice"));
		int id = Integer.parseInt(request.getParameter("id"));
		OrderStockDAO osd = new OrderStockDAO();
				osd.updateDocument(os, id);
		return details("You have successfully updates the order receipt and invoice");
	}
	//after press history link
		@RequestMapping("history")
		protected ModelAndView history(HttpServletRequest request) {
			ModelAndView model = new ModelAndView("StockManagement/OrderHistory");
			OrderStockDAO osd = new OrderStockDAO();
			List<OrderStock> osl = osd.getAll();
			List<OrderStock> hosl = new ArrayList<OrderStock>();
			for(OrderStock a:osl) {
				if(a.getStatus().equals("paid")) {
					hosl.add(a);
				}
			}
			model.addObject("sList",hosl);
			return model;
		}
	@RequestMapping("trackingView")
	public RedirectView localRedirect(HttpServletRequest request) {
	    RedirectView redirectView = new RedirectView();
	    redirectView.setUrl("https://www.tracking.my/"+request.getParameter("courier")+"/"+request.getParameter("trackingNumber"));
	    return redirectView;
	}
	@RequestMapping("searchSupplier")
	protected ModelAndView searchSupplier() {
		SupplierDAO supplierDAO = new SupplierDAO();
		List<Supplier> supplier = supplierDAO.getAll();
		List<String>name = new ArrayList<String>();
		for(Supplier a:supplier) {
			name.add(a.getCompanyName());
		}
		ModelAndView model = new ModelAndView("StockManagement/SearchGoods");
		model.addObject("sList",name);
		return model;
	}
	
	@RequestMapping("addOrderStockForm")
	protected ModelAndView addOrderStockForm(HttpServletRequest request) {
		SupplierDAO supplierDAO = new SupplierDAO();
		//get the supplier name
		String supplierName = request.getParameter("supplierName");
		//get supplier name list
		List<Supplier> supplier = supplierDAO.getAll();
		List<String> names = new ArrayList<String>();
		for(Supplier a:supplier) {
			names.add(a.getCompanyName());
		}
		//get goods
		List<Goods>goods=supplierDAO.getGoods(supplierName);
		ModelAndView model = new ModelAndView("StockManagement/AddNewOrderStock");
		model.addObject("supplierNames",names);
		model.addObject("sList",goods);
		model.addObject("supplier",supplierName);
		return model;
	}
	@RequestMapping("updateOrderStockForm")
	protected ModelAndView updateOrderStockForm(HttpServletRequest request) {
		OrderStockDAO OrderStockdao = new OrderStockDAO();
		int id = Integer.parseInt(request.getParameter("updateindex"));
		OrderStock OrderStockDetails = OrderStockdao.findById(id);
		//get goods
		List<Goods>goods=OrderStockdao.getGoods(id);
		ModelAndView model = new ModelAndView("StockManagement/UpdateOrderStock");
		model.addObject("oDetails",OrderStockDetails);
		model.addObject("sList",goods);
		return model;
	}
	@RequestMapping("addOrderStock")
	protected ModelAndView addOrderStock(HttpServletRequest request) throws Exception{
		OrderStockDAO OrderStockdao = new OrderStockDAO();
		OrderStock i = new OrderStock(); 
		i.setSupplierName(request.getParameter("supplierName"));
		LocalDateTime myDateObj = LocalDateTime.now();
		i.setTime(myDateObj);
		String[] arrQuantity = request.getParameterValues("quantity");
		String[] arrID = request.getParameterValues("id");
		
		List<Goods>goodsList = new ArrayList<Goods>();
		for(int n=0;n<arrQuantity.length;n++) {
			Goods goods = new Goods();
			goods.setGoodsID(Integer.parseInt(arrID[n]));
			goods.setQuantity(Integer.parseInt(arrQuantity[n]));
			goods.setStatus("order");
			System.out.println(goods.getGoodsID());
			goodsList.add(goods);
		}
		i.setOrders(goodsList);
		i.setStatus("ordering");
		OrderStockdao.add(i);
		return details("New Order was successfully added !!!");
	}
	//can add throw exception where the ref no should be unique
	@RequestMapping("updateOrderStock")
	protected ModelAndView updateOrderStock(HttpServletRequest request) {
		OrderStockDAO OrderStockdao = new OrderStockDAO();
		OrderStock i = new OrderStock(); 
		LocalDateTime myDateObj = LocalDateTime.now();
		i.setTime(myDateObj);
		i.setCourier(request.getParameter("courier"));
		i.setTrackingNumber(request.getParameter("trackingNumber"));
		String[] arrName = request.getParameterValues("name");
		String[] arrQuantity = request.getParameterValues("quantity");
		String[] arrID = request.getParameterValues("id");
		List<Goods>goodsList = new ArrayList<Goods>();
		for(int n=0;n<arrQuantity.length;n++) {
			Goods goods = new Goods();
			goods.setGoodsID(Integer.parseInt(arrID[n]));
			goods.setQuantity(Integer.parseInt(arrQuantity[n]));
			goods.setStatus("order");
			System.out.println(goods.getGoodsID());
			goodsList.add(goods);
		}
		i.setOrders(goodsList);
		int rw = OrderStockdao.update(i,Integer.parseInt(request.getParameter("updateindex")));
		List<OrderStock> sList = OrderStockdao.getAll();
		return details("The order was successfully updated !!");
	}
	
	@RequestMapping("deleteOrderStock")
	@ResponseBody()
	public ModelAndView delete(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("delindex"));
		OrderStockDAO insdao = new OrderStockDAO();
		int rw = insdao.delete(id);
		return details("The order was deleted !!");
	}	
}
