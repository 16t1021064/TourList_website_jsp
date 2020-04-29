package com.van.travel.models;

import java.sql.ResultSet;
import java.util.Date;

import com.van.travel.common.DateConvertion;

public class Enquiry extends AbstractModel {
	protected String id;
	private String tourId;
	private boolean status;
	private String name;
	private String phone;
	private String email;
	private Date travelTime;
	private int countPeople;
	private String note;
	private Date submitTime;
	
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getTravelTime() {
		return travelTime;
	}
	public void setTravelTime(Date travelTime) {
		this.travelTime = travelTime;
	}
	public int getCountPeople() {
		return countPeople;
	}
	public void setCountPeople(int countPeople) {
		this.countPeople = countPeople;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Date getSubmitTime() {
		return submitTime;
	}
	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}
	public Enquiry() {
		super();
		this.tableName = "travel_enquiry";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Enquiry enquiry = new Enquiry();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			enquiry.setId(rs.getString("id"));
			enquiry.setTourId(rs.getString("tour_id"));
			enquiry.setStatus(rs.getBoolean("status"));
			enquiry.setName(rs.getString("name"));
			enquiry.setPhone(rs.getString("phone"));
			enquiry.setEmail(rs.getString("email"));
			enquiry.setTravelTime(dateConvertion.toUtilDate(rs.getTimestamp("travel_time")));
			enquiry.setCountPeople(rs.getInt("count_people"));
			enquiry.setNote(rs.getString("note"));
			enquiry.setSubmitTime(dateConvertion.toUtilDate(rs.getTimestamp("submit_time")));
			return enquiry;
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
