package com.van.travel.admin.controllers.tour;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.common.DateConvertion;
import com.van.travel.models.Activity;
import com.van.travel.models.Destination;
import com.van.travel.models.Itinerary;
import com.van.travel.models.Service;
import com.van.travel.models.Tour;
import com.van.travel.models.TourActivity;

/**
 * Servlet implementation class EditTourAdmin
 */
@WebServlet("/admin/tour/edit")
public class EditTourAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditTourAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<Destination> listDestination = (new Destination()).all();
		ArrayList<Activity> listActivity = (new Activity()).all();
		String id =  request.getParameter("id");
		Tour tour = (new Tour()).find(id);
		request.setAttribute("tour", tour);
		request.setAttribute("listDestination", listDestination);
		request.setAttribute("listActivity", listActivity);
		request.getRequestDispatcher("/Admin/tour-edit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String id =  request.getParameter("id");
		Tour tour = (new Tour()).find(id);
		
		DateConvertion dateConvertion = new DateConvertion("MM/dd/yyyy");
		
		String name = request.getParameter("name");
		String thumbnail = request.getParameter("thumbnail");
		String description = request.getParameter("description");
		String state = request.getParameter("state");
		String nation = request.getParameter("nation");
		String star_text = request.getParameter("star");
		int star = Integer.parseInt(star_text);
		String days_text = request.getParameter("days");
		int days = Integer.parseInt(days_text);
		String daysText = request.getParameter("days_text");
		String tourTime = request.getParameter("tour_time");
		String[] tourTimes = tourTime.split("[-]");
		Date beginTime = dateConvertion.toUtilDate(tourTimes[0].trim());
		Date endTime = dateConvertion.toUtilDate(tourTimes[1].trim());
		String oPrice_text =  request.getParameter("o_price");
		double oPrice = Double.parseDouble(oPrice_text);
		String pPrice_text =  request.getParameter("p_price");
		double pPrice = Double.parseDouble(pPrice_text);
		String minAge_text = request.getParameter("min_age");
		int minAge = Integer.parseInt(minAge_text);
		String maxPeople_text = request.getParameter("max_people");
		int maxPeople = Integer.parseInt(maxPeople_text);
		String registeredPeople_text = request.getParameter("registered_people");
		int registeredPeople = Integer.parseInt(registeredPeople_text);
		String detailText = request.getParameter("detail_text");
		String departureLocation = request.getParameter("departure_location");
		String departureTime_text = request.getParameter("departure_time");
		Date departureTime = (new DateConvertion("MM-dd-yyyy HH:mm:ss")).toUtilDate(departureTime_text.trim());
		String expectText = request.getParameter("expect_text");
		String destinationId = request.getParameter("destination_id");
		Tour newTour = tour.update(name, thumbnail, state, nation, description, star, days, daysText, beginTime, endTime, oPrice, pPrice, minAge, maxPeople, registeredPeople, detailText, departureLocation, departureTime, expectText, destinationId);
		for(TourActivity tourActivity : newTour.getTourActivities()) {
			tourActivity.delete();
		}
		for(String activityId : request.getParameterValues("activities[]")){
          (new TourActivity()).create(newTour.getId(), activityId);      
		}
		String[] itineraries_sequence = request.getParameterValues("itineraries_sequence[]");
		String[] itineraries_name = request.getParameterValues("itineraries_name[]");
		String[] itineraries_description = request.getParameterValues("itineraries_description[]");
		if(itineraries_sequence.length == itineraries_name.length && itineraries_name.length == itineraries_description.length) {
			for(Itinerary itinerary : newTour.getItineraries()) {
				itinerary.delete();
			}
			for(int i=0; i < itineraries_sequence.length; i=i+1) {
				(new Itinerary()).create(newTour.getId(), Integer.parseInt(itineraries_sequence[i]), itineraries_name[i], itineraries_description[i]);
			}
		}
		String[] services_status = request.getParameterValues("services_status[]");
		String[] services_name = request.getParameterValues("services_name[]");
		if(services_status.length == services_name.length) {
			for(Service service : newTour.getServices()) {
				service.delete();
			}
			for(int i=0; i < services_status.length; i=i+1) {
				boolean tempStatus = false;
				if(services_status[i].equals("1")) {
					tempStatus = true;
				}
				(new Service()).create(newTour.getId(), tempStatus, services_name[i]);
			}
		}
		response.sendRedirect("/travel/admin/tour/edit?id="+newTour.getId());
	}

}
