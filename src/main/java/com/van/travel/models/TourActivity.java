package com.van.travel.models;

import java.sql.ResultSet;

public class TourActivity extends AbstractModel {
	protected String id;
	private String tourId;
	private String activityId;
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
	public String getActivityId() {
		return activityId;
	}
	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}
	public TourActivity() {
		super();
		this.tableName = "travel_tour_activity";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		TourActivity tourActivity = new TourActivity();
		try {
			tourActivity.setId(rs.getString("id"));
			tourActivity.setTourId(rs.getString("tour_id"));
			tourActivity.setActivityId(rs.getString("activity_id"));
			return tourActivity;
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
