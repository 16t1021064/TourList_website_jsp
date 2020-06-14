package com.van.travel.web.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import com.van.travel.common.controllers.ShopController;
import com.van.travel.models.Tour;
import com.van.travel.models.setting.ShopPanelsSetting;
import com.van.travel.web.factories.TourFactory;

/**
 * Servlet implementation class TourDetailController
 */
@WebServlet("/tour")
public class TourDetailController extends ShopController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TourDetailController() {
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
		
		TourFactory tourFactory = new TourFactory();
		
		Tour tour = (new Tour()).find(id);
		request.setAttribute("tour", tour);
		
		ArrayList<Tour> relativeTours = tourFactory.getRelativeTours(tour.getId(), 2);
		request.setAttribute("relativeTours", relativeTours);
		
		ShopPanelsSetting shopPanelsSetting = new ShopPanelsSetting();
		request.setAttribute("shopPanelsSetting", shopPanelsSetting);
		
		request.getRequestDispatcher("/WEB-INF/Shop/tour-detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
