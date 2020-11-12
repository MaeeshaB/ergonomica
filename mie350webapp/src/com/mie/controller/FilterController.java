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
// Hello this is a test
public class FilterController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static String SEARCH_PRODUCT = "/searchProductResult.jsp";
	private ProductDao dao;

	/**
	 * Constructor for this class.
	 */
	public FilterController() {
		super();
		dao = new ProductDao();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String forward = SEARCH_PRODUCT;
		String action = request.getParameter("action");

		if (action.equalsIgnoreCase("desk")) {
			request.setAttribute("products", dao.getProductByCategory("Desk"));
		} else if (action.equalsIgnoreCase("chair")) {
			request.setAttribute("products", dao.getProductByCategory("Chair"));
		}

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
	
}