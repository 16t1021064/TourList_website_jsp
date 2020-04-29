package com.van.travel.models;

import java.sql.ResultSet;
import java.util.Date;

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
	public Object find(String id) {
		ResultSet rs = this.findRS(id);
		if(rs == null) {
			return null;
		}else {
			return this.rowToObj(rs);
		}
	}
	
}
