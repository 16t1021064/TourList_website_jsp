package com.van.travel.admin.controllers.banner;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Banner;
import com.van.travel.models.Blog;

@WebServlet("/admin/banner/edit")
public class EditBannerAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditBannerAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		Banner banner = (new Banner()).find(id);
		request.setAttribute("banner", banner);
		request.getRequestDispatcher("/WEB-INF/Admin/banner-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		Banner banner = (new Banner()).find(id);
		
		String type = request.getParameter("type");
		String textH1 = request.getParameter("text_h1");
		String textH2 = request.getParameter("text_h2");
		String textH3 = request.getParameter("text_h3");
		String image = request.getParameter("image");
		String link = request.getParameter("link");
		String linkLabel = request.getParameter("link_label");
		String active_text = request.getParameter("active");
		boolean active;
		if(active_text.equals("1")) {
			active = true;
		}else {
			active = false;
		}
		String priority_text = request.getParameter("priority");
		int priority = Integer.parseInt(priority_text);
		
		Banner banner2 = banner.update(type, textH1, textH2, textH3, image, link, linkLabel, active, priority);
		
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/banner/edit?id="+banner2.getId());
	}

}
