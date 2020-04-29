package com.van.travel.models;

import java.sql.ResultSet;
import java.util.Date;

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
	public Object find(String id) {
		ResultSet rs = this.findRS(id);
		if(rs == null) {
			return null;
		}else {
			return this.rowToObj(rs);
		}
	}
	
}
