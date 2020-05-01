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
			tour.setDepartureTime(dateConvertion.toUtilDate(rs.getTimestamp("departure_time")));
			tour.setExpectText(rs.getString("expect_text"));
			tour.setDestinationId(rs.getString("destination_id"));
			return tour;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, name, thumbnail, state, nation, description, star, days, days_text, begin_time, end_time, o_price, p_price, min_age, max_people, registered_people, detail_text, departure_location, departure_time, expect_text, destination_id) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " SET	name=?, thumbnail=?, state=?, nation=?, description=?, star=?, days=?, days_text=?, begin_time=?, end_time=?, o_price=?, p_price=?, min_age=?, max_people=?, registered_people=?, detail_text=?, departure_location=?, departure_time=?, expect_text=?, destination_id=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.name);
				stmt.setString(3, this.thumbnail);
				stmt.setString(4, this.state);
				stmt.setString(5, this.nation);
				stmt.setString(6, this.description);
				stmt.setInt(7, this.star);
				stmt.setInt(8, this.days);
				stmt.setString(9, this.daysText);
				stmt.setTimestamp(10, dateConvertion.toTimestamp(this.beginTime));
				stmt.setTimestamp(11, dateConvertion.toTimestamp(this.endTime));
				stmt.setDouble(12, this.oPrice);
				stmt.setDouble(13, this.pPrice);
				stmt.setInt(14, this.minAge);
				stmt.setInt(15, this.maxPeople);
				stmt.setInt(16, this.registeredPeople);
				stmt.setString(17, this.detailText);
				stmt.setString(18, this.departureLocation);
				stmt.setTimestamp(19, dateConvertion.toTimestamp(this.departureTime));
				stmt.setString(20, this.expectText);
				stmt.setString(21, this.destinationId);
			}else {
				stmt.setString(1, this.name);
				stmt.setString(2, this.thumbnail);
				stmt.setString(3, this.state);
				stmt.setString(4, this.nation);
				stmt.setString(5, this.description);
				stmt.setInt(6, this.star);
				stmt.setInt(7, this.days);
				stmt.setString(8, this.daysText);
				stmt.setTimestamp(9, dateConvertion.toTimestamp(this.beginTime));
				stmt.setTimestamp(10, dateConvertion.toTimestamp(this.endTime));
				stmt.setDouble(11, this.oPrice);
				stmt.setDouble(12, this.pPrice);
				stmt.setInt(13, this.minAge);
				stmt.setInt(14, this.maxPeople);
				stmt.setInt(15, this.registeredPeople);
				stmt.setString(16, this.detailText);
				stmt.setString(17, this.departureLocation);
				stmt.setTimestamp(18, dateConvertion.toTimestamp(this.departureTime));
				stmt.setString(19, this.expectText);
				stmt.setString(20, this.destinationId);
				stmt.setString(21, this.id);
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
		for(TourActivity tourActivity : this.getTourActivities()) {
			tourActivity.delete();
		}
		for(Itinerary itinerary : this.getItineraries()) {
			itinerary.delete();
		}
		for(Review review : this.getReviews()) {
			review.delete();
		}
		for(Service service : this.getServices()) {
			service.delete();
		}
		return this.delete(this.id);
	}
	public ArrayList<Tour> toSelfList(ArrayList<Object> oArr){
		ArrayList<Tour> arr = new ArrayList<Tour>();
		for(Object o: oArr) {
			arr.add((Tour) o);
		}
		return arr;
	}
	public Tour find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Tour) o;
		}
	}
	public Tour create(String name, String thumbnail, String state, String nation, String description, int star, int days, String daysText, Date beginTime, Date endTime, double oPrice, double pPrice, int minAge, int maxPeople, int registeredPeople, String detailText, String departureLocation, Date departureTime, String expectText, String destinationId) {
		Tour tour = new Tour();
		tour.setId(UUID.randomUUID().toString());
		tour.setName(name);
		tour.setThumbnail(thumbnail);
		tour.setState(state);
		tour.setNation(nation);
		tour.setDescription(description);
		tour.setStar(star);
		tour.setDays(days);
		tour.setDaysText(daysText);
		tour.setBeginTime(beginTime);
		tour.setEndTime(endTime);
		tour.setoPrice(oPrice);
		tour.setpPrice(pPrice);
		tour.setMinAge(minAge);
		tour.setMaxPeople(maxPeople);
		tour.setRegisteredPeople(registeredPeople);
		tour.setDetailText(detailText);
		tour.setDepartureLocation(departureLocation);
		tour.setDepartureTime(departureTime);
		tour.setExpectText(expectText);
		tour.setDestinationId(destinationId);
		return (Tour) tour.save(true);
	}
	public Tour update(String name, String thumbnail, String state, String nation, String description, int star, int days, String daysText, Date beginTime, Date endTime, double oPrice, double pPrice, int minAge, int maxPeople, int registeredPeople, String detailText, String departureLocation, Date departureTime, String expectText, String destinationId) {
		this.setName(name);
		this.setThumbnail(thumbnail);
		this.setState(state);
		this.setNation(nation);
		this.setDescription(description);
		this.setStar(star);
		this.setDays(days);
		this.setDaysText(daysText);
		this.setBeginTime(beginTime);
		this.setEndTime(endTime);
		this.setoPrice(oPrice);
		this.setpPrice(pPrice);
		this.setMinAge(minAge);
		this.setMaxPeople(maxPeople);
		this.setRegisteredPeople(registeredPeople);
		this.setDetailText(detailText);
		this.setDepartureLocation(departureLocation);
		this.setDepartureTime(departureTime);
		this.setExpectText(expectText);
		this.setDestinationId(destinationId);
		return (Tour) this.save(false);
	}
	public ArrayList<Tour> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Tour> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Tour> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Tour> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
	public ArrayList<TourActivity> getTourActivities(){
		return this.getTourActivities(true);
	}
	public ArrayList<TourActivity> getTourActivities(boolean saveResources){
		String key = "tour_touractivity";
		if(saveResources) {
			Object repos =  this.getHasManyRepos(key);
			if(repos != null) {
				return (ArrayList<TourActivity>) repos;
			}
		}
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"tour_id", "=", this.id, "STRING"});
		ArrayList<TourActivity> tourActivities = (new TourActivity()).all(whereConditions);
		this.setHasManyRepos(key, tourActivities);
		return tourActivities;
	}
	public ArrayList<Itinerary> getItineraries(){
		return this.getItineraries(true);
	}
	public ArrayList<Itinerary> getItineraries(boolean saveResources){
		String key = "tour_itinerary";
		if(saveResources) {
			Object repos =  this.getHasManyRepos(key);
			if(repos != null) {
				return (ArrayList<Itinerary>) repos;
			}
		}
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"tour_id", "=", this.id, "STRING"});
		ArrayList<Object[]> orderBys = new ArrayList<Object[]>();
		orderBys.add(new Object[] {"sequence", "asc"});
		ArrayList<Itinerary> itineraries = (new Itinerary()).all(whereConditions, orderBys);
		this.setHasManyRepos(key, itineraries);
		return itineraries;
	}
	public ArrayList<Review> getReviews(){
		return this.getReviews(true);
	}
	public ArrayList<Review> getReviews(boolean saveResources){
		String key = "tour_review";
		if(saveResources) {
			Object repos =  this.getHasManyRepos(key);
			if(repos != null) {
				return (ArrayList<Review>) repos;
			}
		}
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"tour_id", "=", this.id, "STRING"});
		ArrayList<Review> reviews = (new Review()).all(whereConditions);
		this.setHasManyRepos(key, reviews);
		return reviews;
	}
	public ArrayList<Service> getServices(){
		return this.getServices(true);
	}
	public ArrayList<Service> getServices(boolean saveResources){
		String key = "tour_service";
		if(saveResources) {
			Object repos =  this.getHasManyRepos(key);
			if(repos != null) {
				return (ArrayList<Service>) repos;
			}
		}
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"tour_id", "=", this.id, "STRING"});
		ArrayList<Object[]> orderBys = new ArrayList<Object[]>();
		orderBys.add(new Object[] {"status", "desc"});
		ArrayList<Service> services = (new Service()).all(whereConditions, orderBys);
		this.setHasManyRepos(key, services);
		return services;
	}
}
