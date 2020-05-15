package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.websocket.CloseReason;

import com.van.travel.common.Database;
import com.van.travel.models.Tour;

public class TourFactory {
	
	public ArrayList<Tour> getHotTours(){
		int limit = 8;
		return this.queryHotTours(limit);
	}
	public ArrayList<Tour> getHotTours(int limit){
		return this.queryHotTours(limit);
	}
	protected ArrayList<Tour> queryHotTours(int limit) {
		
		String sql = "";
		
		sql+=" SELECT  ";
		sql+="     travel_tour.*, ";
		sql+="     travel_destination.name AS destination_name, ";
		sql+="     COUNT(travel_booking.id) AS booking_count ";
		sql+=" FROM ";
		sql+="     travel_tour ";
		sql+="         LEFT JOIN ";
		sql+="     travel_destination ON travel_tour.destination_id = travel_destination.id ";
		sql+="         LEFT JOIN ";
		sql+="     travel_booking ON travel_tour.id = travel_booking.tour_id ";
		sql+=" GROUP BY travel_tour.id ";
		sql+=" ORDER BY booking_count DESC ";
		
		try {
			ArrayList<Tour> tours = new ArrayList<Tour>();
			Tour tempTour  = new Tour();
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				Tour tour = (Tour) tempTour.rowToObj(rs);
				tour.setDestinationName(rs.getString("destination_name"));
				tour.setBookingCount(rs.getInt("booking_count"));
				tours.add(tour);
			}
			return tours;
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public ArrayList<Tour> getRelativeTours(String postId, int limit){
		return this.queryRelativeTours(postId, limit);
	}
	
	protected ArrayList<Tour> queryRelativeTours(String postId, int limit){
		String sql = "";
		sql+=" SELECT  ";
		sql+="     travel_tour.* ";
		sql+=" FROM ";
		sql+="     travel_tour ";
		sql+=" WHERE ";
		sql+="     travel_tour.id != '"+postId+"' ";
		sql+=" ORDER BY RAND() ";
		sql+=" LIMIT "+limit+" ";
		
		try {
			ArrayList<Tour> tours = new ArrayList<Tour>();
			Tour tempTour  = new Tour();
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				Tour tour = (Tour) tempTour.rowToObj(rs);
				tours.add(tour);
			}
			return tours;
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}
