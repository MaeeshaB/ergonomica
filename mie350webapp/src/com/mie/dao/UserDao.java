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

	static Connection currentCon = null;
	static ResultSet rs = null;
	static Connection connection;

	public UserDao() {
		connection = DbUtil.getConnection();
	}
	
	
	public static User createAccount(User user) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into user(firstname,lastname,username,password,email) values (?, ?, ?, ?, ? )");
			// Parameters start with 1
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setString(3, user.getUsername());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	//if we choose to provide a delete account option
	public void deleteUser(int userid) {

		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("delete from user where userid=?");
			// Parameters start with 1
			preparedStatement.setInt(1, userid);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	//if we choose to provide an update account option
	public void updateUser(User user) {

		try {
			//Update this statement
			PreparedStatement preparedStatement = connection
					.prepareStatement("update user set firstname=?, lastname=?, username=?, password=? , email=?"
							+ " where userid=?");
			// Parameters start with 1
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setString(3, user.getUsername());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.setString(5, user.getEmail());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static User login(User user) {

		/**
		 * This method attempts to find the member that is trying to log in by
		 * first retrieving the username and password entered by the user.
		 */
		Statement stmt = null;

		String username = user.getUsername();
		String password = user.getPassword();

		/**
		 * Prepare a query that searches the members table in the database
		 * with the given username and password.
		 */
		String searchQuery = "select * from user where username='"
				+ username + "' AND password='" + password + "'";

		try {
			// connect to DB
			currentCon = DbUtil.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();

			/**
			 * If there are no results from the query, set the member to false.
			 * The person attempting to log in will be redirected to the home
			 * page when isValid is false.
			 */
			
			if (!more) {
				user.setValid(false);
			}

			/**
			 * If the query results in an database entry that matches the
			 * username and password, assign the appropriate information to
			 * the Member object.
			 */
			else if (more) {
				String firstName = rs.getString("FirstName");
				String lastName = rs.getString("LastName");

				user.setFirstName(firstName);
				user.setLastName(lastName);
				user.setValid(true);
			}
		}

		catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! "
					+ ex);
		}
		/**
		 * Return the Member object.
		 */
		return user;

	}
}
