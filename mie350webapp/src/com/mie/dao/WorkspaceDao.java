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

public class WorkspaceDao {

	static Connection currentCon = null;
	static ResultSet rs = null;
	static Connection connection;

	public WorkspaceDao() {
		connection = DbUtil.getConnection();
	}
	
	
	public static void addProduct(String userid, int prodid) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into user_workspace(prod_id,user_id) values (?, ?)");
			preparedStatement.setInt(1, prodid);
			preparedStatement.setString(2, userid);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public static void deleteProduct(String userid, int prodid) {
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from user_workspace WHERE prod_id = "+prodid+" AND user_id='"+ userid +"'");

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static Workspace getAllSavedItems(String userid) {
		Workspace wsItems = new Workspace();
		//List<Product> products = new ArrayList<Product>();
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from product where prod_id IN (select prod_id from user_workspace where user_id='"+userid+"')");
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				Product product = new Product();
				product.setProductid(rs.getInt("prod_id"));
				product.setProductName(rs.getString("prod_name"));
				product.setProductDesc(rs.getString("prod_desc"));
				product.setProductPrice(rs.getInt("prod_price"));
				product.setProductImage(rs.getString("prod_image"));
				product.setProductLink(rs.getString("prod_link"));
				product.setProductPersona(rs.getString("prod_persona"));
				product.setProductCategory(rs.getString("prod_category"));
				wsItems.setProducts(product);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		wsItems.setUserid(userid);

		return wsItems;
	}

	
	public static List<Integer> getProdIdsByUserId(String userid) {
		List<Integer> prodids = new ArrayList<Integer>();
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from user_workspace where user_id='"+userid+"'");
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				prodids.add(rs.getInt("prod_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return prodids;
	}

}
