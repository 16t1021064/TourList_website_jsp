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

public class Comment extends AbstractModel {
	protected String id;
	private String blogId;
	private String name;
	private String email;
	private String content;
	private Date createdTime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBlogId() {
		return blogId;
	}
	public void setBlogId(String blogId) {
		this.blogId = blogId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	public Comment() {
		super();
		this.tableName = "travel_comment";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Comment comment = new Comment();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			comment.setId(rs.getString("id"));
			comment.setBlogId(rs.getString("blog_id"));
			comment.setName(rs.getString("name"));
			comment.setEmail(rs.getString("email"));
			comment.setContent(rs.getString("content"));
			comment.setCreatedTime(dateConvertion.toUtilDate(rs.getTimestamp("created_time")));
			return comment;
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
				sql += "			(id, blod_id,  name, email, content, created_time) ";
				sql += "    VALUES  (?, ?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET blog_id=?, name=?, email=?, content=?, created_time=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.blogId);
				stmt.setString(3, this.name);
				stmt.setString(4, this.email);
				stmt.setString(5, this.content);
				stmt.setTimestamp(6, dateConvertion.toTimestamp(this.createdTime));
			}else {
				stmt.setString(1, this.blogId);
				stmt.setString(2, this.name);
				stmt.setString(3, this.email);
				stmt.setString(4, this.content);
				stmt.setTimestamp(5, dateConvertion.toTimestamp(this.createdTime));
				stmt.setString(6, this.id);
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
	public ArrayList<Comment> toSelfList(ArrayList<Object> oArr){
		ArrayList<Comment> arr = new ArrayList<Comment>();
		for(Object o: oArr) {
			arr.add((Comment) o);
		}
		return arr;
	}
	public Comment find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Comment) o;
		}
	}
	public Comment create(String blogId, String name, String email, String content, Date createdTime) {
		Comment comment = new Comment();
		comment.setId(UUID.randomUUID().toString());
		comment.setBlogId(blogId);
		comment.setName(name);
		comment.setEmail(email);
		comment.setContent(content);
		comment.setCreatedTime(createdTime);
		return (Comment) comment.save(true);
	}
	public Comment update(String blogId, String name, String email, String content, Date createdTime) {
		this.setBlogId(blogId);
		this.setName(name);
		this.setEmail(email);
		this.setContent(content);
		this.setCreatedTime(createdTime);
		return (Comment) this.save(false);
	}
	public ArrayList<Comment> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Comment> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Comment> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Comment> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
