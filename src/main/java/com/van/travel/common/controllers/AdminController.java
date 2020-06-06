package com.van.travel.common.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.models.Admin;

public abstract class AdminController extends AbstractController {
	public AdminController() {
		super();
	}
	@Override
	protected void beforeService(HttpServletRequest req, HttpServletResponse resp) {
		super.beforeService(req, resp);
		Object admin = req.getSession().getAttribute("admin");
		if(admin == null) {
			try {
				req.getRequestDispatcher("/WEB-INF/Admin/login.jsp").forward(req, resp);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	@Override
	protected void afterService(HttpServletRequest req, HttpServletResponse resp) {
		super.afterService(req, resp);
	}
}
