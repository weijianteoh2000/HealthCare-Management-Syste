package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="stock")
public class Stock {
	@Id
	@Column(name="id")
	int id;
	@Column(name="name")
String name;
	@Column(name="quantity")
String quantity;
	@Column(name="origin")
String origin;
	@Column(name="refNo")
String refNo;
	@Column(name="arrDate")
	String arrDate;
	@Column(name="expDate")
	String expDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getRefNo() {
		return refNo;
	}
	public void setRefNo(String refNo) {
		this.refNo = refNo;
	}
	public String getArrDate() {
		return arrDate;
	}
	public void setArrDate(String arrDate) {
		this.arrDate = arrDate;
	}
	public String getExpDate() {
		return expDate;
	}
	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}
	@Override
	public String toString() {
		return "Stock [id=" + id + ", name=" + name + ", quantity=" + quantity + ", origin=" + origin + ", refNo="
				+ refNo + ", arrDate=" + arrDate + ", expDate=" + expDate + "]";
	}


}