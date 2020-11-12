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
	
	//add other methods for different filtering
	
	public List<Product> getProductByCategory(String category) {
		//fix this
		List<Product> products = new ArrayList<Product>();
		
		try {
			//Change this statement
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Product where prod_category = 'desk'");

			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
				Product product = new Product();
				product.setProductid(rs.getInt("prod_id"));
				product.setProductName(rs.getString("prod_name"));
				product.setProductDesc(rs.getString("prod_desc"));
				product.setProductPrice(rs.getInt("prod_price"));
				product.setProductCategory(rs.getString("prod_category"));
				product.setProductImage(rs.getString("prod_image"));
				product.setProductLink(rs.getString("prod_link"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}
	
	public List<Product> getProductByPrice(String price) {
		List<Product> products = new ArrayList<Product>();
		//Get product by price filter
		return products;
	}

	public List<Product> getProductFromSuggestedProducts() {
		List<Product> products = new ArrayList<Product>();
		//Get product from the suggested products form
		return products;
	}

	public List<Product> getProductByKeyword(String keyword) {
		List<Product> products = new ArrayList<Product>();
		
		try {
			//Change this statement
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from Product where prod_name LIKE ? OR prod_desc LIKE ? OR prod_category LIKE ?");

			preparedStatement.setString(1, "%" + keyword + "%");
			preparedStatement.setString(2, "%" + keyword + "%");
			preparedStatement.setString(3, "%" + keyword + "%");
			ResultSet rs = preparedStatement.executeQuery();
			//System.out.println(rs.getInt("prod_id"));
			while (rs.next()) {
				Product product = new Product();
				product.setProductid(rs.getInt("prod_id"));
				product.setProductName(rs.getString("prod_name"));
				product.setProductDesc(rs.getString("prod_desc"));
				product.setProductPrice(rs.getInt("prod_price"));
				product.setProductCategory(rs.getString("prod_category"));
				product.setProductImage(rs.getString("prod_image"));
				product.setProductLink(rs.getString("prod_link"));
				products.add(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return products;
	}
}
