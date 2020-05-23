package com.van.travel.web.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.controllers.ShopController;
import com.van.travel.models.Blog;
import com.van.travel.models.Comment;
import com.van.travel.models.Tag;
import com.van.travel.web.factories.CommentFactory;
import com.van.travel.web.factories.TagFactory;

/**
 * Servlet implementation class BlogDetailController
 */
@WebServlet("/blog")
public class BlogDetailController extends ShopController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String slug = request.getParameter("slug");
		
		Blog blog;
		
		if(id != null) {
			blog = (new Blog()).find(id);
		} else {
			blog = (new Blog()).findWithSlug(slug);
		}
		
		
		request.setAttribute("blog", blog);
		
		ArrayList<Comment> newestComments = (new CommentFactory()).gets(null, 5);
		request.setAttribute("newestComments", newestComments);
		
		ArrayList<Tag> hotTags = (new TagFactory()).getHotTags(10);
		request.setAttribute("hotTags", hotTags);
		
		request.getRequestDispatcher("/WEB-INF/Shop/blog-detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
