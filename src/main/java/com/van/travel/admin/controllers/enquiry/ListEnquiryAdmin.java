package com.van.travel.admin.controllers.enquiry;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AbstractController;
import com.van.travel.models.Booking;
import com.van.travel.models.Enquiry;
import com.van.travel.models.Tour;

/**
 * Servlet implementation class ListEnquiryAdmin
 */
@WebServlet("/admin/enquiry")
public class ListEnquiryAdmin extends AbstractController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListEnquiryAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String tourId = request.getParameter("tour_id");
		Tour tour = (new Tour()).find(tourId);
		request.setAttribute("tour", tour);
		ArrayList<Enquiry> list = tour.getEnquiries();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/Admin/enquiry-list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
