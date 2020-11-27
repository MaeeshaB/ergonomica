package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.dao.ProductDao;
import com.mie.dao.WorkspaceDao;
import com.mie.model.Product;
import com.mie.model.Workspace;

public class MyWorkspaceController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String WORKSPACE = "/myworkspace.jsp";

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
		String userid = request.getParameter("userid");

		if (action.equalsIgnoreCase("save")) {
			//int prodId = Integer.parseInt(request.getParameter("prodId"));
			//dao.addProduct(prodid);
		} else if (action.equalsIgnoreCase("delete")) {
		}
		

		Workspace workspace = dao.getAllSavedItems(userid);
		List<Product> products = workspace.getProducts();
		
		HttpSession session = request.getSession(true);
		session.setAttribute("wsItems", products);
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}