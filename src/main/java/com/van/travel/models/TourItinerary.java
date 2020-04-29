package com.van.travel.models;

import java.sql.ResultSet;

public class TourItinerary extends AbstractModel {
	protected String id;
	private String tourId;
	private String name;
	private String descriptionText;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTourId() {
		return tourId;
	}
	public void setTourId(String tourId) {
		this.tourId = tourId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescriptionText() {
		return descriptionText;
	}
	public void setDescriptionText(String descriptionText) {
		this.descriptionText = descriptionText;
	}
	public TourItinerary() {
		super();
		this.tableName = "travel_tour_itinerary";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		TourItinerary tourItinerary = new TourItinerary();
		try {
			tourItinerary.setId(rs.getString("id"));
			tourItinerary.setTourId(rs.getString("tour_id"));
			tourItinerary.setName(rs.getString("name"));
			tourItinerary.setDescriptionText(rs.getString("description_text"));
			return tourItinerary;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public Object find(String id) {
		ResultSet rs = this.findRS(id);
		if(rs == null) {
			return null;
		}else {
			return this.rowToObj(rs);
		}
	}
	
}
