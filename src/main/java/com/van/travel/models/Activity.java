package com.van.travel.models;

import java.sql.ResultSet;

public class Activity extends AbstractModel {
	protected String id;
	private String name;
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
	public Activity() {
		super();
		this.tableName = "travel_activity";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Activity activity = new Activity();
		try {
			activity.setId(rs.getString("id"));
			activity.setName(rs.getString("name"));
			return activity;
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
