package com.van.travel.web.views;

import java.util.ArrayList;

import com.van.travel.models.Destination;

public class HeaderView {
	
	public ArrayList<Destination> destinations;
	
	public HeaderView() {
		this.destinations = (new Destination()).all();
	}
	
}
