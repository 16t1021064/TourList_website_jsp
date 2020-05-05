package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.van.travel.common.Database;
import com.van.travel.models.Destination;
import com.van.travel.models.Tour;

public class DestinationFactory {
	public ArrayList<Destination> getHotDestinations(int limit){
		return this.queryHotDestinations(limit);
	}
	protected ArrayList<Destination> queryHotDestinations(int limit){
		String sql = "";
		sql+=" SELECT  ";
		sql+="     travel_destination.*, ";
		sql+="     count(travel_tour.id) as tour_count ";
		sql+=" FROM ";
		sql+="     travel_destination ";
		sql+="         LEFT JOIN ";
		sql+="     travel_tour ON travel_destination.id = travel_tour.destination_id ";
		sql+=" GROUP BY travel_destination.id ";
		sql+=" ORDER BY tour_count DESC ";
		sql+=" LIMIT "+limit+" ";
		
		try {
			ArrayList<Destination> destinations = new ArrayList<Destination>();
			Destination tempDestination  = new Destination();
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				Destination destination = (Destination) tempDestination.rowToObj(rs);
				destination.setTourCount(rs.getInt("tour_count"));
				destinations.add(destination);
			}
			return destinations;
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
}
