package com.van.travel.admin.controllers.comment;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.controllers.AbstractController;
import com.van.travel.models.Blog;
import com.van.travel.models.Comment;
import com.van.travel.models.Review;
import com.van.travel.models.Tour;

/**
 * Servlet implementation class CreateCommentAdmin
 */
@WebServlet("/admin/comment/create")
public class CreateCommentAdmin extends AbstractController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateCommentAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String blogId = request.getParameter("blog_id");
		Blog blog = (new Blog()).find(blogId);
		request.setAttribute("blog", blog);
		request.getRequestDispatcher("/Admin/comment-create.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String blogId = request.getParameter("blog_id");
		Blog blog = (new Blog()).find(blogId);
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		String createdTime_text = request.getParameter("created_time");
		Date createdTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(createdTime_text.trim());
		
		Comment comment = (new Comment()).create(blog.getId(), name, email, content, createdTime);
		
		response.sendRedirect("/travel/admin/comment/edit?id="+comment.getId());
	}

}
