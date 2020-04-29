package com.van.travel.models;

import java.sql.ResultSet;
import java.util.Date;

import com.van.travel.common.DateConvertion;

public class Booking extends AbstractModel {
	protected String id;
	private String tourId;
	private boolean status;
	private String name;
	private String phone;
	private String email;
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
	public Booking() {
		super();
		this.tableName = "travel_booking";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Booking booking = new Booking();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			booking.setId(rs.getString("id"));
			booking.setTourId(rs.getString("tour_id"));
			booking.setStatus(rs.getBoolean("status"));
			booking.setName(rs.getString("name"));
			booking.setPhone(rs.getString("phone"));
			booking.setEmail(rs.getString("email"));
			booking.setCountPeople(rs.getInt("count_people"));
			booking.setNote(rs.getString("note"));
			booking.setSubmitTime(dateConvertion.toUtilDate(rs.getTimestamp("submit_time")));
			return booking;
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
