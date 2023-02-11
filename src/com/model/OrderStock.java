package com.model;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orderStock")
public class OrderStock {
	@Id
	@Column(name="id")
	int id; 
	@Column(name="supplierName")
	String supplierName;
	@Column(name="orders")
	List<Goods> orders;
	@Column(name="time")
	LocalDateTime time;
	@Column(name="courier")
	String courier;
	@Column(name="trackingNumber")
	String trackingNumber;
	@Column(name="status")
	String status;
	@Column(name="receipt")
	String receipt;
	@Column(name="invoice")
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
