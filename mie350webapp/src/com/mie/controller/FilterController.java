package com.mie.controller;

import java.util.List;
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

import com.mie.dao.ProductDao;
import com.mie.model.Product;

public class FilterController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String SEARCH_PRODUCT = "/searchProductResult.jsp";
	private ProductDao dao;


	public FilterController() {
		super();
		dao = new ProductDao();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String forward = SEARCH_PRODUCT;
		String action = request.getParameter("action");
		String type = request.getParameter("type");
		HttpSession session = request.getSession(true);
		
		//Changing the selected value of the "sort by" dropdown menu
		session.setAttribute("selected_LH", "");
		session.setAttribute("selected_HL", "");
		session.setAttribute("selected_AZ", "");
		session.setAttribute("selected_ZA", "");

		//Filtering by type of product
		if (action.equalsIgnoreCase("filter")) {
			session.setAttribute("products", dao.getProductByType(type));
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		//Sorting the product list
		String forward = SEARCH_PRODUCT;
		String action = request.getParameter("action");
		
		//Getting the current product list
		HttpSession session = request.getSession(true);
		List<Integer> prodIds = dao.getProductIdList((List<Product>) session.getAttribute("products"));
		
		//Changing the selected value of the "sort by" dropdown menu
		session.setAttribute("selected_LH", "");
		session.setAttribute("selected_HL", "");
		session.setAttribute("selected_AZ", "");
		session.setAttribute("selected_ZA", "");
		
		//Sorting by price: low to high
		if (action.equalsIgnoreCase("Price_LH")) {	
			session.setAttribute("products", dao.getSortedProducts(prodIds, "ASC", "prod_price"));
			session.setAttribute("selected_LH", "selected");
		} 
		//Sorting by price: high to low
		else if (action.equalsIgnoreCase("Price_HL")) {
			session.setAttribute("products", dao.getSortedProducts(prodIds, "DESC", "prod_price"));
			session.setAttribute("selected_HL", "selected");
		} 
		//Sorting by name: Z to high
		else if (action.equalsIgnoreCase("Name_AZ")) {
			session.setAttribute("products", dao.getSortedProducts(prodIds, "ASC", "prod_name"));
			session.setAttribute("selected_AZ", "selected");
		} 
		//Sorting by name: Z to A
		else if (action.equalsIgnoreCase("Name_ZA")) {
			session.setAttribute("products", dao.getSortedProducts(prodIds, "DESC", "prod_name"));
			session.setAttribute("selected_ZA", "selected");
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
		
	}
	
	

}