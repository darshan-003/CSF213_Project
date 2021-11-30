package com.example.demo;

public class Admin {

	private final String admin = "admin";
	private final String password = "admin";

	public boolean passwordmatch(String s) {
		if (s.equals(this.password)) {
			return true;
		} else {
			return false;
		}
	}

	public boolean adminNameMatch(String s) {
		if (s.equals(this.admin)) {
			return true;
		} else {
			return false;
		}
	}
}
