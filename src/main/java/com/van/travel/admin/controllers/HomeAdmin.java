package com.van.travel.admin.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Comment;
import com.van.travel.models.ContactMessage;

/**
 * Servlet implementation class HomeAdmin
 */
@WebServlet("/admin")
public class HomeAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Object[]> whereConditions;
		ArrayList<Object[]> orderBys;
		
		whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"active", "=", 1, "INT"});
		orderBys = new ArrayList<Object[]>();
		orderBys.add(new Object[] {"submit_time", "desc"});
		ContactMessage fakeContactMessage = new ContactMessage();
		fakeContactMessage.setQueryLimit(5);
		ArrayList<ContactMessage> listUnreadContactMessage = (fakeContactMessage).all(whereConditions);
		request.setAttribute("listUnreadContactMessage", listUnreadContactMessage);
		
		whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"active", "=", 0, "INT"});
		orderBys = new ArrayList<Object[]>();
		orderBys.add(new Object[] {"created_time", "desc"});
		Comment fakeComment = new Comment();
		fakeComment.setQueryLimit(5);
		ArrayList<Comment> listUnreadComment = (fakeComment).all(whereConditions);
		request.setAttribute("listUnreadComment", listUnreadComment);
		
		request.getRequestDispatcher("/WEB-INF/Admin/home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
