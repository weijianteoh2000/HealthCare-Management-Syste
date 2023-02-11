package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("pages")
public class MainPages {
	
	@RequestMapping("home")
	protected ModelAndView home() {
		ModelAndView model = new ModelAndView("shareFiles/HomePage");
		return model;
	}
	@RequestMapping("order")
	protected ModelAndView order() {
		ModelAndView model = new ModelAndView("OrderManagement/Order");
		return model;
	}
	@RequestMapping("product")
	protected ModelAndView product() {
		ModelAndView model = new ModelAndView("OrderManagement/Product");
		return model;
	}
	@RequestMapping("stock")
	protected ModelAndView stock() {
		ModelAndView model = new ModelAndView("StockManagement/stock");
		return model;
	}
	@RequestMapping("medicalCheckUpApplicationList")
	protected ModelAndView medicalCheckUpApplicationList() {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/MedicalCheckUpApplicationList");
		return model;
	}
	@RequestMapping("prescription")
	protected ModelAndView prescription() {
		ModelAndView model = new ModelAndView("PrescriptionManagement/prescription");
		return model;
	}
	@RequestMapping("timetable")
	protected ModelAndView timetable() {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/timetable");
		return model;
	}
	@RequestMapping("reviewPatientHealthInfo")
	protected ModelAndView reviewPatientHealthInfo() {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/ReviewPatientHealthInfo");
		return model;
	}
	@RequestMapping("healthMedicalCheckUpList")
	protected ModelAndView healthMedicalCheckUpList() {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/HealthMedicalCheckUpList");
		return model;
	}
	@RequestMapping("customer")
	protected ModelAndView customer() {
		ModelAndView model = new ModelAndView("OrderManagement/Customer");
		return model;
	}
	@RequestMapping("medicalCheckUpPendingList")
	protected ModelAndView medicalCheckUpPendingList() {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/MedicalCheckUpPendingList");
		return model;
	}
	@RequestMapping("phar_manageOrder")
	protected ModelAndView phar_manageOrder() {
		ModelAndView model = new ModelAndView("OrderManagement/phar_manageOrder");
		return model;
	}
	@RequestMapping("cust_manageOrder")
	protected ModelAndView cust_manageOrder() {
		ModelAndView model = new ModelAndView("OrderManagement/cust_manageOrder");
		return model;
	}
	@RequestMapping("reportingDashboard")
	protected ModelAndView reportingDashboard() {
		ModelAndView model = new ModelAndView("shareFiles/ReportingDashboard");
		return model;
	}
}
