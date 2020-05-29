package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import com.van.travel.common.Database;

public class ServicePanel extends AbstractModel {
	protected String id;
	private String textH1;
	private String textH2;
	private String description;
	private String image;
	private int priority;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTextH1() {
		return textH1;
	}
	public void setTextH1(String textH1) {
		this.textH1 = textH1;
	}
	public String getTextH2() {
		return textH2;
	}
	public void setTextH2(String textH2) {
		this.textH2 = textH2;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
		this.priority = priority;
	}
	public ServicePanel() {
		super();
		this.tableName = "travel_service_panel";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		ServicePanel service = new ServicePanel();
		try {
			service.setId(rs.getString("id"));
			service.setTextH1(rs.getString("text_h1"));
			service.setTextH2(rs.getString("text_h2"));
			service.setDescription(rs.getString("description"));
			service.setImage(rs.getString("image"));
			service.setPriority(rs.getInt("priority"));
			return service;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	@Override
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, text_h1, text_h2, description, image, priority) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET text_h1=?, text_h2=?, description=?, image=?, priority=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				int i = 0 ;
				stmt.setString(++i, this.id);
				stmt.setString(++i, this.textH1);
				stmt.setString(++i, this.textH2);
				stmt.setString(++i, this.description);
				stmt.setString(++i, this.image);
				stmt.setInt(++i, this.priority);
			}else {
				int i = 0 ;
				stmt.setString(++i, this.textH1);
				stmt.setString(++i, this.textH2);
				stmt.setString(++i, this.description);
				stmt.setString(++i, this.image);
				stmt.setInt(++i, this.priority);
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
	public ArrayList<ServicePanel> toSelfList(ArrayList<Object> oArr){
		ArrayList<ServicePanel> arr = new ArrayList<ServicePanel>();
		for(Object o: oArr) {
			arr.add((ServicePanel) o);
		}
		return arr;
	}
	public ServicePanel find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (ServicePanel) o;
		}
	}
	public ServicePanel create(String textH1, String textH2, String description, String image, int priority) {
		ServicePanel service = new ServicePanel();
		service.setId(UUID.randomUUID().toString());
		service.setTextH1(textH1);
		service.setTextH2(textH2);
		service.setDescription(description);
		service.setImage(image);
		service.setPriority(priority);
		return (ServicePanel) service.save(true);
	}
	public ServicePanel update(String textH1, String textH2, String description, String image, int priority) {
		this.setTextH1(textH1);
		this.setTextH2(textH2);
		this.setDescription(description);
		this.setImage(image);
		this.setPriority(priority);
		return (ServicePanel) this.save(false);
	}
	public ArrayList<ServicePanel> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<ServicePanel> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<ServicePanel> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<ServicePanel> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
