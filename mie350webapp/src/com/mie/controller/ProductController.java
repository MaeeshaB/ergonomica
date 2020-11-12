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

public class ProductController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String SEARCH_PRODUCT = "/searchProductResult.jsp";
	private ProductDao dao;

	/**
	 * Constructor for this class.
	 */
	public ProductController() {
		super();
		dao = new ProductDao();
	}
	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		 
	}
	
	protected void doPost(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {

		//Retrieving quiz info
		RequestDispatcher view = request.getRequestDispatcher(SEARCH_PRODUCT);
		request.setAttribute("products", dao.getProductFromSuggestedProducts());
		view.forward(request, response);
	}

}