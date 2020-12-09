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
	
	
	//Add a product to the user's workspace
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
	
	//Delete a product from the user's workspace
	public static void deleteProduct(String userid, int prodid) {
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from user_workspace WHERE prod_id = "+prodid+" AND user_id='"+ userid +"'");

			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//Getting all items + posts in a user's workspace
	public static Workspace getAllSavedItems(String userid) {
		Workspace wsItems = new Workspace();
		// PRODUCTS ONLY
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
		// POSTS ONLY
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from post where post_id IN (select post_id from post_reaction where user_id='"+userid+"')");
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				Post post = new Post();
				post.setPostId(rs.getString("post_id"));
				post.setPostName(rs.getString("post_name"));
				post.setPostDesc(rs.getString("post_desc"));
				post.setPostPhoto(rs.getString("post_photo"));
				post.setPostLink(rs.getString("post_link"));
				post.setPostLikes(rs.getInt("post_likes"));
				wsItems.setPosts(post);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		wsItems.setUserid(userid);

		return wsItems;
	}
	
	//Getting all the product ids in a user's workspace by the product id
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
