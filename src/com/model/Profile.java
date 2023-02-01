package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="profile")
public class Profile {
	@Id
	@Column(name="id")
	int id;
	@Column(name="name")
String name;
	@Column(name="username")
String username;
	@Column(name="email")
String email;
	@Column(name="password")
String password;
	
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
@Override
public String toString() {
	return "Profile [id=" + id + ", name=" + name + ", username=" + username + ", email=" + email + ", password="
			+ password + "]";
}

}