package com.van.travel.common.controllers;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public abstract class AbstractController extends HttpServlet {
	public AbstractController() {
		super();
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.beforeService(req, resp);
		super.service(req, resp);
		this.afterService(req, resp);
	}
	
	protected void beforeService(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("--------------------------------");
		System.out.println("Log before service...");
		System.out.println(req.getRequestURL() + "?" + req.getQueryString());
	}
	
	protected void afterService(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("Log after service...");
		System.out.println("--------------------------------");
	}
}
