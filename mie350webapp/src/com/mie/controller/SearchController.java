package com.mie.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mie.dao.ProductDao;
import com.mie.model.Product;

public class SearchController extends HttpServlet {
	/**
	 * This class only handles the SEARCH feature of the web app.
	 * 
	 * These are variables that lead to the appropriate JSP pages.
	 * 
	 * SEARCH_USER leads to the search results page.
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static String SEARCH_PRODUCT = "/searchProductResult.jsp";
	private ProductDao dao;

	/**
	 * Constructor for this class.
	 */
	public SearchController() {
		super();
		dao = new ProductDao();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String keyword = request.getParameter("keyword");

		RequestDispatcher view = request.getRequestDispatcher(SEARCH_PRODUCT);
		request.setAttribute("keyword", keyword);
		
		HttpSession session = request.getSession(true);
		session.setAttribute("products", dao.getProductByKeyword(keyword));

		view.forward(request, response);
	}
}