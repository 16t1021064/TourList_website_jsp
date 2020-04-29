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
			return destination;
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
	
	public Destination create(String name, String thumbnail) {
		Destination destination = new Destination();
		destination.setId(UUID.randomUUID().toString());
		destination.setName(name);
		destination.setThumbnail(thumbnail);
		destination.save(true);
		return destination;
	}
	
	public Destination update(String name, String thumbnail) {
		this.setName(name);
		this.setThumbnail(thumbnail);
		this.save(false);
		return this;
	}
	
	public ArrayList<Destination> all(){
		ArrayList<Destination> arr = new ArrayList<Destination>();
		ResultSet rs = this.allRS();
		try {
			while(rs.next()) {
				arr.add((Destination)this.rowToObj(rs));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	
	@Override
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, name, thumbnail) ";
				sql += "    VALUES  (?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET name=?, thumbnail=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.name);
				stmt.setString(3, this.thumbnail);
			}else {
				stmt.setString(1, this.name);
				stmt.setString(2, this.thumbnail);
				stmt.setString(3, this.id);
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
	
}
