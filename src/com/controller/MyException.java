package com.controller;

public class MyException extends Exception {
	String str;
	 public MyException(String str)
	 {
		 this.str=str;
	  System.out.println(str);
	 }
}
