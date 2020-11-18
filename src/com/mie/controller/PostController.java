package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

public class PostController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private static String SHARE_YOUR_SETUP = "/shareYourSetup.jsp";
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

		String forward = SHARE_YOUR_SETUP;
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("like")) {
			String postid = request.getParameter("postid");
			String userid = request.getParameter("userid");
			dao.like(postid, userid);
		}
		
		request.setAttribute("posts", dao.getAllPosts());

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

}