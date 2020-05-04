package com.van.travel.admin.controllers.enquiry;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.controllers.AbstractController;
import com.van.travel.models.Booking;
import com.van.travel.models.Enquiry;
import com.van.travel.models.Tour;

/**
 * Servlet implementation class CreateEnquiryAdmin
 */
@WebServlet("/admin/enquiry/create")
public class CreateEnquiryAdmin extends AbstractController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateEnquiryAdmin() {
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
		request.getRequestDispatcher("/Admin/enquiry-create.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String tourId = request.getParameter("tour_id");
		Tour tour = (new Tour()).find(tourId);
		
		String status_text = request.getParameter("status");
		boolean status;
		if(status_text.equals("1")) {
			status = true;
		}else {
			status = false;
		}
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String travelTime_text = request.getParameter("travel_time");
		Date travelTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(travelTime_text.trim());
		String count_people = request.getParameter("count_people");
		int countPeople = Integer.parseInt(count_people);
		String note = request.getParameter("note");
		String submitTime_text = request.getParameter("submit_time");
		Date submitTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(submitTime_text.trim());
		
		Enquiry enquiry = (new Enquiry()).create(tourId, status, name, phone, email, travelTime, countPeople, note, submitTime);
		
		response.sendRedirect("/travel/admin/enquiry/edit?id="+enquiry.getId());
	}

}
