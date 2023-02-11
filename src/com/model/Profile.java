package com.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "profile")
public class Profile {
	@Id
	@Column(name = "id")
	int id;
	@Column(name = "name")
	String name;
	@Column(name = "gender")
	String gender;
	@Column(name = "age")
	int age;
	@Column(name = "phone")
	String phone;
	@Column(name = "occupation")
	String occupation;
	@Column(name = "ic")
	String ic;
	@Column(name = "address")
	String address;
	@Column(name = "username")
	String username;
	@Column(name = "email")
	String email;
	@Column(name = "password")
	String password;
	@Column(name = "userType")
	String userType;
	@Column(name = "numOrder")
	int numOrder;
	@Column(name = "lastOrderDate")
	Date lastOrderDate;
	@Column(name = "registeredDate")
	Date registeredDate;
	
	public Profile() {}
	
	public Profile(int id, String name, String gender, int age,String phone, String ic, String email) {
		this.id = id;
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.phone = phone;
		this.ic = ic;
		this.email = email;
	}
	
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
	
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIc() {
		return ic;
	}

	public void setIc(String ic) {
		this.ic = ic;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getOccupation() {
		return occupation;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public String getAddress() {
		return address;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}

	public int getNumOrder() {
		return numOrder;
	}

	public void setNumOrder(int numOrder) {
		this.numOrder = numOrder;
	}

	public Date getLastOrderDate() {
		return lastOrderDate;
	}

	public void setLastOrderDate(Date lastOrderDate) {
		this.lastOrderDate = lastOrderDate;
	}

	public Date getRegisteredDate() {
		return registeredDate;
	}

	public void setRegisteredDate(Date registeredDate) {
		this.registeredDate = registeredDate;
	}

	@Override
	public String toString() {
		return "Profile [id=" + id + ", name=" + name + ", username=" + username + ", email=" + email + ", password="
				+ password + "]";
	}

}