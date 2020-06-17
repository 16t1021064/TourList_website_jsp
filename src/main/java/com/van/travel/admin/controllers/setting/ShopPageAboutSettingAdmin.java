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

/**
 * Servlet implementation class ShopPageAboutSettingAdmin
 */
@WebServlet("/admin/setting/shop-page-about")
public class ShopPageAboutSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopPageAboutSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageAboutSetting shopPageAboutSetting = new ShopPageAboutSetting();
		request.setAttribute("shopPageAboutSetting", shopPageAboutSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-shop-page-about.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPageAboutSetting shopPageAboutSetting = new ShopPageAboutSetting();
		
		// general
		String head_bg = request.getParameter("head_bg");
		shopPageAboutSetting.data.put("head_bg", head_bg);
		
		// section a
		String[] section_a_title_list = request.getParameterValues("section_a_title[]");
		String[] section_a_description_list = request.getParameterValues("section_a_description[]");
		if(section_a_title_list.length == section_a_description_list.length) {
			int length = section_a_title_list.length;
			JSONArray jsonArray = new JSONArray();
			for(int i=0; i < length; i=i+1) {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("title", section_a_title_list[i]);
				jsonObject.put("description", section_a_description_list[i]);
				jsonArray.put(jsonObject);
			}
			shopPageAboutSetting.sectionA = jsonArray;
		}
		
		//section b
		String section_b_title_h1 = request.getParameter("section_b_title_h1");
		shopPageAboutSetting.sectionB.put("title_h1", section_b_title_h1);
		String section_b_description = request.getParameter("section_b_description");
		shopPageAboutSetting.sectionB.put("description", section_b_title_h1);
		String section_b_bg = request.getParameter("section_b_bg");
		shopPageAboutSetting.sectionB.put("bg", section_b_bg);
		String section_b_link_label = request.getParameter("section_b_link_label");
		shopPageAboutSetting.sectionB.put("link_label", section_b_link_label);
		String section_b_link = request.getParameter("section_b_link");
		shopPageAboutSetting.sectionB.put("link", section_b_link);
		String[] section_b_list_title_list = request.getParameterValues("section_b_list_title[]");
		String[] section_b_list_description_list = request.getParameterValues("section_b_list_description[]");
		if(section_b_list_title_list.length == section_b_list_description_list.length) {
			int length = section_b_list_title_list.length;
			JSONArray jsonArray = new JSONArray();
			for(int i=0; i < length; i=i+1) {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("title", section_b_list_title_list[i]);
				jsonObject.put("description", section_b_list_description_list[i]);
				jsonArray.put(jsonObject);
			}
			shopPageAboutSetting.sectionB.put("list", jsonArray);
		}
		
		//section c
		String section_c_bg = request.getParameter("section_c_bg");
		shopPageAboutSetting.sectionC.put("bg", section_c_bg);
		String[] section_c_list_name_list = request.getParameterValues("section_c_list_name[]");
		String[] section_c_list_prefix_list = request.getParameterValues("section_c_list_prefix[]");
		String[] section_c_list_count_list = request.getParameterValues("section_c_list_count[]");
		String[] section_c_list_suffix_list = request.getParameterValues("section_c_list_suffix[]");
		if(section_c_list_name_list.length == section_c_list_prefix_list.length && 
				section_c_list_name_list.length == section_c_list_count_list.length && 
						section_c_list_count_list.length == section_c_list_suffix_list.length) {
			int length = section_c_list_name_list.length;
			JSONArray jsonArray = new JSONArray();
			for(int i=0; i < length; i=i+1) {
				JSONObject jsonObject = new JSONObject();
				jsonObject.put("name", section_c_list_name_list[i]);
				jsonObject.put("prefix", section_c_list_prefix_list[i]);
				jsonObject.put("count", Integer.parseInt(section_c_list_count_list[i]));
				jsonObject.put("suffix", section_c_list_suffix_list[i]);
				jsonArray.put(jsonObject);
			}
			shopPageAboutSetting.sectionC.put("list", jsonArray);
		}
		
		String foritem_head_h1 = request.getParameter("foritem_head_h1");
		shopPageAboutSetting.forItem.put("head_h1", foritem_head_h1);
		String foritem_head_h2 = request.getParameter("foritem_head_h2");
		shopPageAboutSetting.forItem.put("head_h2", foritem_head_h2);
		String foritem_stretch_h1 = request.getParameter("foritem_stretch_h1");
		shopPageAboutSetting.forItem.put("stretch_h1", foritem_stretch_h1);
		String foritem_stretch_description = request.getParameter("foritem_stretch_description");
		shopPageAboutSetting.forItem.put("stretch_description", foritem_stretch_description);
		
		shopPageAboutSetting.writeData();
		request.getSession().setAttribute("noti_success", new String[] {"Updated successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting/shop-page-about");
	}

}
