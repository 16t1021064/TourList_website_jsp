package com.van.travel.admin.controllers.servicepanel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.AdminController;
import com.van.travel.models.Banner;
import com.van.travel.models.ServicePanel;

/**
 * Servlet implementation class CreateServicePanelAdmin
 */
@WebServlet("/admin/service-panel/create")
public class CreateServicePanelAdmin extends AdminController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateServicePanelAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		request.getRequestDispatcher("/WEB-INF/Admin/service-panel-create.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String textH1 = request.getParameter("text_h1");
		String textH2 = request.getParameter("text_h2");
		String description = request.getParameter("description");
		String image = request.getParameter("image");
		String priority_text = request.getParameter("priority");
		int priority = Integer.parseInt(priority_text);
		
		ServicePanel servicePanel = (new ServicePanel()).create(textH1, textH2, description, image, priority);
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/service-panel/edit?id="+servicePanel.getId());
	}

}