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

public class Banner extends AbstractModel {
	
	protected String id;
	private String type;
	private String textH1;
	private String textH2;
	private String textH3;
	private String image;
	private String link;
	private String linkLabel;
	private boolean active;
	private int priority;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTextH1() {
		return textH1;
	}

	public void setTextH1(String textH1) {
		this.textH1 = textH1;
	}

	public String getTextH2() {
		return textH2;
	}

	public void setTextH2(String textH2) {
		this.textH2 = textH2;
	}

	public String getTextH3() {
		return textH3;
	}

	public void setTextH3(String textH3) {
		this.textH3 = textH3;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getLinkLabel() {
		return linkLabel;
	}

	public void setLinkLabel(String linkLabel) {
		this.linkLabel = linkLabel;
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
	
	public Banner() {
		super();
		this.tableName = "travel_banner";
	}

	@Override
	public Object rowToObj(ResultSet rs) {
		Banner banner = new Banner();
		try {
			banner.setId(rs.getString("id"));
			banner.setType(rs.getString("type"));
			banner.setTextH1(rs.getString("text_h1"));
			banner.setTextH2(rs.getString("text_h2"));
			banner.setTextH3(rs.getString("text_h3"));
			banner.setImage(rs.getString("image"));
			banner.setLink(rs.getString("link"));
			banner.setLinkLabel(rs.getString("link_label"));
			banner.setActive(rs.getBoolean("active"));
			banner.setPriority(rs.getInt("priority"));
			return banner;
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
				sql += "			(id, type, text_h1, text_h2, text_h3, image, link, link_label, active, priority) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " SET	type=?, text_h1=?, text_h2=?, text_h3=?, image=?, link=?, link_label=?, active=?, priority=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				int i=0;
				stmt.setString(++i, this.id);
				stmt.setString(++i, this.type);
				stmt.setString(++i, this.textH1);
				stmt.setString(++i, this.textH2);
				stmt.setString(++i, this.textH3);
				stmt.setString(++i, this.image);
				stmt.setString(++i, this.link);
				stmt.setString(++i, this.linkLabel);
				stmt.setBoolean(++i, this.active);
				stmt.setInt(++i, this.priority);
			}else {
				int i=0;
				stmt.setString(++i, this.type);
				stmt.setString(++i, this.textH1);
				stmt.setString(++i, this.textH2);
				stmt.setString(++i, this.textH3);
				stmt.setString(++i, this.image);
				stmt.setString(++i, this.link);
				stmt.setString(++i, this.linkLabel);
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
	
	public ArrayList<Banner> toSelfList(ArrayList<Object> oArr){
		ArrayList<Banner> arr = new ArrayList<Banner>();
		for(Object o: oArr) {
			arr.add((Banner) o);
		}
		return arr;
	}
	public Banner find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Banner) o;
		}
	}
	public Banner create(
			String type, 
			String textH1, 
			String textH2, 
			String textH3, 
			String image, 
			String link, 
			String linkLabel, 
			boolean active, 
			int priority
		) {
		Banner banner = new Banner();
		banner.setId(UUID.randomUUID().toString());
		banner.setType(type);
		banner.setTextH1(textH1);
		banner.setTextH2(textH2);
		banner.setTextH3(textH3);
		banner.setImage(image);
		banner.setLink(link);
		banner.setLinkLabel(linkLabel);
		banner.setActive(active);
		banner.setPriority(priority);
		return (Banner) banner.save(true);
	}
	public Banner update(
			String type, 
			String textH1, 
			String textH2, 
			String textH3, 
			String image, 
			String link, 
			String linkLabel, 
			boolean active, 
			int priority
		) {
		this.setType(type);
		this.setTextH1(textH1);
		this.setTextH2(textH2);
		this.setTextH3(textH3);
		this.setImage(image);
		this.setLink(link);
		this.setLinkLabel(linkLabel);
		this.setActive(active);
		this.setPriority(priority);
		return (Banner) this.save(false);
	}
	public ArrayList<Banner> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Banner> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Banner> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Banner> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
	
}
