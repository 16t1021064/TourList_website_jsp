package com.van.travel.web.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.ShopController;
import com.van.travel.models.ServiceItem;
import com.van.travel.models.ServicePanel;
import com.van.travel.web.factories.ServiceItemFactory;
import com.van.travel.web.factories.ServicePanelFactory;

/**
 * Servlet implementation class ServicesController
 */
@WebServlet("/services")
public class ServicesController extends ShopController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServicesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		ServicePanelFactory servicePanelFactory = new ServicePanelFactory();
		ArrayList<ServicePanel> listServicePanel = servicePanelFactory.getServicePanels(4);
		request.setAttribute("listServicePanel", listServicePanel);
		
		ServiceItemFactory serviceItemFactory = new ServiceItemFactory();
		ArrayList<ServiceItem> listServiceItem = serviceItemFactory.getServiceItems(6);
		request.setAttribute("listServiceItem", listServiceItem);
		
		request.getRequestDispatcher("/WEB-INF/Shop/services.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
