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

public class ContactMessage extends AbstractModel {
	protected String id;
	private boolean active;
	private String name;
	private String email;
	private String message;
	private Date submitTime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
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
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getSubmitTime() {
		return submitTime;
	}
	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}
	public ContactMessage() {
		super();
		this.tableName = "travel_contact_message";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		ContactMessage contactMessage = new ContactMessage();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			contactMessage.setId(rs.getString("id"));
			contactMessage.setActive(rs.getBoolean("active"));
			contactMessage.setName(rs.getString("name"));
			contactMessage.setEmail(rs.getString("email"));
			contactMessage.setMessage(rs.getString("message"));
			contactMessage.setSubmitTime(dateConvertion.toUtilDate(rs.getTimestamp("submit_time")));
			return contactMessage;
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
				sql += "			(id, active, name, email, message, submit_time) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET active=?, name=?, email=?, message=?, submit_time=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			
			if(isNew) {
				int i=0;
				stmt.setString(++i, this.id);
				stmt.setBoolean(++i, this.active);
				stmt.setString(++i, this.name);
				stmt.setString(++i, this.email);
				stmt.setString(++i, this.message);
				stmt.setTimestamp(++i, dateConvertion.toTimestamp(this.submitTime));
			}else {
				int i=0;
				stmt.setBoolean(++i, this.active);
				stmt.setString(++i, this.name);
				stmt.setString(++i, this.email);
				stmt.setString(++i, this.message);
				stmt.setTimestamp(++i, dateConvertion.toTimestamp(this.submitTime));
				stmt.setString(++i, this.id);
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
	public ArrayList<ContactMessage> toSelfList(ArrayList<Object> oArr){
		ArrayList<ContactMessage> arr = new ArrayList<ContactMessage>();
		for(Object o: oArr) {
			arr.add((ContactMessage) o);
		}
		return arr;
	}
	public ContactMessage find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (ContactMessage) o;
		}
	}
	public ContactMessage create(boolean active, String name, String email, String message, Date submitTime) {
		ContactMessage contactMessage = new ContactMessage();
		contactMessage.setId(UUID.randomUUID().toString());
		contactMessage.setActive(active);
		contactMessage.setName(name);
		contactMessage.setEmail(email);
		contactMessage.setMessage(message);
		contactMessage.setSubmitTime(submitTime);
		return (ContactMessage) contactMessage.save(true);
	}
	public ContactMessage update(boolean active, String name, String email, String message, Date submitTime) {
		this.setActive(active);
		this.setName(name);
		this.setEmail(email);
		this.setMessage(message);
		this.setSubmitTime(submitTime);
		return (ContactMessage) this.save(false);
	}
	public ArrayList<ContactMessage> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<ContactMessage> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<ContactMessage> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<ContactMessage> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
