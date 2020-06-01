package com.van.travel.admin.controllers.setting;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.setting.FooterSetting;
import com.van.travel.models.setting.InfosSetting;
import com.van.travel.models.setting.ShopPageServiceSetting;

/**
 * Servlet implementation class ShopPageServiceSettingAdmin
 */
@WebServlet("/admin/setting/shop-page-service")
public class ShopPageServiceSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopPageServiceSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageServiceSetting shopPageServiceSetting = new ShopPageServiceSetting();
		request.setAttribute("shopPageServiceSetting", shopPageServiceSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-shop-page-service.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageServiceSetting shopPageServiceSetting = new ShopPageServiceSetting();
		
		shopPageServiceSetting.data.put("service_panel_count", Integer.parseInt(request.getParameter("service_panel_count")));
		shopPageServiceSetting.data.put("service_item_count", Integer.parseInt(request.getParameter("service_item_count")));
		shopPageServiceSetting.data.put("head_bg", request.getParameter("head_bg"));
		shopPageServiceSetting.data.put("panel_item_image_bg", request.getParameter("panel_item_image_bg"));
		
		shopPageServiceSetting.forItem.put("head_h1", request.getParameter("head_h1"));
		shopPageServiceSetting.forItem.put("head_h2", request.getParameter("head_h2"));
		shopPageServiceSetting.forItem.put("stretch_h1", request.getParameter("stretch_h1"));
		shopPageServiceSetting.forItem.put("stretch_h2", request.getParameter("stretch_h2"));
		shopPageServiceSetting.forItem.put("stretch_button", request.getParameter("stretch_button"));
		
		shopPageServiceSetting.writeData();
		
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting/shop-page-service");
	}

}
