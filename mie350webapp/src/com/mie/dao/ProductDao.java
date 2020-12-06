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
	//Getting a list of products based on the user's quiz answers
	public List<Product> getProductFromSuggestedProducts(List<String> persona, List<String> category, 
			List<String> importance, List<String> type) {
		List<Product> products = new ArrayList<Product>();
		
		//If the user did not answer the importance question, do not include it in the select query
		String prod_importance = "";
		if (importance.isEmpty()==false) {
			prod_importance = " AND E.prod_importance IN " + listToString(importance);
		}
		
		String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
				+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id)"
				+" WHERE P.prod_persona IN "+ listToString(persona) +" AND P.prod_category IN "
				+ listToString(category)+prod_importance
				+ " AND (I.prod_type IN "+listToString(type)+" OR E.prod_type IN "+listToString(type)+")";

		products = getProductsFromDB(str);
		return products;
	}
	//Converting a list of strings to a string that can be used by the sql select query
	public String listToString(List<String> personas) {
		String str = "( '" + personas.get(0);
		for (int i=1; i < personas.size(); i++) {
			str += "' , '" + personas.get(i);
		}
		str +="')";
		return str;
	}
	//Getting products from the database in a specific order
	public List<Product> getSortedProducts(List<Integer> prodids, String sortby, String attribute) {
		List<Product> products = new ArrayList<Product>();
		
		String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
				+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id) WHERE prod_id IN "
						+ prodIdsToString(prodids) + " ORDER BY " + attribute + " " + sortby;
		
		products = getProductsFromDB(str);
		

		return products;
	}
	
	//Converting a list of product ids to a string that can be used by the sql select query
	public String prodIdsToString(List<Integer> prodids) {
		String str = "(" + prodids.get(0);
		for (int i=1; i < prodids.size(); i++) {
			str += ", " + prodids.get(i);
		}
		str +=")";
		return str;
	}

	//Getting a product from its id
	public Product getProductById(int prodid) {
		
		List<Product> products = new ArrayList<Product>();
		String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
				+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id)"
				+" WHERE P.prod_id = "+prodid;
		
		products = getProductsFromDB(str);

		return products.get(0);	
	}
	
	//Getting a list of product of a certian type
	public List<Product> getProductByType(String type) {
		List<Product> products = new ArrayList<Product>();
		
		String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
				+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id)"
				+" WHERE I.prod_type = '"+type+"' OR E.prod_type = '"+type+"'";
		
		products = getProductsFromDB(str);

		return products;
	}


	//Getting a list of products from a keyword - used for the search feature
	public List<Product> getProductByKeyword(String keyword) {
		List<Product> products = new ArrayList<Product>();
		
		//Products are retireved if the keywork is similar to the product name, description, type, brand, supplier, or persona
		String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
				+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id)"
				+ " where P.prod_name LIKE '"+keyword+"' OR P.prod_desc LIKE '"+keyword
				+"' OR I.prod_type LIKE '"+keyword+"' OR E.prod_type LIKE '"+keyword+"'"
				+" OR I.prod_brand LIKE '"+keyword+"' OR E.prod_supplier LIKE '"+keyword+"'"
				+ " OR P.prod_persona LIKE '"+ keyword+"'";
		
		products = getProductsFromDB(str);

		return products;
	}
	
	public List<Product> getAllProducts() {
		List<Product> products = new ArrayList<Product>();
		
		String str = "SELECT * FROM Product P LEFT JOIN product_ivity I ON (P.prod_id = I.prod_id)"
				+" LEFT JOIN product_ergonomic E ON (P.prod_id = E.prod_id)";
		
		products = getProductsFromDB(str);

		return products;
	}
	
	public List<Integer> getProductIdList(List<Product> products) {
		List<Integer> prodids = new ArrayList<Integer> ();
		for (int i=0; i < products.size(); i++) {
			prodids.add(products.get(i).getProductid());
		}
		return prodids;
	}
	
	//Running sql query to get products form the database
	public List<Product> getProductsFromDB(String str) {
		List<Product> products = new ArrayList<Product>();
		
		try {
			Statement statement = connection.createStatement();
			ResultSet rs = statement.executeQuery(str);
			while (rs.next()) {
				Product product = new Product();
				product.setProductid(rs.getInt("prod_id"));
				product.setProductName(rs.getString("prod_name"));
				product.setProductDesc(rs.getString("prod_desc"));
				product.setProductType(rs.getString("prod_type"));
				product.setProductPrice(rs.getDouble("prod_price"));
				product.setProductImportance(rs.getString("prod_importance"));
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
}
