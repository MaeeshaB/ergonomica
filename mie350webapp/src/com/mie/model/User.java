package com.mie.model;

import java.util.Date;

public class User {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the user object.
	 */

	private String username;
	private String password;
	private String email;
	private boolean valid;



	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isValid() {
		return valid;
	}

	public void setValid(boolean newValid) {
		valid = newValid;
	}

	@Override
	public String toString() {
		return "User [username=" + username
				+ ", password=" + password + ", email=" + email + "]";
	}
}