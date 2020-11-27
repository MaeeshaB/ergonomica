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
	private String prod_type;
	private String prod_category;
	private String prod_image;
	private String prod_link;
	private String prod_brand;
	private String prod_supplier;
	private String prod_persona;

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
	
	public String getProductBrand() {
		return prod_brand;
	}

	public void setProductBrand(String prod_brand) {
		this.prod_brand = prod_brand;
	}
	
	public String getProductSupplier() {
		return prod_supplier;
	}

	public void setProductSupplier(String prod_supplier) {
		this.prod_supplier = prod_supplier;
	}
	
	public String getProductType() {
		return prod_type;
	}

	public void setProductType(String prod_type) {
		this.prod_type = prod_type;
	}
	
	public String getProductPersona() {
		return prod_type;
	}

	public void setProductPersona(String prod_persona) {
		this.prod_persona = prod_persona;
	}


	@Override
	public String toString() {
		return "product [prod_id=" + prod_id + ", prod_name=" + prod_name
				+ ", prod_desc=" + prod_desc + "prod_type="+ prod_type + ", prod_price=" + prod_price 
				+", prod_category=" + prod_category + ", prod_image=" + prod_image 
				+ ", prod_link=" + prod_link + ", prod_brand=" + prod_brand 
				+", prod_supplier=" + prod_supplier + ", prod_persona = " + prod_persona + "]";
	}
}