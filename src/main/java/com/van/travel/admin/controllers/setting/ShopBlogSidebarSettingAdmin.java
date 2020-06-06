package com.van.travel.admin.controllers.setting;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.setting.ShopBlogSidebarSetting;
import com.van.travel.models.setting.ShopPageContactSetting;

/**
 * Servlet implementation class ShopBlogSidebarSettingAdmin
 */
@WebServlet("/admin/setting/shop-blog-sidebar")
public class ShopBlogSidebarSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopBlogSidebarSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopBlogSidebarSetting shopBlogSidebarSetting = new ShopBlogSidebarSetting();
		request.setAttribute("shopBlogSidebarSetting", shopBlogSidebarSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-shop-blog-sidebar.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopBlogSidebarSetting shopBlogSidebarSetting = new ShopBlogSidebarSetting();
		
		String foritem_intro_h1 = request.getParameter("foritem_intro_h1");
		shopBlogSidebarSetting.forItem.put("intro_h1", foritem_intro_h1);
		String foritem_intro_description = request.getParameter("foritem_intro_description");
		shopBlogSidebarSetting.forItem.put("intro_description", foritem_intro_description);
		String foritem_blog_h1 = request.getParameter("foritem_blog_h1");
		shopBlogSidebarSetting.forItem.put("blog_h1", foritem_blog_h1);
		String foritem_comment_h1 = request.getParameter("foritem_comment_h1");
		shopBlogSidebarSetting.forItem.put("comment_h1", foritem_comment_h1);
		String foritem_comment_concat = request.getParameter("foritem_comment_concat");
		shopBlogSidebarSetting.forItem.put("comment_concat", foritem_comment_concat);
		String foritem_tag_h1 = request.getParameter("foritem_tag_h1");
		shopBlogSidebarSetting.forItem.put("tag_h1", foritem_tag_h1);
		
		shopBlogSidebarSetting.writeData();
		
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting/shop-blog-sidebar");
	}

}
