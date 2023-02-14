package com.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;

import java.util.Date;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.Application;
import com.model.Profile;

import dbutil.ApplicationDAO;
import dbutil.ProfileDAO;

@Controller
@RequestMapping("pages")
public class MainPages {

	@RequestMapping("home")
	protected ModelAndView home(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("shareFiles/HomePage");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}

		return model;
	}

	@RequestMapping("order")
	protected ModelAndView order(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("OrderManagement/Order");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}

		return model;
	}

	@RequestMapping("product")
	protected ModelAndView product(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("OrderManagement/Product");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}

		return model;
	}

	@RequestMapping("stock")
	protected ModelAndView stock(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("StockManagement/stock");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}

		return model;
	}

	@RequestMapping("medicalCheckUpApplicationList")
	protected ModelAndView medicalCheckUpApplicationList(HttpServletRequest request) throws ParseException {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/MedicalCheckUpApplicationList");

		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int id = (int) session.getAttribute("id");
		ApplicationDAO adao = new ApplicationDAO();
		List<Application> aList = adao.getAllById(id);
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");
		List<String> dateList = new ArrayList<String>();
		List<String> timeList = new ArrayList<String>();
		for (Application a : aList) {
			dateList.add(sdfDate.format(a.getApplicationDate()));
			if (a.getAssignTime() != null)
				timeList.add(sdfTime.format(a.getAssignTime()));
			else
				timeList.add("");
		}

		model.addObject("aList", aList);
		model.addObject("dateList", dateList);
		model.addObject("timeList", timeList);

		return model;
	}

	@RequestMapping("prescription")
	protected ModelAndView prescription(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("PrescriptionManagement/prescription");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}

		return model;
	}

	@RequestMapping("timetable")
	protected ModelAndView timetable(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/timetable");
		ApplicationDAO adao = new ApplicationDAO();
		ProfileDAO pdao = new ProfileDAO();
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int id = (int) session.getAttribute("id");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		LocalDate ld = LocalDate.now();
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(Date.from(ld.atStartOfDay(ZoneId.systemDefault()).toInstant()));

		SimpleDateFormat sdfWeek = new SimpleDateFormat("EEE");
		Date weekDate = Date.from(ld.atStartOfDay(ZoneId.systemDefault()).toInstant());
		String weekDateStr = sdfWeek.format(weekDate);
		int cday = 0;
		if (weekDateStr.equals("Sun")) {
			cday = 1;
		} else if (weekDateStr.equals("Mon")) {
			cday = 2;
		} else if (weekDateStr.equals("Tue")) {
			cday = 3;
		} else if (weekDateStr.equals("Wed")) {
			cday = 4;
		} else if (weekDateStr.equals("Thu")) {
			cday = 5;
		} else if (weekDateStr.equals("Fri")) {
			cday = 6;
		} else if (weekDateStr.equals("Sat")) {
			cday = 7;
		}

		DateTimeFormatter dtf = DateTimeFormatter.ISO_DATE;
		LocalDate sld = ld.plusDays(-cday + 1);
		String startDate = sld.format(dtf);
		LocalDate eld = ld.plusDays(7 - cday);
		String endDate = eld.format(dtf);

		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");
		List<Application> aList = adao.getSchedule(id, startDate, endDate);
		LocalDate tempDate = sld;
		String[][] patient = new String[7][8];
		String[] times = { "09:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00" };
		String tempDay = "";
		String applDay = "";
		Profile tempProf = new Profile();
		int counter = 0;
		int patientID = 0;
		if (aList.size() != 0) {
			for (int i = 0; i < 7; i++) {
				LocalDate tempDate1 = tempDate.plusDays(i);
				tempDay = tempDate1.format(dtf);
				applDay = sdf.format(aList.get(counter).getApplicationDate());
				if (applDay.equals(tempDay)) {
					for (int j = 0; j < 8; j++) {
						if (times[j].equals(sdfTime.format(aList.get(counter).getAssignTime()))) {
							patientID = aList.get(counter).getPatientId();
							tempProf = pdao.findById(patientID);
							patient[i][j] = tempProf.getName();
							counter++;
							if (counter == aList.size())
								break;
							if (!tempDay.equals(sdf.format(aList.get(counter).getApplicationDate())))
								break;
						} else {
							patient[i][j] = "";
						}
					}

				}
				if (counter == aList.size())
					break;
			}
		}

		String[] days = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
		model.addObject("days", days);
		model.addObject("times", times);
		model.addObject("patient", patient);

//		for (int i = 0; i < 7; i++)
//			for (int j = 0; j < 8; j++)

		return model;
	}

	@RequestMapping("reviewPatientHealthInfo")
	protected ModelAndView reviewPatientHealthInfo(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/ReviewPatientHealthInfo");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}

	@RequestMapping("healthMedicalCheckUpList")
	protected ModelAndView healthMedicalCheckUpList(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/HealthMedicalCheckUpList");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}

	@RequestMapping("customer")
	protected ModelAndView customer(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("OrderManagement/Customer");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}

	@RequestMapping("medicalCheckUpPendingList")
	protected ModelAndView medicalCheckUpPendingList(HttpServletRequest request) {
		ApplicationDAO Applicationdao = new ApplicationDAO();
		List<Application> aList = Applicationdao.findByStatus("pending");
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/MedicalCheckUpPendingList");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
		List<String> dateList = new ArrayList<String>();
		for (Application a : aList) {
			dateList.add(sdfDate.format(a.getApplicationDate()));
		}
		model.addObject("aList", aList);
		model.addObject("dateList", dateList);
		return model;
	}

	@RequestMapping("phar_manageOrder")
	protected ModelAndView phar_manageOrder(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("OrderManagement/phar_manageOrder");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}

	@RequestMapping("cust_manageOrder")
	protected ModelAndView cust_manageOrder(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("OrderManagement/cust_manageOrder");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}

	@RequestMapping("reportingDashboard")
	protected ModelAndView reportingDashboard(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("shareFiles/ReportingDashboard");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}

	@RequestMapping("custOrderHistory")
	protected ModelAndView custOrderHistory(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("OrderManagement/CustomerOrderHistory");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}

	@RequestMapping("userProfile")
	protected ModelAndView userProfile(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		int id = (int) session.getAttribute("id");
		ProfileDAO idao = new ProfileDAO();
		Profile prof = null;

		ModelAndView model = new ModelAndView("shareFiles/profile");
		prof = idao.findById(id);
		model.addObject("prof", prof);
		model.addObject("userType", prof.getUserType());
		return model;
	}

	@RequestMapping("addStuff")
	protected ModelAndView addStuff(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("Login_Register/AddStuff");
		HttpSession session = request.getSession(false);

		if (session.getAttribute("id") == null) {
			ModelAndView login = new ModelAndView("Login_Register/Login");
			session.setAttribute("sessionCheck", "invalid");
			return login;
		}
		return model;
	}
}
