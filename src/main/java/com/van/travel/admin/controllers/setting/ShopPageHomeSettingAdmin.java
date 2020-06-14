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
import com.van.travel.models.setting.ShopPageAboutSetting;
import com.van.travel.models.setting.ShopPageHomeSetting;

/**
 * Servlet implementation class ShopPageHomeSettingAdmin
 */
@WebServlet("/admin/setting/shop-page-home")
public class ShopPageHomeSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopPageHomeSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageHomeSetting shopPageHomeSetting = new ShopPageHomeSetting();
		request.setAttribute("shopPageHomeSetting", shopPageHomeSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-shop-page-home.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageHomeSetting shopPageHomeSetting = new ShopPageHomeSetting();
		
		String[] services_thumb_list = request.getParameterValues("services_thumb[]");
		String[] services_title_list = request.getParameterValues("services_title[]");
		String[] services_sub_title_list = request.getParameterValues("services_sub_title[]");
		if(services_thumb_list.length == services_title_list.length && services_title_list.length == services_sub_title_list.length) {
			int length = services_thumb_list.length;
			JSONArray jsonArray = new JSONArray();
			for(int i=0; i < length; i=i+1) {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("thumb", services_thumb_list[i]);
				jsonObject.put("title", services_title_list[i]);
				jsonObject.put("sub_title", services_sub_title_list[i]);
				jsonArray.put(jsonObject);
			}
			shopPageHomeSetting.services = jsonArray;
		}
		
		String tour_bg = request.getParameter("tour_bg");
		shopPageHomeSetting.tour.put("bg", tour_bg);
		String tour_title = request.getParameter("tour_title");
		shopPageHomeSetting.tour.put("title", tour_title);
		String tour_link_label = request.getParameter("tour_link_label");
		shopPageHomeSetting.tour.put("link_label", tour_link_label);
		
		String destination_title = request.getParameter("destination_title");
		shopPageHomeSetting.destination.put("title", destination_title);
		String destination_link_label = request.getParameter("destination_link_label");
		shopPageHomeSetting.destination.put("link_label", destination_link_label);
		String destination_link_tour_label = request.getParameter("destination_link_tour_label");
		shopPageHomeSetting.destination.put("link_tour_label", destination_link_tour_label);
		String destination_description = request.getParameter("destination_description");
		shopPageHomeSetting.destination.put("description", destination_description);
		
		String activity_title = request.getParameter("activity_title");
		shopPageHomeSetting.activity.put("title", activity_title);
		
		String subcribe_title = request.getParameter("subcribe_title");
		shopPageHomeSetting.subcribe.put("title", subcribe_title);
		String subcribe_description = request.getParameter("subcribe_description");
		shopPageHomeSetting.subcribe.put("description", subcribe_description);
		String subcribe_placeholder_input = request.getParameter("subcribe_placeholder_input");
		shopPageHomeSetting.subcribe.put("placeholder_input", subcribe_placeholder_input);
		String subcribe_button_submit = request.getParameter("subcribe_button_submit");
		shopPageHomeSetting.subcribe.put("button_submit", subcribe_button_submit);
		
		String sale_bg = request.getParameter("sale_bg");
		shopPageHomeSetting.sale.put("bg", sale_bg);
		String sale_title_white = request.getParameter("sale_title_white");
		shopPageHomeSetting.sale.put("title_white", sale_title_white);
		String sale_title_yellow = request.getParameter("sale_title_yellow");
		shopPageHomeSetting.sale.put("title_yellow", sale_title_yellow);
		String sale_description = request.getParameter("sale_description");
		shopPageHomeSetting.sale.put("description", sale_description);
		String sale_button_submit = request.getParameter("sale_button_submit");
		shopPageHomeSetting.sale.put("button_submit", sale_button_submit);
		
		String blog_title = request.getParameter("blog_title");
		shopPageHomeSetting.blog.put("title", blog_title);
		String blog_link_label = request.getParameter("blog_link_label");
		shopPageHomeSetting.blog.put("link_label", blog_link_label);
		
		String benefit_title = request.getParameter("benefit_title");
		shopPageHomeSetting.benefit.put("title", benefit_title);
		String[] benefit_list_thumb_list = request.getParameterValues("benefit_list_thumb[]");
		String[] benefit_list_title_list = request.getParameterValues("benefit_list_title[]");
		String[] benefit_list_sub_title_list = request.getParameterValues("benefit_list_sub_title[]");
		if(benefit_list_thumb_list.length == benefit_list_title_list.length && benefit_list_title_list.length == benefit_list_sub_title_list.length) {
			int length = benefit_list_thumb_list.length;
			JSONArray jsonArray = new JSONArray();
			for(int i=0; i < length; i=i+1) {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("thumb", benefit_list_thumb_list[i]);
				jsonObject.put("title", benefit_list_title_list[i]);
				jsonObject.put("sub_title", benefit_list_sub_title_list[i]);
				jsonArray.put(jsonObject);
			}
			shopPageHomeSetting.benefit.put("list", jsonArray);
		}
		
		shopPageHomeSetting.writeData();
		
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting/shop-page-home");
		
	
	}

}
