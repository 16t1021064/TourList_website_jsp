package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.van.travel.common.Database;
import com.van.travel.models.Activity;
import com.van.travel.models.Destination;

public class ActivityFactory {
	public ArrayList<Activity> getHotActivities(){
		return this.queryHotActivities();
	}
	public ArrayList<Activity> queryHotActivities(){
		int limit = 8;
		String sql = "";
		sql+=" SELECT  ";
		sql+="     travel_activity.*, ";
		sql+="     count(travel_tour_activity.id) as tour_count ";
		sql+=" FROM ";
		sql+="     travel_activity ";
		sql+="         LEFT JOIN ";
		sql+="     travel_tour_activity ON travel_activity.id = travel_tour_activity.activity_id ";
		sql+=" GROUP BY travel_activity.id ";
		sql+=" ORDER BY tour_count DESC ";
		sql+=" LIMIT "+limit+" ";
		try {
			ArrayList<Activity> activities = new ArrayList<Activity>();
			Activity tempDestination  = new Activity();
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				Activity activity = (Activity) tempDestination.rowToObj(rs);
				activity.setTourCount(rs.getInt("tour_count"));
				activities.add(activity);
			}
			return activities;
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}
