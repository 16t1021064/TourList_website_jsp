package com.van.travel.common.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class ShopController extends AbstractController {
	public ShopController() {
		super();
	}
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.service(req, resp);
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
