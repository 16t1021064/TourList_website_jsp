package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.van.travel.common.Database;
import com.van.travel.common.DateConvertion;
import com.van.travel.common.PaginationData;
import com.van.travel.models.Tour;

/**
 * q: key search
 * act: activity
 * des: destination
 * dur: duration
 * date: date
 * @author Chelbay
 *
 */
public class SearchTourFactory {
	public PaginationData search(int page, String q, String act, String des, String dur, Date date){
		int limit = 2;
		
		long totalItem = this.querySearchCnt(page, limit, q, act, des, dur, date);
		long totalPage = totalItem / limit;
		if(totalItem % limit != 0) {
			totalPage += 1;
		}
		long firstPage;
		if(totalPage == 0) {
			firstPage = 0;
		} else {
			firstPage = 1;
		}
		long lastPage = totalPage;
		long currentPage = page;
		long firstIndex = 0;
		long lastIndex = 0;
		long perPage = limit;
		ArrayList<Tour> data = this.querySearchArr(page, limit, q, act, des, dur, date);
		PaginationData paginationData = new PaginationData(totalItem, totalPage, firstPage, lastPage, currentPage, firstIndex, lastIndex, perPage, data);
		return paginationData;
	}
	
	protected long querySearchCnt(int page, int limit, String q, String act, String des, String dur, Date date) {
		String sql = this.getSql(page, limit, q, act, des, dur, date);
		String sql2 = "select count(*) from ( "+sql+" ) AS QueryTable";
		
		System.out.println(sql2);
		
		ArrayList<Tour> tours = new ArrayList<Tour>();
		try {
			Tour tempTour  = new Tour();
			ResultSet rs = (new Database()).getPreparedStatement(sql2).executeQuery();
			if(rs.next()) {
				return rs.getLong(1);
			}
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	protected ArrayList<Tour> querySearchArr(int page, int limit, String q, String act, String des, String dur, Date date) {
		int offset = (page - 1) * limit;
		String sql = this.getSql(page, limit, q, act, des, dur, date);
		sql+=" LIMIT "+limit+" OFFSET "+offset+" ";
		
		ArrayList<Tour> tours = new ArrayList<Tour>();
		try {
			Tour tempTour  = new Tour();
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				Tour tour = (Tour) tempTour.rowToObj(rs);
				tour.setDestinationName(rs.getString("destination_name"));
				tours.add(tour);
			}
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return tours;
	}
	
	protected String getSql(int page, int limit, String q, String act, String des, String dur, Date date) {
		DateConvertion dateConvertion = new DateConvertion("yyyy-MM-dd");
		String sql = "";
		sql+=" SELECT  ";
		sql+="     travel_tour.*, ";
		sql+="     travel_tour_activity.activity_id AS activity_id, ";
		sql+="     travel_destination.name AS destination_name ";
		sql+=" FROM ";
		sql+="     travel_tour ";
		sql+="         INNER JOIN ";
		sql+="     travel_tour_activity ON travel_tour_activity.tour_id = travel_tour.id ";
		sql+="         INNER JOIN ";
		sql+="     travel_destination ON travel_tour.destination_id = travel_destination.id ";
		sql+=" WHERE ";
		sql+="     ((travel_tour.name LIKE '%"+q+"%') OR (travel_tour.state LIKE '%"+q+"%') ";
		sql+="         OR (travel_tour.nation LIKE '%"+q+"%')) ";
		if(des != null) {
			sql+="         AND (travel_tour.destination_id = '"+des+"') ";
		}
		if(des != null) {
			sql+="         AND (travel_tour.days >= "+dur+") ";
		}
		if(date != null) {
			sql+="         AND (travel_tour.departure_time >= '"+dateConvertion.toStringDate(date)+"') ";
		}
		if(des != null) {
			sql+="         AND (travel_tour_activity.activity_id = '"+act+"') ";
		}
		sql+=" GROUP BY travel_tour.id ";
		sql+=" ORDER BY travel_tour.departure_time ASC ";
		return sql;
	}
}
