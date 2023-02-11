package com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="order")
public class Order {
	@Id
	@Column(name="id")
	int id;
	@Column(name="item")
	String item;
	@Column(name="quantity")
	int quantity;
	@Column(name="unitPrice")
	double unitPrice;
	@Column(name="status")
	String status;
	@Column(name="orderDate")
	Date orderDate;
	@Column(name="customerID")
	int customerID;
	
	
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", item=" + item + ", quantity=" + quantity + ", unitPrice=" + unitPrice
				+ ", status=" + status + ", orderDate=" + orderDate + "]";
	}
	
}
