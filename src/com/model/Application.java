package com.model;

import java.time.LocalTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Id;

public class Application {
	@Id
	@Column(name = "applicationId")
	int applicationId;
	@Column(name = "applicationDate")
	Date applicationDate;
	@Column(name = "timeRange")
	String timeRange;
	@Column(name = "assignTime")
	Date assignTime;
	@Column(name = "assignDoctor")
	int assignDoctor;
	@Column(name = "rejectReason")
	String rejectReason;
	@Column(name = "status")
	String status;
	@Column(name = "patientId")
	int patientId;
	
	public int getApplicationId() {
		return applicationId;
	}
	public void setApplicationId(int applicationId) {
		this.applicationId = applicationId;
	}
	public Date getApplicationDate() {
		return applicationDate;
	}
	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
	}
	public String getTimeRange() {
		return timeRange;
	}
	public void setTimeRange(String timeRange) {
		this.timeRange = timeRange;
	}
	public Date getAssignTime() {
		return assignTime;
	}
	public void setAssignTime(Date assignTime) {
		this.assignTime = assignTime;
	}
	public int getAssignDoctor() {
		return assignDoctor;
	}
	public void setAssignDoctor(int assignDoctor) {
		this.assignDoctor = assignDoctor;
	}
	public String getRejectReason() {
		return rejectReason;
	}
	public void setRejectReason(String rejectReason) {
		this.rejectReason = rejectReason;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
}
