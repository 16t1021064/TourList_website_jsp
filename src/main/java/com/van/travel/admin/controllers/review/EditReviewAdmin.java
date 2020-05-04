package com.van.travel.admin.controllers.review;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.controllers.AbstractController;
import com.van.travel.models.Destination;
import com.van.travel.models.Review;
import com.van.travel.models.Tour;

/**
 * Servlet implementation class EditReviewAdmin
 */
@WebServlet("/admin/review/edit")
public class EditReviewAdmin extends AbstractController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditReviewAdmin() {
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
		Review review = (new Review()).find(id);
		
		request.setAttribute("review", review);
		
		request.getRequestDispatcher("/Admin/review-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		Review review = (new Review()).find(id);
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String content = request.getParameter("content");
		String reviewTime_text = request.getParameter("review_time");
		Date reviewTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(reviewTime_text.trim());
		
		Review newReview = review.update(review.getTourId(), name, email, phone, content, reviewTime);
		
		response.sendRedirect("/travel/admin/review/edit?id="+newReview.getId());
	}

}
