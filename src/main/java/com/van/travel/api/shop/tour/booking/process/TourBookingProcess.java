package com.van.travel.api.shop.tour.booking.process;

import java.util.Date;

import com.van.travel.api.common.dto.AbstractRequestData;
import com.van.travel.api.common.dto.CommonResponse;
import com.van.travel.api.common.process.AbstractProcess;
import com.van.travel.api.shop.tour.booking.dto.TourBookingRequest;
import com.van.travel.api.shop.tour.booking.dto.TourBookingResponse;
import com.van.travel.models.Booking;
import com.van.travel.models.Tour;

public class TourBookingProcess extends AbstractProcess {

	@Override
	public CommonResponse process(AbstractRequestData abstractRequestData) {
		TourBookingRequest req = (TourBookingRequest) abstractRequestData;
		TourBookingResponse res = new TourBookingResponse();
		
		Tour tour = (new Tour()).find(req.tour_id);
		
		String tourId = tour.getId();
		boolean status = false;
		String name = req.name;
		String phone = req.phone;
		String email = req.email;
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
		
		Booking booking = (new Booking()).create(tourId, status, name, phone, email, countPeople, note, submitTime);
		
		res.id_booking = booking.getId();
		return new CommonResponse(200, "success", new String[] {}, res);
	}

}
