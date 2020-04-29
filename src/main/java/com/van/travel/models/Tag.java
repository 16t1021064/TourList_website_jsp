package com.van.travel.models;

import java.sql.ResultSet;

public class Tag extends AbstractModel {
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
	public Tag() {
		super();
		this.tableName = "travel_tag";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Tag tag = new Tag();
		try {
			tag.setId(rs.getString("id"));
			tag.setName(rs.getString("name"));
			return tag;
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
