package com.van.travel.admin.controllers.blog;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Blog;

/**
 * Servlet implementation class CreateBlogAdmin
 */
@WebServlet("/admin/blog/create")
public class CreateBlogAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateBlogAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		request.getRequestDispatcher("/WEB-INF/Admin/blog-create.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String thumbnail = request.getParameter("thumbnail");
		String slug = request.getParameter("slug") + "-" + System.currentTimeMillis();
		String summary = request.getParameter("summary");
		String content = request.getParameter("content");
		String author = request.getParameter("author");
		String createdTime_text = request.getParameter("created_time");
		Date createdTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(createdTime_text.trim());
		String viewCount_text = request.getParameter("view_count");
		long viewCount = Long.parseLong(viewCount_text);
		Blog blog = (new Blog()).create(title, thumbnail, slug, summary, content, author, createdTime, viewCount);
		String tags = request.getParameter("tags");
		blog.setTags(tags);
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/blog/edit?id="+blog.getId());
	}

}
