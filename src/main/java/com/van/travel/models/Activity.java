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
		for(TourActivity tourActivity : this.getTourActivities()) {
			tourActivity.delete();
		}
		return this.delete(this.id);
	}
	public ArrayList<Activity> toSelfList(ArrayList<Object> oArr){
		ArrayList<Activity> arr = new ArrayList<Activity>();
		for(Object o: oArr) {
			arr.add((Activity) o);
		}
		return arr;
	}
	public Activity find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Activity) o;
		}
	}
	public Activity create(String name) {
		Activity activity = new Activity();
		activity.setId(UUID.randomUUID().toString());
		activity.setName(name);
		return (Activity) activity.save(true);
	}
	public Activity update(String name) {
		this.setName(name);
		return (Activity) this.save(false);
	}
	public ArrayList<Activity> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Activity> all(ArrayList<Object[]> whereConditions){
		ArrayList<Activity> arr = this.toSelfList(this.allObject(whereConditions));
		return arr;
	}
	public ArrayList<TourActivity> getTourActivities(){
		return this.getTourActivities(true);
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
		ArrayList<TourActivity> tourActivities = (new TourActivity()).all(whereConditions);
		this.setHasManyRepos(key, tourActivities);
		return tourActivities;
	}
}
