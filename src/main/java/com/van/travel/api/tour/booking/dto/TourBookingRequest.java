package com.van.travel.api.tour.booking.dto;

import com.van.travel.api.common.dto.AbstractRequestData;

public class TourBookingRequest extends AbstractRequestData {
	public String tour_id;
	public String name;
	public String email;
	public String phone;
	public String note;
	public String count_people;
}
