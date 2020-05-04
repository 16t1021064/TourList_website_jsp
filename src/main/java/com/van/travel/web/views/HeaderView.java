package com.van.travel.web.views;

import java.util.ArrayList;

import com.van.travel.models.Destination;

public class HeaderView {
	
	public ArrayList<Destination> destinations;
	
	public HeaderView() {
		Destination tempDestination = new Destination();
		this.destinations = tempDestination.all();
	}
	
}
