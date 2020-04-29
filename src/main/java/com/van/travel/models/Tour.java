package com.van.travel.models;

import java.sql.ResultSet;
import java.util.Date;

import com.van.travel.common.DateConvertion;

public class Tour extends AbstractModel {
	protected String id;
	private String name;
	private String thumbnail;
	private String state;
	private String nation;
	private String description;
	private int star;
	private int days;
	private String daysText;
	private Date beginTime;
	private Date endTime;
	private double oPrice;
	private double pPrice;
	private int minAge;
	private int maxPeople;
	private int registeredPeople;
	private String detailText;
	private String departureLocation;
	private Date departureTime;
	private String expectText;
	private String destinationId;
	
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

	public String getDaysText() {
		return daysText;
	}

	public void setDaysText(String daysText) {
		this.daysText = daysText;
	}

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public double getoPrice() {
		return oPrice;
	}

	public void setoPrice(double oPrice) {
		this.oPrice = oPrice;
	}

	public double getpPrice() {
		return pPrice;
	}

	public void setpPrice(double pPrice) {
		this.pPrice = pPrice;
	}

	public int getMinAge() {
		return minAge;
	}

	public void setMinAge(int minAge) {
		this.minAge = minAge;
	}

	public int getMaxPeople() {
		return maxPeople;
	}

	public void setMaxPeople(int maxPeople) {
		this.maxPeople = maxPeople;
	}

	public int getRegisteredPeople() {
		return registeredPeople;
	}

	public void setRegisteredPeople(int registeredPeople) {
		this.registeredPeople = registeredPeople;
	}

	public String getDetailText() {
		return detailText;
	}

	public void setDetailText(String detailText) {
		this.detailText = detailText;
	}

	public String getDepartureLocation() {
		return departureLocation;
	}

	public void setDepartureLocation(String departureLocation) {
		this.departureLocation = departureLocation;
	}

	public Date getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(Date departureTime) {
		this.departureTime = departureTime;
	}

	public String getExpectText() {
		return expectText;
	}

	public void setExpectText(String expectText) {
		this.expectText = expectText;
	}

	public String getDestinationId() {
		return destinationId;
	}

	public void setDestinationId(String destinationId) {
		this.destinationId = destinationId;
	}

	public Tour() {
		super();
		this.tableName = "travel_tour";
	}

	@Override
	public Object rowToObj(ResultSet rs) {
		Tour tour = new Tour();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			tour.setId(rs.getString("id"));
			tour.setName(rs.getString("name"));
			tour.setThumbnail(rs.getString("thumbnail"));
			tour.setState(rs.getString("state"));
			tour.setNation(rs.getString("nation"));
			tour.setDescription(rs.getString("description"));
			tour.setStar(rs.getInt("star"));
			tour.setDays(rs.getInt("days"));
			tour.setDaysText(rs.getString("days_text"));
			tour.setBeginTime(dateConvertion.toUtilDate(rs.getTimestamp("begin_time")));
			tour.setEndTime(dateConvertion.toUtilDate(rs.getTimestamp("end_time")));
			tour.setoPrice(rs.getDouble("o_price"));
			tour.setpPrice(rs.getDouble("p_price"));
			tour.setMinAge(rs.getInt("min_age"));
			tour.setMaxPeople(rs.getInt("max_people"));
			tour.setRegisteredPeople(rs.getInt("registered_people"));
			tour.setDetailText(rs.getString("detail_text"));
			tour.setDepartureLocation(rs.getString("departure_location"));
			tour.setDepartureTime(dateConvertion.toUtilDate(rs.getString("departure_time")));
			tour.setExpectText(rs.getString("expect_text"));
			tour.setDestinationId(rs.getString("destination_id"));
			return tour;
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
