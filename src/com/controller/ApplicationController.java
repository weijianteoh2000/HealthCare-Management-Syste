package com.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.*;

import dbutil.*;

@Controller
@RequestMapping("application")
public class ApplicationController {

	@RequestMapping("applicationForm")
	protected ModelAndView applicationForm() {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/MedicalCheckUpApplicationAdding");

		return model;
	}

	@RequestMapping("applicationDetail")
	protected ModelAndView applicationDetail(HttpServletRequest request) {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/MedicalCheckUpApplicationDetail");
		ApplicationDAO Applicationdao = new ApplicationDAO();
		ProfileDAO Profiledao = new ProfileDAO();
		HttpSession session = request.getSession(false);
		int applicationId = Integer.parseInt(request.getParameter("applicationId"));
		Application appl = Applicationdao.findById(applicationId);
		Profile prof = Profiledao.findById(appl.getPatientId());
		List<Profile> doctorList = Profiledao.findByUTC("Doctor");
		List<Integer> doctorIdList = new ArrayList<Integer>();
		for (Profile d : doctorList) {
			doctorIdList.add(d.getId());
		}

		model.addObject("appl", appl);
		if(appl.getAssignDoctor() != 0) {
			int temp = doctorIdList.indexOf(appl.getAssignDoctor());
			model.addObject("doctorName",doctorList.get(temp).getName());
		}
		model.addObject("prof", prof);
		model.addObject("doctorList", doctorList);
		model.addObject("doctorIdList", doctorIdList);

		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdfDate.format(appl.getApplicationDate());
		model.addObject("reqeustDate", date);
		if(appl.getAssignTime()!=null) {
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");
			String time = sdfTime.format(appl.getAssignTime());
			model.addObject("assignTime", time);
		}
		
		return model;
	}

	@RequestMapping("applicationResponse")
	protected ModelAndView appliactionResponse(HttpServletRequest request) throws ParseException {
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/MedicalCheckUpApplicationList");
		HttpSession session = request.getSession(false);
		ApplicationDAO adao = new ApplicationDAO();
		int applicationId = Integer.parseInt(request.getParameter("applicationId"));

		if (request.getParameter("submit").equals("Reject")) {
			model.addObject("responseMesg", "You have rejected the application");
			String rejectReason = request.getParameter("rejectReason");

			adao.updateReject(rejectReason, "rejected", applicationId);
		} else {
			model.addObject("responseMesg", "Application is accepted!!");
			SimpleDateFormat sdfDate = new SimpleDateFormat("HH:mm");
			Date assignTime = sdfDate.parse(request.getParameter("assignTime"));
			System.out.print(assignTime);
			int doctorId = Integer.parseInt(request.getParameter("assignDoctor"));
			int row = adao.updateApprove(assignTime, doctorId, "approved", applicationId);
		}

		List<Application> aList = adao.findByStatus("pending");
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

	@RequestMapping(value = "addApplication", method = RequestMethod.POST)
	protected ModelAndView addApplication(HttpServletRequest request) throws Exception {
		ApplicationDAO Applicationdao = new ApplicationDAO();
		HttpSession session = request.getSession(false);
		int id = (int) session.getAttribute("id");
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm");
		ModelAndView model = new ModelAndView("MedicalCheckUpBooking/MedicalCheckUpApplicationList");
		Date date = new Date();
		int row = 0;

		if (!(request.getParameter("cancel") != null)) {

			try {
				if (request.getParameter("date1") != null && request.getParameter("time1") != null) {
					Date date1 = sdfDate.parse(request.getParameter("date1"));
					String time1 = request.getParameter("time1");
					if (date1.compareTo(date) <= 0)
						throw new PreviousDateException("previousDate1");
					Application appl1 = new Application();
					appl1.setApplicationDate(date1);
					appl1.setTimeRange(time1);
					appl1.setStatus("pending");
					appl1.setPatientId((int) session.getAttribute("id"));
					row += Applicationdao.add(appl1);
				}
				if (request.getParameter("date2") != null && request.getParameter("time2") != null) {
					Date date2 = sdfDate.parse(request.getParameter("date2"));
					String time2 = request.getParameter("time2");
					if (date2.compareTo(date) <= 0)
						throw new PreviousDateException("previousDate2");
					Application appl2 = new Application();
					appl2.setApplicationDate(date2);
					appl2.setTimeRange(time2);
					appl2.setStatus("pending");
					appl2.setPatientId((int) session.getAttribute("id"));
					row += Applicationdao.add(appl2);
				}
				if (request.getParameter("date3") != null && request.getParameter("time3") != null) {
					Date date3 = sdfDate.parse(request.getParameter("date3"));
					String time3 = request.getParameter("time3");
					if (date3.compareTo(date) <= 0)
						throw new PreviousDateException("previousDate3");
					Application appl3 = new Application();
					appl3.setApplicationDate(date3);
					appl3.setTimeRange(time3);
					appl3.setStatus("pending");
					appl3.setPatientId((int) session.getAttribute("id"));
					row += Applicationdao.add(appl3);
				}
				model.addObject("successAdd", "New Application was successfully added !!");
			} catch (PreviousDateException e) {
				ModelAndView modelerr = new ModelAndView("MedicalCheckUpBooking/MedicalCheckUpApplicationAdding");
				System.out.println(e.toString());
				String error = e.str;
				if(error.equals("previousDate1"))
					modelerr.addObject("previousDate1", "1");
				else if(error.equals("previousDate2"))
					modelerr.addObject("previousDate2", "2");
				else if(error.equals("previousDate3"))
					modelerr.addObject("previousDate3", "3");
				return modelerr;
			}
		}
		List<Application> aList = Applicationdao.getAllById(id);;
		
		sdfDate = new SimpleDateFormat("yyyy-MM-dd");

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

}
