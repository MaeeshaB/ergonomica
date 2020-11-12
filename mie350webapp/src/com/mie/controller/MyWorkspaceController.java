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

import com.mie.dao.ProductDao;
import com.mie.dao.WorkspaceDao;

public class MyWorkspaceController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String WORKSPACE = "/workspace.jsp";

	private WorkspaceDao dao;

	/**
	 * Constructor for this class.
	 */
	public MyWorkspaceController() {
		super();
		dao = new WorkspaceDao();
	}
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String forward = WORKSPACE;
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("save")) {
			int userId = Integer.parseInt(request.getParameter("userId"));
			int prodId = Integer.parseInt(request.getParameter("prodId"));
			//dao.addProduct(userId, prodid);
		}

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

}