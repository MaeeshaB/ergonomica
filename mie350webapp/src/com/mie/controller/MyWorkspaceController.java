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
	private static String SEARCH_PRODUCT = "/searchProductResult.jsp";
	private static String PRODUCT_DESC = "/productDescription.jsp";

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

		//Getting the submitted parameters
		String forward = "";
		String action = request.getParameter("action");
		String userid = request.getParameter("userid");
		String prodId = request.getParameter("prodid");
		String location = request.getParameter("location");
		
		//Determining the page to go to next
		if (location.equalsIgnoreCase("search")) {
			forward = SEARCH_PRODUCT;
		} else if (location.equalsIgnoreCase("ws")){
			forward = WORKSPACE;
		} else {
			forward = PRODUCT_DESC;
		}

		//Saving a product to the workspace
		if (action.equalsIgnoreCase("save")) {
			dao.addProduct(userid, Integer.parseInt(prodId));
		} 
		//Deleting a product form the workspace
		else if (action.equalsIgnoreCase("delete")) {
			dao.deleteProduct(userid, Integer.parseInt(prodId));
		}
		
		//Getting all the user's saved products and setting it to "wsItems"
		Workspace workspace = dao.getAllSavedItems(userid);
		List<Product> products = workspace.getProducts();
		
		HttpSession session = request.getSession(true);
		session.setAttribute("wsItems", workspace);
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}