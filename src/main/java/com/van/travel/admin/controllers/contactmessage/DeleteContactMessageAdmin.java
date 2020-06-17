package com.van.travel.admin.controllers.contactmessage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Booking;
import com.van.travel.models.ContactMessage;

/**
 * Servlet implementation class DeleteContactMessageAdmin
 */
@WebServlet("/admin/contactmessage/delete")
public class DeleteContactMessageAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteContactMessageAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		ContactMessage contactMessage = (new ContactMessage()).find(id);
		contactMessage.delete();
		request.getSession().setAttribute("noti_success", new String[] {"Deleted successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/contactmessage");
	}

}
