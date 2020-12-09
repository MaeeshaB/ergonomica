package com.mie.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public class Workspace {
	/**
	 * This class contains all of the relevant information, and getter/setter
	 * methods for the Member object.
	 */
	private String user_id;
	private Vector<Product> products = new Vector<Product>();
	private Vector<Post> posts = new Vector<Post>();
	
	public String getUserid() {
		return user_id;
	}

	public void setUserid(String user_id) {
		this.user_id = user_id;
	}
	
	public Vector<Product> getProducts() {
		return products;
	}
	
	public Vector<Post> getPosts() {
		return posts;
	}
	
	public void setProducts(Product product) {
		this.products.add(product);
	}
	
	public void setPosts(Post post) {
		this.posts.add(post);
	}

	public String ProductSaved(int newprodid) {
		Iterator<Product> i = products.iterator();
		while (i.hasNext()) {
			Product curProd = i.next();
			if (curProd.getProductid() == newprodid) {
				return "&#x2665;";
			}
		}
		return "&#9825;";
	}
	
	public String addOrDelete(int newprodid) {
		Iterator<Product> i = products.iterator();
		while (i.hasNext()) {
			Product curProd = i.next();
			if (curProd.getProductid() == newprodid) {
				return "delete";
			}
		}
		return "save";
	}

	@Override
	public String toString() {
		return "user_workspace [ user_id=" + user_id +", products = "+products + "]";
	}
}