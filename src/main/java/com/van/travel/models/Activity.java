package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import com.van.travel.common.Database;

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
	@Override
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, name) ";
				sql += "    VALUES  (?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET name=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.name);
			}else {
				stmt.setString(1, this.name);
				stmt.setString(2, this.id);
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
	public Activity create(String name) {
		Activity activity = new Activity();
		activity.setId(UUID.randomUUID().toString());
		activity.setName(name);
		activity.save(true);
		return activity;
	}
	public Activity update(String name) {
		this.setName(name);
		this.save(false);
		return this;
	}
	public ArrayList<Activity> all(){
//		ArrayList<Activity> arr = new ArrayList<Activity>();
//		ResultSet rs = this.allRS();
//		try {
//			while(rs.next()) {
//				arr.add((Activity)this.rowToObj(rs));
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return arr;
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
//		arr.add(new Object[] {"name", "!=", "DEMO", "STRING"});
		return this.all(arr);
	}
	public ArrayList<Activity> all(ArrayList<Object[]> whereConditions){
		ArrayList<Activity> arr = new ArrayList<Activity>();
		ResultSet rs = this.allRS(whereConditions);
		try {
			while(rs.next()) {
				arr.add((Activity)this.rowToObj(rs));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	public ArrayList<TourActivity> getTourActivities(boolean saveResources){
		String key = "activity_touractivity";
		if(saveResources) {
			Object repos =  this.getHasManyRepos(key);
			if(repos != null) {
				return (ArrayList<TourActivity>) repos;
			}
		}
		
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"activity_id", "=", this.id, "STRING"});
		TourActivity tourActivity = new TourActivity();
//		tourActivity.all
		
		ArrayList<TourActivity> tourActivities = new ArrayList<TourActivity>();
		
		return null;
	}
}
