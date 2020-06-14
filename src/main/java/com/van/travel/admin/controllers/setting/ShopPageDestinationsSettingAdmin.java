package com.van.travel.admin.controllers.setting;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.setting.ShopPageBlogsSetting;
import com.van.travel.models.setting.ShopPageDestinationsSetting;

/**
 * Servlet implementation class ShopPageDestinationsSettingAdmin
 */
@WebServlet("/admin/setting/shop-page-destinations")
public class ShopPageDestinationsSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopPageDestinationsSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageDestinationsSetting shopPageDestinationsSetting = new ShopPageDestinationsSetting();
		request.setAttribute("shopPageDestinationsSetting", shopPageDestinationsSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-shop-page-destinations.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageDestinationsSetting shopPageDestinationsSetting = new ShopPageDestinationsSetting();
		
		String head_bg = request.getParameter("head_bg");
		shopPageDestinationsSetting.data.put("head_bg", head_bg);
		
		
		String foritem_head_h1 = request.getParameter("foritem_head_h1");
		shopPageDestinationsSetting.forItem.put("head_h1", foritem_head_h1);
		String foritem_head_h2 = request.getParameter("foritem_head_h2");
		shopPageDestinationsSetting.forItem.put("head_h2", foritem_head_h2);
		
		
		shopPageDestinationsSetting.writeData();
		
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting/shop-page-destinations");
	}

}
