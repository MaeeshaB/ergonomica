package com.mie.model;

import java.util.Date;

public class Workspace {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Member object.
	 */
	private int prod_id;
	private int user_id;

	public int getProductid() {
		return prod_id;
	}

	public void setProductid(int getProductid) {
		this.prod_id = getProductid;
	}

	public int getUserid() {
		return prod_id;
	}

	public void setUserid(int prod_id) {
		this.prod_id = prod_id;
	}


	@Override
	public String toString() {
		return "user_workspace [prod_id=" + prod_id + ", user_id=" + user_id +"]";
	}
}