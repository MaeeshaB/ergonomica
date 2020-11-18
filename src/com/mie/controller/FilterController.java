package com.mie.controller;

import java.awt.List;
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

		if (action.equalsIgnoreCase("filter")) {
			request.setAttribute("products", dao.getProductByType(type));
		} else if (action.equalsIgnoreCase("sortByPrice")) {
			
		} else if (action.equalsIgnoreCase("filterByPrice")) {
			
		}

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

}