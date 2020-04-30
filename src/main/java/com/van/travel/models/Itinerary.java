package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import com.van.travel.common.Database;

public class Itinerary extends AbstractModel {
	protected String id;
	private String tourId;
	private int index;
	private String name;
	private String descriptionText;
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
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getDescriptionText() {
		return descriptionText;
	}
	public void setDescriptionText(String descriptionText) {
		this.descriptionText = descriptionText;
	}
	public Itinerary() {
		super();
		this.tableName = "travel_itinerary";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Itinerary tourItinerary = new Itinerary();
		try {
			tourItinerary.setId(rs.getString("id"));
			tourItinerary.setTourId(rs.getString("tour_id"));
			tourItinerary.setIndex(rs.getInt("index"));
			tourItinerary.setName(rs.getString("name"));
			tourItinerary.setDescriptionText(rs.getString("description_text"));
			return tourItinerary;
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
				sql += "			(id, tour_id, index, name, description_text) ";
				sql += "    VALUES  (?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET tour_id=?, index=?, name=?, description_text=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.tourId);
				stmt.setInt(3, this.index);
				stmt.setString(4, this.name);
				stmt.setString(5, this.descriptionText);
			}else {
				stmt.setString(1, this.tourId);
				stmt.setInt(2, this.index);
				stmt.setString(3, this.name);
				stmt.setString(4, this.descriptionText);
				stmt.setString(5, this.id);
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
	public ArrayList<Itinerary> toSelfList(ArrayList<Object> oArr){
		ArrayList<Itinerary> arr = new ArrayList<Itinerary>();
		for(Object o: oArr) {
			arr.add((Itinerary) o);
		}
		return arr;
	}
	public Itinerary find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Itinerary) o;
		}
	}
	public Itinerary create(String tourId, int index, String name, String descriptionText) {
		Itinerary tourItinerary = new Itinerary();
		tourItinerary.setId(UUID.randomUUID().toString());
		tourItinerary.setTourId(tourId);
		tourItinerary.setIndex(index);
		tourItinerary.setName(name);
		tourItinerary.setDescriptionText(descriptionText);
		return (Itinerary) tourItinerary.save(true);
	}
	public Itinerary update(String tourId, int index, String name, String descriptionText) {
		this.setTourId(tourId);
		this.setIndex(index);
		this.setName(name);
		this.setDescriptionText(descriptionText);
		return (Itinerary) this.save(false);
	}
	public ArrayList<Itinerary> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Itinerary> all(ArrayList<Object[]> whereConditions){
		ArrayList<Itinerary> arr = this.toSelfList(this.allObject(whereConditions));
		return arr;
	}
}
