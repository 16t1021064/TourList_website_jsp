package com.van.travel.api.shop.tour.enquiry.process;

import java.util.Date;

import com.van.travel.api.common.dto.AbstractRequestData;
import com.van.travel.api.common.dto.CommonResponse;
import com.van.travel.api.common.process.AbstractProcess;
import com.van.travel.api.shop.tour.booking.dto.TourBookingRequest;
import com.van.travel.api.shop.tour.booking.dto.TourBookingResponse;
import com.van.travel.api.shop.tour.enquiry.dto.TourEnquiryRequest;
import com.van.travel.api.shop.tour.enquiry.dto.TourEnquiryResponse;
import com.van.travel.common.DateConvertion;
import com.van.travel.models.Booking;
import com.van.travel.models.Enquiry;
import com.van.travel.models.Tour;

public class TourEnquiryProcess extends AbstractProcess {

	@Override
	public CommonResponse process(AbstractRequestData abstractRequestData) {
		TourEnquiryRequest req = (TourEnquiryRequest) abstractRequestData;
		TourEnquiryResponse res = new TourEnquiryResponse();
		
		Tour tour = (new Tour()).find(req.tour_id);
		
		DateConvertion dateConvertion = new DateConvertion("MM/dd/yyyy");
		
		String tourId = tour.getId();
		boolean status = false;
		String name = req.name;
		String phone = req.phone;
		String email = req.email;
		String travelTime_text = req.travel_time;
		Date travelTime = dateConvertion.toUtilDate(travelTime_text);
		String countPeople_text = req.count_people;
		int countPeople;
		switch (countPeople_text) {
			case "1-4":
				countPeople = 4;
				break;
				
			case "5-9":
				countPeople = 9;
				break;
	
			default:
				countPeople = 10;
				break;
		}
		String note = req.note;
		Date submitTime = new Date();
		
		Enquiry enquiry = (new Enquiry()).create(tourId, status, name, phone, email, travelTime, countPeople, note, submitTime);
		
		res.id_enquiry = enquiry.getId();
		return new CommonResponse(200, "success", new String[] {}, res);
	}
	
}
