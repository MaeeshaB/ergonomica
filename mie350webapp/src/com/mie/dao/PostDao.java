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

public class PostDao {

	/**
	 * This class handles the Member objects and the login component of the web
	 * app.
	 */
	static Connection currentCon = null;
	static ResultSet rs = null;
	static Connection connection = null;


	public static Post like(int postid) {

		/**
		 * This method attempts to find the member that is trying to log in by
		 * first retrieving the username and password entered by the user.
		 */
		Statement stmt = null;

		/**
		 * Prepare a query that searches the members table in the database
		 * with the given username and password.
		 */
		String searchQuery = "select * from post where postid='"
				+ postid;
		
		Post post = getPostById(postid);

		try {
			// connect to DB
			currentCon = DbUtil.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();
			if (more) {
				int likes = rs.getInt("Likes");

				post.setPostLikes(likes+1);
			}
		}

		catch (Exception ex) {
			
		}
		
		//Update database

		return post;

	}
	
	public static Post getPostById(int postid) {
		Post post = new Post();
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from post where postid=?");
			preparedStatement.setInt(1, postid);
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				((Post) currentCon).setPostId(rs.getInt("postid"));
				//Add
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return post;
	}
}
