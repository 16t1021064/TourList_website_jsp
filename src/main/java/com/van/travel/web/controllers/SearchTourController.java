package com.van.travel.web.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.common.PaginationData;
import com.van.travel.common.controllers.AbstractController;
import com.van.travel.models.Activity;
import com.van.travel.models.Destination;
import com.van.travel.web.factories.ActivityFactory;
import com.van.travel.web.factories.DestinationFactory;
import com.van.travel.web.factories.SearchTourFactory;

import sun.management.HotspotClassLoadingMBean;

/**
 * Servlet implementation class SearchTourController
 */
@WebServlet("/tours")
public class SearchTourController extends AbstractController {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchTourController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String page_text = request.getParameter("page");
		int page;
		if(page_text == null) {
			page = 1;
		}else {
			page_text = page_text.trim();
			try {
				page = Integer.parseInt(page_text);
			}catch(Exception e) {
				page = 1;
			}
		}
			
		
		String q = request.getParameter("q");
		if(q == null) {
			q = "";
		}else {
			q = q.trim();
			if(q.equals("")) {
				q = null;
			}
		}
		
		String act = request.getParameter("act");
		if(act == null) {
			
		}else {
			act = act.trim();
			if(act.equals("")) {
				act = null;
			}
		}
		
		String des = request.getParameter("des");
		if(des == null) {
			
		}else {
			des = des.trim();
			if(des.equals("")) {
				des = null;
			}
		}
		
		String dur = request.getParameter("dur");
		if(dur == null) {
			
		}else {
			dur = dur.trim();
			try {
				Integer.parseInt(dur);
			}catch(Exception e) {
				dur = null;
			}
		}
		
		String date_text = request.getParameter("date");
		Date date;
		DateConvertion dateConvertion = new DateConvertion("yyyy-MM-dd");
		if(date_text == null) {
			date = null;
		}else {
			date_text = date_text.trim();
			if(date_text.equals("")) {
				date = null;
				date_text = null;
			}else{
				date = dateConvertion.toUtilDate(date_text);
			}
			
		}
		
		SearchTourFactory searchTourFactory = new SearchTourFactory();
		
		PaginationData dataTours = searchTourFactory.search(page, q, act, des, dur, date);
		
		request.setAttribute("dataTours", dataTours);
		
		DestinationFactory destinationFactory = new DestinationFactory();
			
		ArrayList<Destination> hotDestinations = destinationFactory.getHotDestinations(15);
		
		request.setAttribute("hotDestinations", hotDestinations);
		
		ActivityFactory activityFactory = new ActivityFactory();
		
		ArrayList<Activity> hotActivities = activityFactory.getHotActivities(15);
		
		request.setAttribute("hotActivities", hotActivities);
		
		request.setAttribute("filters", new Object[] {q, act, des, dur, date_text});
		
		request.getRequestDispatcher("Shop/tours.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
