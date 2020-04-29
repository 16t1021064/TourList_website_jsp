package com.van.travel.models;

import java.sql.ResultSet;

public class BlogTag extends AbstractModel {
	protected String id;
	private String blogId;
	private String tagId;
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
	public String getTagId() {
		return tagId;
	}
	public void setTagId(String tagId) {
		this.tagId = tagId;
	}
	public BlogTag() {
		super();
		this.tableName = "travel_blog_tag";
	}
	@Override
	public Object rowToObj(ResultSet rs) {
		BlogTag blogTag = new BlogTag();
		try {
			blogTag.setId(rs.getString("id"));
			blogTag.setBlogId(rs.getString("blogId"));
			blogTag.setTagId(rs.getString("tagId"));
			return blogTag;
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
