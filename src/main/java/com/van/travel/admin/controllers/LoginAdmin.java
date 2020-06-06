package com.van.travel.admin.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;

import com.van.travel.common.controllers.AbstractController;
import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Admin;

/**
 * Servlet implementation class HomeAdmin
 */
@WebServlet("/admin/login")
public class LoginAdmin extends AbstractController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Object admin = request.getSession().getAttribute("admin");
		if(admin == null) {
			request.getRequestDispatcher("/WEB-INF/Admin/login.jsp").forward(request, response);
		}else {
			response.sendRedirect(request.getAttribute("sitePath")+"/admin");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(StringUtils.isEmpty(email) || StringUtils.isEmpty(password)) {
			response.sendRedirect(request.getAttribute("sitePath")+"/admin/login");
		}
		
		password = DigestUtils.md5Hex(password.trim());
		
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"email", "=", email.trim(), "STRING"});
		whereConditions.add(new Object[] {"password", "=", password, "STRING"});
		
		ArrayList<Admin> admins = (new Admin()).all(whereConditions);
		if(admins.size() > 0) {
			request.getSession().setAttribute("admin", admins.get(0));
			response.sendRedirect(request.getAttribute("sitePath")+"/admin");
		}else {
			response.sendRedirect(request.getAttribute("sitePath")+"/admin/login");
		}
		
	}

}
