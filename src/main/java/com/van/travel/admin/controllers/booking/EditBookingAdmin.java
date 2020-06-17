package com.van.travel.admin.controllers.booking;

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
import com.van.travel.models.Review;

/**
 * Servlet implementation class EditBookingAdmin
 */
@WebServlet("/admin/booking/edit")
public class EditBookingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditBookingAdmin() {
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
		Booking booking = (new Booking()).find(id);
		
		request.setAttribute("booking", booking);
		
		request.getRequestDispatcher("/WEB-INF/Admin/booking-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		Booking booking = (new Booking()).find(id);
		
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
		String count_people = request.getParameter("count_people");
		int countPeople = Integer.parseInt(count_people);
		String note = request.getParameter("note");
		String submitTime_text = request.getParameter("submit_time");
		Date submitTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(submitTime_text.trim());
		
		Booking newBooking = booking.update(booking.getTourId(), status, name, phone, email, countPeople, note, submitTime);
		request.getSession().setAttribute("noti_success", new String[] {"Updated successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/booking/edit?id="+newBooking.getId());
	}

}
