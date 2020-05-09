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
 * Servlet implementation class EditBlogAdmin
 */
@WebServlet("/admin/blog/edit")
public class EditBlogAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditBlogAdmin() {
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
		Blog blog = (new Blog()).find(id);
		request.setAttribute("blog", blog);
		request.getRequestDispatcher("/WEB-INF/Admin/blog-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		Blog blog = (new Blog()).find(id);
		String title = request.getParameter("title");
		String thumbnail = request.getParameter("thumbnail");
		String slug = request.getParameter("slug");
		String summary = request.getParameter("summary");
		String content = request.getParameter("content");
		String author = request.getParameter("author");
		String createdTime_text = request.getParameter("created_time");
		Date createdTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(createdTime_text.trim());
		Blog newBlog = blog.update(title, thumbnail, slug, summary, content, author, createdTime);
		String tags = request.getParameter("tags");
		newBlog.setTags(tags);
		response.sendRedirect("/travel/admin/blog/edit?id="+newBlog.getId());
	}

}
