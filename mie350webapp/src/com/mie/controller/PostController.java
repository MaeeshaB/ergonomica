package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.dao.PostDao;
import com.mie.dao.ProductDao;
import com.mie.dao.UserDao;
import com.mie.model.User;

public class PostController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private PostDao dao;

	/**
	 * Constructor for this class.
	 */
	public PostController() {
		super();
		dao = new PostDao();
	}
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String forward = "";
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("like")) {
			int postId = Integer.parseInt(request.getParameter("postId"));
			dao.like(postId);
		}

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

}