package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import com.van.travel.common.Database;

public class Destination extends AbstractModel {
	protected String id;
	private String name;
	private String thumbnail;
	private String thumbnail600x600;
	
	private int tourCount;
	
	
	
	public String getThumbnail600x600() {
		return thumbnail600x600;
	}
	public void setThumbnail600x600(String thumbnail600x600) {
		this.thumbnail600x600 = thumbnail600x600;
	}
	public int getTourCount() {
		return tourCount;
	}
	public void setTourCount(int tourCount) {
		this.tourCount = tourCount;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public Destination() {
		super();
		this.tableName = "travel_destination";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Destination destination = new Destination();
		try {
			destination.setId(rs.getString("id"));
			destination.setName(rs.getString("name"));
			destination.setThumbnail(rs.getString("thumbnail"));
			destination.setThumbnail600x600(rs.getString("thumbnail600x600"));
			return destination;
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
				sql += "			(id, name, thumbnail, thumbnail600x600) ";
				sql += "    VALUES  (?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET name=?, thumbnail=?, thumbnail600x600=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.name);
				stmt.setString(3, this.thumbnail);
				stmt.setString(4, this.thumbnail600x600);
			}else {
				stmt.setString(1, this.name);
				stmt.setString(2, this.thumbnail);
				stmt.setString(3, this.thumbnail600x600);
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
	public ArrayList<Destination> toSelfList(ArrayList<Object> oArr){
		ArrayList<Destination> arr = new ArrayList<Destination>();
		for(Object o: oArr) {
			arr.add((Destination) o);
		}
		return arr;
	}
	public Destination find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Destination) o;
		}
	}
	public Destination create(String name, String thumbnail, String thumbnail600x600) {
		Destination destination = new Destination();
		destination.setId(UUID.randomUUID().toString());
		destination.setName(name);
		destination.setThumbnail(thumbnail);
		destination.setThumbnail600x600(thumbnail600x600);
		return (Destination) destination.save(true);
	}
	public Destination update(String name, String thumbnail, String thumbnail600x600) {
		this.setName(name);
		this.setThumbnail(thumbnail);
		this.setThumbnail600x600(thumbnail600x600);
		return (Destination) this.save(false);
	}
	public ArrayList<Destination> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Destination> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Destination> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Destination> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
