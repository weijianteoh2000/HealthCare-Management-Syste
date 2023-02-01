package com.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("supplier")
public class SupplierController {
	
	@RequestMapping("details")
	protected ModelAndView supplier() {
		ModelAndView model = new ModelAndView("StockManagement/Supplier");
		return model;
	}
}
