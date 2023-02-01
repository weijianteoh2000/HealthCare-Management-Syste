package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("transaction")
public class TransactionController {
	@RequestMapping("details")
	protected ModelAndView transition() {
		ModelAndView model = new ModelAndView("StockManagement/Transition");
		return model;
	}
}
