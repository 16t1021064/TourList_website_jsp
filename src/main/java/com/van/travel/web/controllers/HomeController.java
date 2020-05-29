package com.van.travel.web.controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.controllers.ShopController;
import com.van.travel.models.Activity;
import com.van.travel.models.Banner;
import com.van.travel.models.Blog;
import com.van.travel.models.Destination;
import com.van.travel.models.Tour;
import com.van.travel.web.factories.ActivityFactory;
import com.van.travel.web.factories.BannerFactory;
import com.van.travel.web.factories.BlogFactory;
import com.van.travel.web.factories.DestinationFactory;
import com.van.travel.web.factories.SearchBlogFactory;
import com.van.travel.web.factories.TourFactory;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("")
public class HomeController extends ShopController {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public HomeController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		TourFactory tourFactory = new TourFactory();
		DestinationFactory destinationFactory = new DestinationFactory();
		ActivityFactory activityFactory = new ActivityFactory();
//		BlogFactory blogFactory = new BlogFactory();
		SearchBlogFactory searchBlogFactory = new SearchBlogFactory();
		BannerFactory bannerFactory = new BannerFactory();
		
		ArrayList<Tour> listHotTours = tourFactory.getHotTours(8);
		request.setAttribute("listHotTours", listHotTours);
		
		ArrayList<Destination> listHotDestinations = destinationFactory.getHotDestinations(5);
		request.setAttribute("listHotDestinations", listHotDestinations);
		
		ArrayList<Activity> listHotActivities = activityFactory.getHotActivities(8);
		request.setAttribute("listHotActivities", listHotActivities);
		
		ArrayList<Blog> listHotBlogs = searchBlogFactory.searchArr(1, 4, null, null, null);
		request.setAttribute("listHotBlogs", listHotBlogs);
		
		ArrayList<Destination> filterHotDestinations = destinationFactory.getHotDestinations(15);
		request.setAttribute("filterHotDestinations", filterHotDestinations);
		
		ArrayList<Activity> filterHotActivities = activityFactory.getHotActivities(15);
		request.setAttribute("filterHotActivities", filterHotActivities);
		
		ArrayList<Banner> banners = bannerFactory.getBanners(3);
		request.setAttribute("banners", banners);
		
		request.getRequestDispatcher("/WEB-INF/Shop/home.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
