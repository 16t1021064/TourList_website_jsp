package com.van.travel.admin.controllers.servicepanel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.models.Banner;
import com.van.travel.models.ServicePanel;

/**
 * Servlet implementation class DeleteServicePanelAdmin
 */
@WebServlet("/admin/service-panel/delete")
public class DeleteServicePanelAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServicePanelAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		ServicePanel servicePanel = (new ServicePanel()).find(id);
		servicePanel.delete();
		request.getSession().setAttribute("noti_success", new String[] {"Deleted successfully"});
		response.sendRedirect(request.getAttribute("sitePath")+"/admin/service-panel");
	}

}
