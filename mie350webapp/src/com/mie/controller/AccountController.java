package com.mie.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.model.*;
import com.mie.dao.*;

/**
 * Servlet implementation for AccountController.
 * 
 * This class handles the registration servlet and redirects users to log in.
 */


public class AccountController extends HttpServlet{
	
	private UserDao dao;

	/**
	 * Constructor for this class.
	 */
	public AccountController() {
		super();
		dao = new UserDao();
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		
		String action = request.getParameter("action");
		String forward="";
		

		if (action.equalsIgnoreCase("createAccount")) {
			/**
			 * Retrieve the entered username, password, and email from the createAccount.jsp form.
			 */
			User user = new User();
			user.setUsername(request.getParameter("un"));
			user.setPassword(request.getParameter("pw"));
			user.setEmail(request.getParameter("em"));
			/**
			* need to update database with user information , then once updated redirect user to login page
			 */
			
			try{		
				dao.createAccount(user);
				
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionuser", user);
				session.setAttribute("username", user.getUsername());
				session.setAttribute("password", user.getPassword());
				forward = "userLogged.jsp";
				
			} catch (Throwable theException) {
				System.out.println(theException);
			}
		} else if (action.equalsIgnoreCase("changePassword")) {
			try{
				HttpSession session = request.getSession();
				String currentPassword = request.getParameter("current");
				String newPassword = request.getParameter("new");
				String confirmPassword = request.getParameter("confirm");
				
				
				String username = (String) session.getAttribute("username");
				String oldPassword = (String) session.getAttribute("password");
				User user = new User();
				
				if (newPassword.equals(confirmPassword)) {
					if (oldPassword.equals(currentPassword)) {
						user.setPassword(newPassword);
						user.setUsername(username);
						
						session.setAttribute("username", user.getUsername());
						session.setAttribute("password", user.getPassword());
						
						dao.updatePassword(username, newPassword);
						forward="userLogged.jsp";
					} else {
						forward = "invalidChangePassword.jsp";
					}
				} else {
					forward = "invalidChangePassword.jsp";
				}
				
				
			} catch (Throwable theException) {
				System.out.println(theException);
			}
		} else if (action.equalsIgnoreCase("deleteAccount")) {
			HttpSession session = request.getSession();
			String username = (String) session.getAttribute("username");
			dao.deleteUser(username);
			session.invalidate();
			forward="search.jsp";
		}
		
		response.sendRedirect(forward);
	}
		
}

