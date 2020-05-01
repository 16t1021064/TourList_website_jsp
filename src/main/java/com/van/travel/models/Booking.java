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
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, tour_id,  status, name, phone, email, count_people, note, submit_time) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET tour_id=?, status=?, name=?, phone=?, email=?, count_people=?, note=?, submit_time=? ";
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
				stmt.setInt(7, this.countPeople);
				stmt.setString(8, this.note);
				stmt.setTimestamp(9, dateConvertion.toTimestamp(this.submitTime));
			}else {
				stmt.setString(1, this.tourId);
				stmt.setBoolean(2, this.status);
				stmt.setString(3, this.name);
				stmt.setString(4, this.phone);
				stmt.setString(5, this.email);
				stmt.setInt(6, this.countPeople);
				stmt.setString(7, this.note);
				stmt.setTimestamp(8, dateConvertion.toTimestamp(this.submitTime));
				stmt.setString(9, this.id);
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
	public ArrayList<Booking> toSelfList(ArrayList<Object> oArr){
		ArrayList<Booking> arr = new ArrayList<Booking>();
		for(Object o: oArr) {
			arr.add((Booking) o);
		}
		return arr;
	}
	public Booking find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Booking) o;
		}
	}
	public Booking create(String tourId, boolean status, String name, String phone, String email, int countPeople, String note, Date submitTime) {
		Booking booking = new Booking();
		booking.setId(UUID.randomUUID().toString());
		booking.setTourId(tourId);
		booking.setStatus(status);
		booking.setName(name);
		booking.setPhone(phone);
		booking.setEmail(email);
		booking.setCountPeople(countPeople);
		booking.setNote(note);
		booking.setSubmitTime(submitTime);
		return (Booking) booking.save(true);
	}
	public Booking update(String tourId, boolean status, String name, String phone, String email, int countPeople, String note, Date submitTime) {
		this.setTourId(tourId);
		this.setStatus(status);
		this.setName(name);
		this.setPhone(phone);
		this.setEmail(email);
		this.setCountPeople(countPeople);
		this.setNote(note);
		this.setSubmitTime(submitTime);
		return (Booking) this.save(false);
	}
	public ArrayList<Booking> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Booking> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Booking> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Booking> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
