package com.van.travel.admin.controllers.activity;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Activity;
import com.van.travel.models.Destination;

/**
 * Servlet implementation class EditActivityAdmin
 */
@WebServlet("/admin/activity/edit")
public class EditActivityAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditActivityAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		Activity activity = (new Activity()).find(id);
		
		request.setAttribute("activity", activity);
		
		request.getRequestDispatcher("/WEB-INF/Admin/activity-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		Activity activity = (new Activity()).find(id);
		
		String name = request.getParameter("name");
		
		activity = activity.update(name);
		
		response.sendRedirect("/travel/admin/activity/edit?id="+activity.getId());
	}

}
