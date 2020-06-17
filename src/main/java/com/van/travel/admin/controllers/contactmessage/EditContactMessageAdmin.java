package com.van.travel.admin.controllers.contactmessage;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Booking;
import com.van.travel.models.ContactMessage;

/**
 * Servlet implementation class EditContactMessageAdmin
 */
@WebServlet("/admin/contactmessage/edit")
public class EditContactMessageAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditContactMessageAdmin() {
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
		ContactMessage contactMessage = (new ContactMessage()).find(id);
		
		request.setAttribute("contactMessage", contactMessage);
		
		request.getRequestDispatcher("/WEB-INF/Admin/contactmessage-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		ContactMessage contactMessage = (new ContactMessage()).find(id);
		
		String active_text = request.getParameter("active");
		boolean active;
		if(active_text.equals("1")) {
			active = true;
		}else {
			active = false;
		}
		
		ContactMessage newContactMessage = contactMessage.update(active, contactMessage.getName(), contactMessage.getEmail(), contactMessage.getMessage(), contactMessage.getSubmitTime());
		request.getSession().setAttribute("noti_success", new String[] {"Updated successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/contactmessage/edit?id="+newContactMessage.getId());
	}

}
