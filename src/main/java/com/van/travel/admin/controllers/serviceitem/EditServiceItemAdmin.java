package com.van.travel.admin.controllers.serviceitem;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Banner;
import com.van.travel.models.ServiceItem;

/**
 * Servlet implementation class EditServiceItemAdmin
 */
@WebServlet("/admin/service-item/edit")
public class EditServiceItemAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServiceItemAdmin() {
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
		ServiceItem serviceItem = (new ServiceItem()).find(id);
		request.setAttribute("serviceItem", serviceItem);
		request.getRequestDispatcher("/WEB-INF/Admin/service-item-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		ServiceItem serviceItem = (new ServiceItem()).find(id);
		
		String title = request.getParameter("title");
		String icon = request.getParameter("icon");
		String description = request.getParameter("description");
		String active_text = request.getParameter("active");
		boolean active;
		if(active_text.equals("1")) {
			active = true;
		}else {
			active = false;
		}
		String priority_text = request.getParameter("priority");
		int priority = Integer.parseInt(priority_text);
		
		ServiceItem serviceItem2 = serviceItem.update(title, icon, description, active, priority);
		request.getSession().setAttribute("noti_success", new String[] {"Updated successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/service-item/edit?id="+serviceItem2.getId());
	}

}
