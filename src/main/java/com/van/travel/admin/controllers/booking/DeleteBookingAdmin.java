package com.van.travel.admin.controllers.booking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AbstractController;
import com.van.travel.models.Booking;
import com.van.travel.models.Review;

/**
 * Servlet implementation class DeleteBookingAdmin
 */
@WebServlet("/admin/booking/delete")
public class DeleteBookingAdmin extends AbstractController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBookingAdmin() {
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
		Booking booking = (new Booking()).find(id);
		String bookingId = booking.getTourId();
		booking.delete();
		
		response.sendRedirect("/travel/admin/booking?tour_id="+bookingId);
	}
}
