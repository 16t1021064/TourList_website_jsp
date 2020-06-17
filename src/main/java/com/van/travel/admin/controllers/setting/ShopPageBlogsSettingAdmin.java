package com.van.travel.admin.controllers.setting;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.setting.ShopPageBlogsSetting;
import com.van.travel.models.setting.ShopPageContactSetting;

/**
 * Servlet implementation class ShopPageBlogsSettingAdmin
 */
@WebServlet("/admin/setting/shop-page-blogs")
public class ShopPageBlogsSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopPageBlogsSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageBlogsSetting shopPageBlogsSetting = new ShopPageBlogsSetting();
		request.setAttribute("shopPageBlogsSetting", shopPageBlogsSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-shop-page-blogs.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageBlogsSetting shopPageBlogsSetting = new ShopPageBlogsSetting();
		
		String head_bg = request.getParameter("head_bg");
		shopPageBlogsSetting.data.put("head_bg", head_bg);
		
		
		String foritem_head_h1 = request.getParameter("foritem_head_h1");
		shopPageBlogsSetting.forItem.put("head_h1", foritem_head_h1);
		String foritem_head_h2 = request.getParameter("foritem_head_h2");
		shopPageBlogsSetting.forItem.put("head_h2", foritem_head_h2);
		
		
		shopPageBlogsSetting.writeData();
		request.getSession().setAttribute("noti_success", new String[] {"Updated successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting/shop-page-blogs");
	}

}
