package com.van.travel.admin.controllers.comment;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Comment;
import com.van.travel.models.Review;

/**
 * Servlet implementation class EditCommentAdmin
 */
@WebServlet("/admin/comment/edit")
public class EditCommentAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditCommentAdmin() {
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
		Comment comment = (new Comment()).find(id);
		
		request.setAttribute("comment", comment);
		
		request.getRequestDispatcher("/WEB-INF/Admin/comment-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		Comment comment = (new Comment()).find(id);
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		String createdTime_text = request.getParameter("created_time");
		Date createdTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(createdTime_text.trim());
		
		Comment newComment = comment.update(comment.getBlogId(), name, email, content, createdTime);
		
		response.sendRedirect("/travel/admin/comment/edit?id="+newComment.getId());
	}

}
