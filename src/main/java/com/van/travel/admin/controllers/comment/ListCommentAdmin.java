package com.van.travel.admin.controllers.comment;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AbstractController;
import com.van.travel.models.Blog;
import com.van.travel.models.Comment;
import com.van.travel.models.Review;
import com.van.travel.models.Tour;

/**
 * Servlet implementation class ListCommentAdmin
 */
@WebServlet("/admin/comment")
public class ListCommentAdmin extends AbstractController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListCommentAdmin() {
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
		ArrayList<Comment> list = blog.getComments();
		request.setAttribute("list", list);
		request.getRequestDispatcher("/Admin/comment-list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
