package com.mie.model;

import java.util.Date;

public class Product {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Member object.
	 */
	private int prod_id;
	private String prod_name;
	private String prod_desc;
	private int prod_price;
	private String prod_category;
	private String prod_image;
	private String prod_link;

	public int getProductid() {
		return prod_id;
	}

	public void setProductid(int getProductid) {
		this.prod_id = getProductid;
	}

	public String getProductName() {
		return prod_name;
	}

	public void setProductName(String name) {
		this.prod_name = name;
	}

	public String getProductDesc() {
		return prod_desc;
	}

	public void setProductDesc(String prod_desc) {
		this.prod_desc = prod_desc;
	}
	
	public int getProductPrice() {
		return prod_price;
	}

	public void setProductPrice(int prod_price) {
		this.prod_price = prod_price;
	}
	
	public String getProductCategory() {
		return prod_category;
	}

	public void setProductCategory(String prod_category) {
		this.prod_category = prod_category;
	}
	
	public String getProductImage() {
		return prod_image;
	}

	public void setProductImage(String prod_image) {
		this.prod_image = prod_image;
	}
	
	public String getProductLink() {
		return prod_link;
	}

	public void setProductLink(String prod_link) {
		this.prod_link = prod_link;
	}


	@Override
	public String toString() {
		return "product [prod_id=" + prod_id + ", prod_name=" + prod_name
				+ ", prod_desc=" + prod_desc + ", prod_price=" + prod_price 
				+", prod_category=" + prod_category + ", prod_image=" + prod_image 
				+ ", prod_link=" + prod_link +"]";
	}
}