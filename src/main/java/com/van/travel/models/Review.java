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

public class Review extends AbstractModel {
	protected String id;
	private String tourId;
	private String name;
	private String email;
	private String phone;
	private String content;
	private Date reviewTime;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReviewTime() {
		return reviewTime;
	}
	public void setReviewTime(Date reviewTime) {
		this.reviewTime = reviewTime;
	}
	public Review() {
		super();
		this.tableName = "travel_review";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Review review = new Review();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			review.setId(rs.getString("id"));
			review.setTourId(rs.getString("tour_id"));
			review.setName(rs.getString("name"));
			review.setEmail(rs.getString("email"));
			review.setPhone(rs.getString("phone"));
			review.setContent(rs.getString("content"));
			review.setReviewTime(dateConvertion.toUtilDate(rs.getTimestamp("review_time")));
			return review;
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
				sql += "			(id, tour_id, name, email, phone, content, review_time) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET tour_id=?, name=?, email=?, phone=?, content=?, review_time=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.tourId);
				stmt.setString(3, this.name);
				stmt.setString(4, this.email);
				stmt.setString(5, this.phone);
				stmt.setString(6, this.content);
				stmt.setTimestamp(7, dateConvertion.toTimestamp(this.reviewTime));
			}else {
				stmt.setString(1, this.tourId);
				stmt.setString(2, this.name);
				stmt.setString(3, this.email);
				stmt.setString(4, this.phone);
				stmt.setString(5, this.content);
				stmt.setTimestamp(6, dateConvertion.toTimestamp(this.reviewTime));
				stmt.setString(7, this.id);
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
	public ArrayList<Review> toSelfList(ArrayList<Object> oArr){
		ArrayList<Review> arr = new ArrayList<Review>();
		for(Object o: oArr) {
			arr.add((Review) o);
		}
		return arr;
	}
	public Review find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Review) o;
		}
	}
	public Review create(String tourId, String name, String email, String phone, String content, Date reviewTime) {
		Review review = new Review();
		review.setId(UUID.randomUUID().toString());
		review.setTourId(tourId);
		review.setName(name);
		review.setEmail(email);
		review.setPhone(phone);
		review.setContent(content);
		review.setReviewTime(reviewTime);
		return (Review) review.save(true);
	}
	public Review update(String tourId, String name, String email, String phone, String content, Date reviewTime) {
		this.setTourId(tourId);
		this.setName(name);
		this.setEmail(email);
		this.setPhone(phone);
		this.setContent(content);
		this.setReviewTime(reviewTime);
		return (Review) this.save(false);
	}
	public ArrayList<Review> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Review> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Review> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Review> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
