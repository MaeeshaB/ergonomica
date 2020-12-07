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

public class UserDao {

	/**
	 * This class handles the Member objects and the login component of the web
	 * app.
	 */
	
	static ResultSet rs = null;
	static Connection connection;

	public UserDao() {
		connection = DbUtil.getConnection();
	}
	
	//Get all the posts in the database
	public static List<User> getAllUsers() {
		List<User> users = new ArrayList<User>();
		
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("select * from user");
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				User user = new User();
				user.setUsername(rs.getString("user_id"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}
	
	public static void createAccount(User user) {
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO user(user_id,password,email) VALUES (?,?,?)");
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void deleteUser(String user) {

		// Parameters start with 1
		//preparedStatement.setString(1, user);
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete FROM user WHERE user_id='"+user+"'");
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void updatePassword(String username, String newPassword) {
		try {
			//Update this statement
			PreparedStatement preparedStatement = connection
					.prepareStatement("update user set password='"+newPassword//+ ", email='"+user.getEmail()
							+ "' where user_id='"+username+"'");
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static User login(User user) {

		/**
		 * This method attempts to find the user that is trying to log in by
		 * first retrieving the username and password entered by the user.
		 */
		Statement stmt = null;

		String username = user.getUsername();
		String password = user.getPassword();

		/**
		 * Prepare a query that searches the user table in the database
		 * with the given username and password.
		 * 
		 */
		String searchQuery = "select * from user where user_id='"
				+ username + "' AND password='" + password + "'";
		
		
		try {
			// connect to DB
			connection = DbUtil.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();

			/**
			 * If there are no results from the query, set the user to false.
			 * The person attempting to log in will be redirected to the home
			 * page when isValid is false.
			 */
			
			if (!more) {
				user.setValid(false);
			}
			else if (more) {
				user.setValid(true);
			}
		}

		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! "
					+ ex);
		}
		/**
		 * Return the User object.
		 */
		return user;

	}
}
