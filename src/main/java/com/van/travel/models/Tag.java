package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import com.van.travel.common.Database;

public class Tag extends AbstractModel {
	protected String id;
	private String name;
	private long clicked;
	public long getClicked() {
		return clicked;
	}
	public void setClicked(long clicked) {
		this.clicked = clicked;
	}
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
	public Tag() {
		super();
		this.tableName = "travel_tag";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Tag tag = new Tag();
		try {
			tag.setId(rs.getString("id"));
			tag.setName(rs.getString("name"));
			tag.setClicked(rs.getLong("clicked"));
			return tag;
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
				sql += "			(id, name, clicked) ";
				sql += "    VALUES  (?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET name=?, clicked=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.name);
				stmt.setLong(3, this.clicked);
			}else {
				stmt.setString(1, this.name);
				stmt.setLong(2, this.clicked);
				stmt.setString(3, this.id);
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
		for(BlogTag blogTag : this.getBlogTags()) {
			blogTag.delete();
		}
		return this.delete(this.id);
	}
	public ArrayList<Tag> toSelfList(ArrayList<Object> oArr){
		ArrayList<Tag> arr = new ArrayList<Tag>();
		for(Object o: oArr) {
			arr.add((Tag) o);
		}
		return arr;
	}
	public Tag find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Tag) o;
		}
	}
	public Tag create(String name, long clicked) {
		Tag tag = new Tag();
		tag.setId(UUID.randomUUID().toString());
		tag.setName(name);
		tag.setClicked(clicked);
		return (Tag) tag.save(true);
	}
	public Tag update(String name, long clicked) {
		this.setName(name);
		this.setClicked(clicked);
		return (Tag) this.save(false);
	}
	public ArrayList<Tag> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Tag> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Tag> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Tag> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
	public ArrayList<BlogTag> getBlogTags(){
		return this.getBlogTags(true);
	}
	public ArrayList<BlogTag> getBlogTags(boolean saveResources){
		String key = "tag_blogtag";
		if(saveResources) {
			Object repos =  this.getHasManyRepos(key);
			if(repos != null) {
				return (ArrayList<BlogTag>) repos;
			}
		}
		ArrayList<Object[]> whereConditions = new ArrayList<Object[]>();
		whereConditions.add(new Object[] {"tag_id", "=", this.id, "STRING"});
		ArrayList<BlogTag> blogTags = (new BlogTag()).all(whereConditions);
		this.setHasManyRepos(key, blogTags);
		return blogTags;
	}
	public Tag findWithText(String text) {
		Connection conn = (new Database()).getConnection();
		try {
			PreparedStatement stmt = conn.prepareStatement("select * from "+this.tableName+" where name=? limit 1");
			stmt.setString(1, text);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				return (Tag) this.rowToObj(rs);
			}else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
