package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="goods")
public class Goods {
	int goodsID;//primary key
	@Column(name = "supplierID")
	int supplierID;//same as supplier id
	@Column(name="name")
	String name;
	@Column(name="quantity")
	int quantity;
	@Column(name="status")
	String status;//unorder,order,paid 
	String description;
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	/*
	 * Goods is in unorder state if only add to the supplier
	 * Goods is in order state after add into an order
	 * Goods is in paid state after received & paid
	 * */
	@Column(name="orderID")
	int orderID;//same id as the orderstock
	
	public int getSupplierID() {
		return supplierID;
	}
	public void setSupplierID(int supplierID) {
		this.supplierID = supplierID;
	}
	public int getGoodsID() {
		return goodsID;
	}
	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getOrderID() {
		return orderID;
	}
	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}
	@Override
	public String toString() {
		return "Goods [goodID=" + goodsID + ", name=" + name + ", quantity=" + quantity + ", status=" + status
				+ ", orderID=" + orderID + "]";
	}
	
	
}
