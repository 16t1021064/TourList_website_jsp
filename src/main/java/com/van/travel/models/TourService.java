package com.van.travel.models;

import java.sql.ResultSet;

public class TourService extends AbstractModel {
	protected String id;
	private String tourId;
	private boolean status;
	private String name;
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
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public TourService() {
		super();
		this.tableName = "travel_tour_service";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		TourService tourService = new TourService();
		try {
			tourService.setId(rs.getString("id"));
			tourService.setTourId(rs.getString("tour_id"));
			tourService.setStatus(rs.getBoolean("status"));
			tourService.setName(rs.getString("name"));
			return tourService;
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
