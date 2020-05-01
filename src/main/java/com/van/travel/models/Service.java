package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import com.van.travel.common.Database;

public class Service extends AbstractModel {
	protected String id;
	private String tourId;
	private boolean status;
	private String name;
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
	public Service() {
		super();
		this.tableName = "travel_service";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Service tourService = new Service();
		try {
			tourService.setId(rs.getString("id"));
			tourService.setTourId(rs.getString("tour_id"));
			tourService.setStatus(rs.getBoolean("status"));
			tourService.setName(rs.getString("name"));
			return tourService;
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
				sql += "			(id, tour_id, status, name) ";
				sql += "    VALUES  (?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET tour_id=?, status=?, name=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.tourId);
				stmt.setBoolean(3, this.status);
				stmt.setString(4, this.name);
			}else {
				stmt.setString(1, this.tourId);
				stmt.setBoolean(2, this.status);
				stmt.setString(3, this.name);
				stmt.setString(4, this.id);
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
	public ArrayList<Service> toSelfList(ArrayList<Object> oArr){
		ArrayList<Service> arr = new ArrayList<Service>();
		for(Object o: oArr) {
			arr.add((Service) o);
		}
		return arr;
	}
	public Service find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Service) o;
		}
	}
	public Service create(String tourId, boolean status, String name) {
		Service service = new Service();
		service.setId(UUID.randomUUID().toString());
		service.setTourId(tourId);
		service.setStatus(status);
		service.setName(name);
		return (Service) service.save(true);
	}
	public Service update(String tourId, boolean status, String name) {
		this.setTourId(tourId);
		this.setStatus(status);
		this.setName(name);
		return (Service) this.save(false);
	}
	public ArrayList<Service> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Service> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Service> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Service> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
