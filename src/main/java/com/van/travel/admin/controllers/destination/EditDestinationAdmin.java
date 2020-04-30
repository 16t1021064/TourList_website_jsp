package com.van.travel.admin.controllers.destination;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.models.Destination;

/**
 * Servlet implementation class EditDestinationAdmin
 */
@WebServlet("/admin/destination/edit")
public class EditDestinationAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditDestinationAdmin() {
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
		Destination destination = (new Destination()).find(id);
		
		request.setAttribute("destination", destination);
		
		request.getRequestDispatcher("/Admin/destination-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		Destination destination = (new Destination()).find(id);
		
		String name = request.getParameter("name");
		String thumbnail = request.getParameter("thumbnail");
		
		destination = destination.update(name, thumbnail);
		
		response.sendRedirect("/travel/admin/destination/edit?id="+destination.getId());
	}

}
