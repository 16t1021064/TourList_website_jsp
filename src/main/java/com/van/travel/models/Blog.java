package com.van.travel.models;

import java.sql.ResultSet;
import java.util.Date;

import com.van.travel.common.DateConvertion;

public class Blog extends AbstractModel {
	protected String id;
	private String title;
	private String thumbnail;
	private String slug;
	private String sumary;
	private String content;
	private String author;
	private Date createdTime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getSlug() {
		return slug;
	}
	public void setSlug(String slug) {
		this.slug = slug;
	}
	public String getSumary() {
		return sumary;
	}
	public void setSumary(String sumary) {
		this.sumary = sumary;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	public Blog() {
		super();
		this.tableName = "travel_blog";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		Blog blog = new Blog();
		DateConvertion dateConvertion = new DateConvertion();
		try {
			blog.setId(rs.getString("id"));
			blog.setTitle(rs.getString("title"));
			blog.setThumbnail(rs.getString("thumbnail"));
			blog.setSlug(rs.getString("slug"));
			blog.setSumary(rs.getString("sumary"));
			blog.setContent(rs.getString("content"));
			blog.setAuthor(rs.getString("author"));
			blog.setCreatedTime(rs.getTimestamp("created_time"));
			return blog;
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
