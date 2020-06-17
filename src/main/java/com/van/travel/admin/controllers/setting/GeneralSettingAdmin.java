package com.van.travel.admin.controllers.setting;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Tag;
import com.van.travel.models.setting.FooterSetting;
import com.van.travel.models.setting.InfosSetting;

/**
 * Servlet implementation class GeneralSettingAdmin
 */
@WebServlet("/admin/setting")
public class GeneralSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GeneralSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		InfosSetting infosSetting = new InfosSetting();
		request.setAttribute("infosSetting", infosSetting);
		FooterSetting footerSetting = new FooterSetting();
		request.setAttribute("footerSetting", footerSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-general.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String type_setting = request.getParameter("type_setting");
		
		switch (type_setting) {
		case "shop_infos":
			InfosSetting infosSetting = new InfosSetting();
			String shop_name = request.getParameter("shop_name");
			if(!shop_name.isEmpty()) {
				infosSetting.data.put("shop_name", shop_name);
			}
			String shop_logo = request.getParameter("shop_logo");
			if(!shop_logo.isEmpty()) {
				infosSetting.data.put("shop_logo", shop_logo);
			}
			String shop_email = request.getParameter("shop_email");
			if(!shop_email.isEmpty()) {
				infosSetting.data.put("shop_email", shop_email);
			}
			String shop_phone = request.getParameter("shop_phone");
			if(!shop_phone.isEmpty()) {
				infosSetting.data.put("shop_phone", shop_phone);
			}
			String shop_address = request.getParameter("shop_address");
			if(!shop_phone.isEmpty()) {
				infosSetting.data.put("shop_address", shop_address);
			}
			String shop_media_fb = request.getParameter("shop_media_fb");
//			if(!shop_media_fb.isEmpty()) {
				infosSetting.data.put("shop_media_fb", shop_media_fb);
//			}
			String shop_media_yt = request.getParameter("shop_media_yt");
//			if(!shop_media_yt.isEmpty()) {
				infosSetting.data.put("shop_media_yt", shop_media_yt);
//			}
			String shop_media_ig = request.getParameter("shop_media_ig");
//			if(!shop_media_ig.isEmpty()) {
				infosSetting.data.put("shop_media_ig", shop_media_ig);
//			}
			String shop_media_tw = request.getParameter("shop_media_tw");
//			if(!shop_media_tw.isEmpty()) {
				infosSetting.data.put("shop_media_tw", shop_media_tw);
//			}
			infosSetting.writeData();
			break;
			
		case "fe_footer":
			FooterSetting footerSetting = new FooterSetting();
			String description = request.getParameter("description");
			if(!description.isEmpty()) {
				footerSetting.data.put("description", description);
			}
			String[] awards = request.getParameterValues("awards[]");
			if(awards == null) {
				awards = new String[] {};
			}
			footerSetting.setAwards(awards);
			footerSetting.writeData();
			break;

		default:
			break;
		}
		request.getSession().setAttribute("noti_success", new String[] {"Updated successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting");
	}

}
