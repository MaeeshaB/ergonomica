package com.mie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mie.util.DbUtil;
import com.mie.model.*;
import com.mie.controller.*;
import com.mie.util.*;

public class ProductDao {

	private Connection connection;

	public ProductDao() {
		connection = DbUtil.getConnection();
	}
	
	public List<Product> getProductFromSuggestedProducts() {
		List<Product> products = new ArrayList<Product>();
		//Get product from the suggested products form
		return products;
	}
	
	public List<Product> getSortedProducts(List<Integer> prodids, String sortby, String attribute) {
		List<Product> products = new ArrayList<Product>();
		
		try {
			String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
					+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id) WHERE prod_id IN "
							+ prodIdsToString(prodids) + " ORDER BY " + attribute + " " + sortby;
			
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(str);
			while (rs.next()) {
				Product product = new Product();
				product.setProductid(rs.getInt("prod_id"));
				product.setProductName(rs.getString("prod_name"));
				product.setProductDesc(rs.getString("prod_desc"));
				product.setProductType(rs.getString("prod_type"));
				product.setProductPrice(rs.getInt("prod_price"));
				product.setProductCategory(rs.getString("prod_category"));
				product.setProductImage(rs.getString("prod_image"));
				product.setProductLink(rs.getString("prod_link"));
				product.setProductLink(rs.getString("prod_persona"));
				product.setProductBrand(rs.getString("prod_brand"));
				product.setProductSupplier(rs.getString("prod_supplier"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}
	
	public String prodIdsToString(List<Integer> prodids) {
		String str = "(" + prodids.get(0);
		for (int i=1; i < prodids.size(); i++) {
			str += ", " + prodids.get(i);
		}
		str +=")";
		return str;
	}

	public Product getProductById(int prodid) {
		
		Product product = new Product();
		
		try {
			String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
					+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id)"
					+" WHERE P.prod_id = "+prodid;
			
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(str);
			while (rs.next()) {
				product.setProductid(rs.getInt("prod_id"));
				product.setProductName(rs.getString("prod_name"));
				product.setProductDesc(rs.getString("prod_desc"));
				product.setProductPrice(rs.getInt("prod_price"));
				product.setProductCategory(rs.getString("prod_category"));
				product.setProductImage(rs.getString("prod_image"));
				product.setProductLink(rs.getString("prod_link"));
				product.setProductPersona(rs.getString("prod_persona"));
				product.setProductBrand(rs.getString("prod_brand"));
				product.setProductSupplier(rs.getString("prod_supplier"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return product;
		
	}
	
	
	public List<Product> getProductByType(String type) {
		List<Product> products = new ArrayList<Product>();
		
		try {
			String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
					+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id)"
					+" WHERE I.prod_type = '"+type+"' OR E.prod_type = '"+type+"'";
			
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(str);
			
			while (rs.next()) {
				Product product = new Product();
				product.setProductid(rs.getInt("prod_id"));
				product.setProductName(rs.getString("prod_name"));
				product.setProductDesc(rs.getString("prod_desc"));
				product.setProductType(rs.getString("prod_type"));
				product.setProductPrice(rs.getInt("prod_price"));
				product.setProductCategory(rs.getString("prod_category"));
				product.setProductImage(rs.getString("prod_image"));
				product.setProductLink(rs.getString("prod_link"));
				product.setProductPersona(rs.getString("prod_persona"));
				product.setProductBrand(rs.getString("prod_brand"));
				product.setProductSupplier(rs.getString("prod_supplier"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}


	public List<Product> getProductByKeyword(String keyword) {
		List<Product> products = new ArrayList<Product>();
		
		
		try {
			String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
					+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id)"
					+ " where P.prod_name LIKE '"+keyword+"' OR P.prod_desc LIKE '"+keyword
					+"' OR I.prod_type LIKE '"+keyword+"' OR E.prod_type LIKE '"+keyword+"'"
					+" OR I.prod_brand LIKE '"+keyword+"' OR E.prod_supplier LIKE '"+keyword+"'";
			
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(str);
			while (rs.next()) {
				Product product = new Product();
				product.setProductid(rs.getInt("prod_id"));
				product.setProductName(rs.getString("prod_name"));
				product.setProductDesc(rs.getString("prod_desc"));
				product.setProductType(rs.getString("prod_type"));
				product.setProductPrice(rs.getInt("prod_price"));
				product.setProductCategory(rs.getString("prod_category"));
				product.setProductImage(rs.getString("prod_image"));
				product.setProductLink(rs.getString("prod_link"));
				product.setProductPersona(rs.getString("prod_persona"));
				product.setProductBrand(rs.getString("prod_brand"));
				product.setProductSupplier(rs.getString("prod_supplier"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}
	
	public List<Integer> getProductIdList(List<Product> products) {
		List<Integer> prodids = new ArrayList<Integer> ();
		for (int i=0; i < products.size(); i++) {
			prodids.add(products.get(i).getProductid());
		}
		return prodids;
	}
}
