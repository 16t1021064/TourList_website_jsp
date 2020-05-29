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

public class ServiceItem extends AbstractModel {
	
	protected String id;
	private String title;;
	private String icon;
	private String description;
	private boolean active;
	private int priority;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}

	public ServiceItem() {
		super();
		this.tableName = "travel_service_item";
	}

	@Override
	public Object rowToObj(ResultSet rs) {
		ServiceItem serviceItem = new ServiceItem();
		try {
			serviceItem.setId(rs.getString("id"));
			serviceItem.setTitle(rs.getString("title"));
			serviceItem.setIcon(rs.getString("icon"));
			serviceItem.setDescription(rs.getString("description"));
			serviceItem.setActive(rs.getBoolean("active"));
			serviceItem.setPriority(rs.getInt("priority"));
			return serviceItem;
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
				sql += "			(id, title, icon, description, active, priority) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " SET	title=?, icon=?, description=?, active=?, priority=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				int i=0;
				stmt.setString(++i, this.id);
				stmt.setString(++i, this.title);
				stmt.setString(++i, this.icon);
				stmt.setString(++i, this.description);
				stmt.setBoolean(++i, this.active);
				stmt.setInt(++i, this.priority);
			}else {
				int i=0;
				stmt.setString(++i, this.title);
				stmt.setString(++i, this.icon);
				stmt.setString(++i, this.description);
				stmt.setBoolean(++i, this.active);
				stmt.setInt(++i, this.priority);
				stmt.setString(++i, this.id);
			}
			System.out.println(stmt.toString());
			
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
	
	public ArrayList<ServiceItem> toSelfList(ArrayList<Object> oArr){
		ArrayList<ServiceItem> arr = new ArrayList<ServiceItem>();
		for(Object o: oArr) {
			arr.add((ServiceItem) o);
		}
		return arr;
	}
	public ServiceItem find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (ServiceItem) o;
		}
	}
	public ServiceItem create(
			String title, 
			String icon, 
			String description, 
			boolean active, 
			int priority
		) {
		ServiceItem serviceItem = new ServiceItem();
		serviceItem.setId(UUID.randomUUID().toString());
		serviceItem.setTitle(title);
		serviceItem.setIcon(icon);
		serviceItem.setDescription(description);
		serviceItem.setActive(active);
		serviceItem.setPriority(priority);
		return (ServiceItem) serviceItem.save(true);
	}
	public ServiceItem update(
			String title, 
			String icon, 
			String description, 
			boolean active, 
			int priority
		) {
		this.setTitle(title);
		this.setIcon(icon);
		this.setDescription(description);
		this.setActive(active);
		this.setPriority(priority);
		return (ServiceItem) this.save(false);
	}
	public ArrayList<ServiceItem> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<ServiceItem> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<ServiceItem> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<ServiceItem> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
	
}
