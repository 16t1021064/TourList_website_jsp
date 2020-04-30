package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import com.van.travel.common.Database;

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
	@Override
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, tour_id, activity_id) ";
				sql += "    VALUES  (?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET tour_id=?, activity_id=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.tourId);
				stmt.setString(3, this.activityId);
			}else {
				stmt.setString(1, this.tourId);
				stmt.setString(2, this.activityId);
				stmt.setString(3, this.id);
			}
			
			stmt.executeUpdate();
			return this;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public int delete() {
		return this.delete(this.id);
	}
	public ArrayList<TourActivity> toSelfList(ArrayList<Object> oArr){
		ArrayList<TourActivity> arr = new ArrayList<TourActivity>();
		for(Object o: oArr) {
			arr.add((TourActivity) o);
		}
		return arr;
	}
	public TourActivity create(String tourId, String activityId) {
		TourActivity tourActivity = new TourActivity();
		tourActivity.setId(UUID.randomUUID().toString());
		tourActivity.setTourId(tourId);
		tourActivity.setActivityId(activityId);
		tourActivity.save(true);
		return tourActivity;
	}
	public TourActivity update(String tourId, String activityId) {
		this.setTourId(tourId);
		this.setActivityId(activityId);
		this.save(false);
		return this;
	}
	public ArrayList<TourActivity> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<TourActivity> all(ArrayList<Object[]> whereConditions){
		ArrayList<TourActivity> arr = new ArrayList<TourActivity>();
		ResultSet rs = this.allRS(whereConditions);
		try {
			while(rs.next()) {
				arr.add((TourActivity)this.rowToObj(rs));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	
}
