package com.model;

import java.time.LocalDateTime;
import java.util.List;


public class OrderStock {

	int id; 

	String supplierName;

	List<Goods> orders;

	LocalDateTime time;

	String courier;

	String trackingNumber;

	String status;

	String receipt;

	String invoice;
	
	public String getReceipt() {
		return receipt;
	}
	public void setReceipt(String receipt) {
		this.receipt = receipt;
	}
	public String getInvoice() {
		return invoice;
	}
	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCourier() {
		return courier;
	}
	public void setCourier(String courier) {
		this.courier = courier;
	}
	public String getTrackingNumber() {
		return trackingNumber;
	}
	public void setTrackingNumber(String trackingNumber) {
		this.trackingNumber = trackingNumber;
	}
	public LocalDateTime getTime() {
		return time;
	}
	public void setTime(LocalDateTime time) {
		this.time = time;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public List<Goods> getOrders() {
		return orders;
	}
	public void setOrders(List<Goods> orders) {
		this.orders = orders;
	}
	@Override
	public String toString() {
		return "OrderStock [id=" + id + ", supplier=" + supplierName + ", orders=" + orders + "]";
	}
	
}
