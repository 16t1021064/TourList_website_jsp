package com.van.travel.admin.controllers.review;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.print.attribute.standard.DateTimeAtCompleted;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.models.Destination;
import com.van.travel.models.Review;
import com.van.travel.models.Tour;

/**
 * Servlet implementation class CreateReviewAdmin
 */
@WebServlet("/admin/review/create")
public class CreateReviewAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateReviewAdmin() {
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
		request.getRequestDispatcher("/Admin/review-create.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String tourId = request.getParameter("tour_id");
		Tour tour = (new Tour()).find(tourId);
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String content = request.getParameter("content");
		String reviewTime_text = request.getParameter("review_time");
		Date reviewTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(reviewTime_text.trim());
		
		Review review = (new Review()).create(tourId, name, email, phone, content, reviewTime);
		
		response.sendRedirect("/travel/admin/review/edit?id="+review.getId());
	}

}
