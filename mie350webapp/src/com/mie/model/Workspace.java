package com.mie.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;

public class Workspace {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Member object.
	 */
	//private int prod_id;
	private String user_id;
	private Vector<Product> products = new Vector<Product>();

	/*public int getProductid() {
		return prod_id;
	}

	public void setProductid(int prodid) {
		this.prod_id = prodid;
	}*/
	

	public String getUserid() {
		return user_id;
	}

	public void setUserid(String user_id) {
		this.user_id = user_id;
	}
	
	public Vector<Product> getProducts() {
		return products;
	}
	
	public void setProducts(Product product) {
		this.products.add(product);
	}

	/*public void setAllProducts(List<Product> products) {
		this.products = new ArrayList<Product> (products);
		//this.products = products;
	}*/

	@Override
	public String toString() {
		return "user_workspace [ user_id=" + user_id +", products = "+products + "]";
	}
}