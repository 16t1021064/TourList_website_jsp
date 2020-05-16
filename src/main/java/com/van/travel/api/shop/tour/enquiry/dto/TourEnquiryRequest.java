package com.van.travel.api.shop.tour.enquiry.dto;

import com.van.travel.api.common.dto.AbstractRequestData;

public class TourEnquiryRequest extends AbstractRequestData {
	public String tour_id;
	public String name;
	public String email;
	public String phone;
	public String travel_time;
	public String note;
	public String count_people;
}