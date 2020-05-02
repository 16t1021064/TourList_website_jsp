package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import com.van.travel.common.Database;
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
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, tour_id,  status, name, phone, email, travel_time, count_people, note, submit_time) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET tour_id=?, status=?, name=?, phone=?, email=?, travel_time=?, count_people=?, note=?, submit_time=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.tourId);
				stmt.setBoolean(3, this.status);
				stmt.setString(4, this.name);
				stmt.setString(5, this.phone);
				stmt.setString(6, this.email);
				stmt.setTimestamp(7, dateConvertion.toTimestamp(this.travelTime));
				stmt.setInt(8, this.countPeople);
				stmt.setString(9, this.note);
				stmt.setTimestamp(10, dateConvertion.toTimestamp(this.submitTime));
			}else {
				stmt.setString(1, this.tourId);
				stmt.setBoolean(2, this.status);
				stmt.setString(3, this.name);
				stmt.setString(4, this.phone);
				stmt.setString(5, this.email);
				stmt.setTimestamp(6, dateConvertion.toTimestamp(this.travelTime));
				stmt.setInt(7, this.countPeople);
				stmt.setString(8, this.note);
				stmt.setTimestamp(9, dateConvertion.toTimestamp(this.submitTime));
				stmt.setString(10, this.id);
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
	public ArrayList<Enquiry> toSelfList(ArrayList<Object> oArr){
		ArrayList<Enquiry> arr = new ArrayList<Enquiry>();
		for(Object o: oArr) {
			arr.add((Enquiry) o);
		}
		return arr;
	}
	public Enquiry find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Enquiry) o;
		}
	}
	public Enquiry create(String tourId, boolean status, String name, String phone, String email, Date travelTime, int countPeople, String note, Date submitTime) {
		Enquiry enquiry = new Enquiry();
		enquiry.setId(UUID.randomUUID().toString());
		enquiry.setTourId(tourId);
		enquiry.setStatus(status);
		enquiry.setName(name);
		enquiry.setPhone(phone);
		enquiry.setEmail(email);
		enquiry.setTravelTime(travelTime);
		enquiry.setCountPeople(countPeople);
		enquiry.setNote(note);
		enquiry.setSubmitTime(submitTime);
		return (Enquiry) enquiry.save(true);
	}
	public Enquiry update(String tourId, boolean status, String name, String phone, String email, Date travelTime, int countPeople, String note, Date submitTime) {
		this.setTourId(tourId);
		this.setStatus(status);
		this.setName(name);
		this.setPhone(phone);
		this.setEmail(email);
		this.setTravelTime(travelTime);
		this.setCountPeople(countPeople);
		this.setNote(note);
		this.setSubmitTime(submitTime);
		return (Enquiry) this.save(false);
	}
	public ArrayList<Enquiry> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Enquiry> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Enquiry> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Enquiry> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
