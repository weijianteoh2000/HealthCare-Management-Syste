package com.model;

public class PreviousDateException extends Exception {
	public String str;

	public PreviousDateException(String str) {
		this.str = str;
		System.out.println(str);
	}

	@Override
	public String toString() {
		return "PreviousDateException [str=" + str + "]";
	}
	
	
}
