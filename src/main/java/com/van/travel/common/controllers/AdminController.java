package com.van.travel.common.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class AdminController extends AbstractController {
	public AdminController() {
		super();
	}
	@Override
	protected void beforeService(HttpServletRequest req, HttpServletResponse resp) {
		super.beforeService(req, resp);
	}
	@Override
	protected void afterService(HttpServletRequest req, HttpServletResponse resp) {
		super.afterService(req, resp);
	}
}
