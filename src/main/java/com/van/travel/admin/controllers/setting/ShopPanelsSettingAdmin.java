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
import com.van.travel.models.setting.ShopPageToursSetting;
import com.van.travel.models.setting.ShopPanelsSetting;

/**
 * Servlet implementation class ShopPanelsSettingAdmin
 */
@WebServlet("/admin/setting/shop-panels")
public class ShopPanelsSettingAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopPanelsSettingAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPanelsSetting shopPanelsSetting = new ShopPanelsSetting();
		request.setAttribute("shopPanelsSetting", shopPanelsSetting);
		
		request.getRequestDispatcher("/WEB-INF/Admin/setting-shop-panels.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ShopPanelsSetting shopPanelsSetting = new ShopPanelsSetting();
		
		String actionRequest = request.getParameter("action_request");
		switch (actionRequest) {
		case "search_tour":
			while(true) {
				String title_h1 = request.getParameter("title_h1");
				shopPanelsSetting.searchTour.put("title_h1", title_h1);
				String label_key = request.getParameter("label_key");
				shopPanelsSetting.searchTour.put("label_key", label_key);
				String label_act = request.getParameter("label_act");
				shopPanelsSetting.searchTour.put("label_act", label_act);
				String label_des = request.getParameter("label_des");
				shopPanelsSetting.searchTour.put("label_des", label_des);
				String label_dur = request.getParameter("label_dur");
				shopPanelsSetting.searchTour.put("label_dur", label_dur);
				String label_dat = request.getParameter("label_dat");
				shopPanelsSetting.searchTour.put("label_dat", label_dat);
				String label_submit = request.getParameter("label_submit");
				shopPanelsSetting.searchTour.put("label_submit", label_submit);
				String select_any = request.getParameter("select_any");
				shopPanelsSetting.searchTour.put("select_any", select_any);	
				break;
			}
			break;
			
		case "benefit":
			while(true) {
				String title_h1 = request.getParameter("title_h1");
				shopPanelsSetting.benefit.put("title_h1", title_h1);
				String[] list_icon_list = request.getParameterValues("list_icon[]");
				String[] list_text_list = request.getParameterValues("list_text[]");
				if(list_icon_list.length == list_text_list.length) {
					JSONArray jarr = new JSONArray();
					for(int i=0; i< list_icon_list.length; i=i+1) {
						JSONObject jobj = new JSONObject();
						jobj.put("icon", list_icon_list[i]);
						jobj.put("text", list_text_list[i]);
						jarr.put(jobj);
					}
					shopPanelsSetting.benefit.put("list", jarr);
				}
				break;
			}
			break;
			
		case "support":
			while(true) {
				String title_h1 = request.getParameter("title_h1");
				shopPanelsSetting.support.put("title_h1", title_h1);
				String description = request.getParameter("description");
				shopPanelsSetting.support.put("description", description);
				String phone = request.getParameter("phone");
				shopPanelsSetting.support.put("phone", phone);
				String email = request.getParameter("email");
				shopPanelsSetting.support.put("email", email);
				String bg = request.getParameter("bg");
				shopPanelsSetting.support.put("bg", bg);
				break;
			}
			break;
			
		case "tour":
			while(true) {
				String prefix_price = request.getParameter("prefix_price");
				shopPanelsSetting.tour.put("prefix_price", prefix_price);
				String availability = request.getParameter("availability");
				shopPanelsSetting.tour.put("availability", availability);
				String reviews = request.getParameter("reviews");
				shopPanelsSetting.tour.put("reviews", reviews);
				String btn_view = request.getParameter("btn_view");
				shopPanelsSetting.tour.put("btn_view", btn_view);
				break;
			}
			break;

		default:
			System.out.println(5);
			break;
		}
		
		shopPanelsSetting.writeData();
		request.getSession().setAttribute("noti_success", new String[] {"Updated successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/setting/shop-panels");
	}

}
