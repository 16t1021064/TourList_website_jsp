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
import com.van.travel.models.setting.ShopPageContactSetting;
import com.van.travel.models.setting.ShopPageServiceSetting;

/**
 * Servlet implementation class ShopPageContactSettingAdmin
 */
@WebServlet("/admin/setting/shop-page-contact")
public class ShopPageContactSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopPageContactSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageContactSetting shopPageContactSetting = new ShopPageContactSetting();
		request.setAttribute("shopPageContactSetting", shopPageContactSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-shop-page-contact.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageContactSetting shopPageContactSetting = new ShopPageContactSetting();
		
		String head_bg = request.getParameter("head_bg");
		shopPageContactSetting.data.put("head_bg", head_bg);
		
		String[] section_a_icon_list = request.getParameterValues("section_a_icon[]");
		String[] section_a_name_list = request.getParameterValues("section_a_name[]");
		String[] section_a_description_list = request.getParameterValues("section_a_description[]");
		String[] section_a_link_label_list = request.getParameterValues("section_a_link_label[]");
		String[] section_a_link_list = request.getParameterValues("section_a_link[]");
		if(section_a_icon_list.length == section_a_name_list.length && 
				section_a_name_list.length == section_a_description_list.length &&
					section_a_description_list.length == section_a_link_label_list.length &&
						section_a_link_label_list.length == section_a_link_list.length) {
			int length = section_a_icon_list.length;
			JSONArray jsonArray = new JSONArray();
			for(int i=0; i < length; i=i+1) {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("icon", section_a_icon_list[i]);
				jsonObject.put("name", section_a_name_list[i]);
				jsonObject.put("description", section_a_description_list[i]);
				jsonObject.put("link_label", section_a_link_label_list[i]);
				jsonObject.put("link", section_a_link_list[i]);
				jsonArray.put(jsonObject);
			}
			shopPageContactSetting.sectionA = jsonArray;
		}
		
		String map_center_lat = request.getParameter("map_center_lat");
		shopPageContactSetting.map.put("center_lat", map_center_lat);
		String map_center_lng = request.getParameter("map_center_lng");
		shopPageContactSetting.map.put("center_lng", map_center_lng);
		String map_marker_lat = request.getParameter("map_marker_lat");
		shopPageContactSetting.map.put("marker_lat", map_marker_lat);
		String map_marker_lng = request.getParameter("map_marker_lng");
		shopPageContactSetting.map.put("marker_lng", map_marker_lng);
		String map_marker_name = request.getParameter("map_marker_name");
		shopPageContactSetting.map.put("marker_name", map_marker_name);
			
		String foritem_head_h1 = request.getParameter("foritem_head_h1");
		shopPageContactSetting.forItem.put("head_h1", foritem_head_h1);
		String foritem_head_h2 = request.getParameter("foritem_head_h2");
		shopPageContactSetting.forItem.put("head_h2", foritem_head_h2);
		String foritem_form_title_h1 = request.getParameter("foritem_form_title_h1");
		shopPageContactSetting.forItem.put("form_title_h1", foritem_form_title_h1);
		String foritem_form_title_h2 = request.getParameter("foritem_form_title_h2");
		shopPageContactSetting.forItem.put("form_title_h2", foritem_form_title_h2);
		String foritem_form_holder_name = request.getParameter("foritem_form_holder_name");
		shopPageContactSetting.forItem.put("form_holder_name", foritem_form_holder_name);
		String foritem_form_holder_email = request.getParameter("foritem_form_holder_email");
		shopPageContactSetting.forItem.put("form_holder_email", foritem_form_holder_email);
		String foritem_form_holder_message = request.getParameter("foritem_form_holder_message");
		shopPageContactSetting.forItem.put("form_holder_message", foritem_form_holder_message);
		String foritem_form_button_submit = request.getParameter("foritem_form_button_submit");
		shopPageContactSetting.forItem.put("form_button_submit", foritem_form_button_submit);
		
		
		shopPageContactSetting.writeData();
		request.getSession().setAttribute("noti_success", new String[] {"Updated successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting/shop-page-contact");
	}

}
