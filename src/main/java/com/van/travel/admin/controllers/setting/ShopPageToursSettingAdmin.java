package com.van.travel.admin.controllers.setting;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.setting.ShopPageBlogsSetting;
import com.van.travel.models.setting.ShopPageToursSetting;

/**
 * Servlet implementation class ShopPageToursSettingAdmin
 */
@WebServlet("/admin/setting/shop-page-tours")
public class ShopPageToursSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopPageToursSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageToursSetting shopPageToursSetting = new ShopPageToursSetting();
		request.setAttribute("shopPageToursSetting", shopPageToursSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-shop-page-tours.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageToursSetting shopPageToursSetting = new ShopPageToursSetting();
		
		String head_bg = request.getParameter("head_bg");
		shopPageToursSetting.data.put("head_bg", head_bg);
		
		
		String foritem_sidebar_tour_h1 = request.getParameter("foritem_sidebar_tour_h1");
		shopPageToursSetting.forItem.put("sidebar_tour_h1", foritem_sidebar_tour_h1);
		String foritem_sidebar_prefix_price = request.getParameter("foritem_sidebar_prefix_price");
		shopPageToursSetting.forItem.put("sidebar_prefix_price", foritem_sidebar_prefix_price);
		String foritem_sidebar_activity_h1 = request.getParameter("foritem_sidebar_activity_h1");
		shopPageToursSetting.forItem.put("sidebar_activity_h1", foritem_sidebar_activity_h1);
		String foritem_sidebar_article_h1 = request.getParameter("foritem_sidebar_article_h1");
		shopPageToursSetting.forItem.put("sidebar_article_h1", foritem_sidebar_article_h1);
		
		
		shopPageToursSetting.writeData();
		request.getSession().setAttribute("noti_success", new String[] {"Updated successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting/shop-page-tours");
	}

}
