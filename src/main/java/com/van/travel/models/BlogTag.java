package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import com.van.travel.common.Database;

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
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, blog_id, tag_id) ";
				sql += "    VALUES  (?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " 	SET blog_id=?, tag_id=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				stmt.setString(1, this.id);
				stmt.setString(2, this.blogId);
				stmt.setString(3, this.tagId);
			}else {
				stmt.setString(1, this.blogId);
				stmt.setString(2, this.tagId);
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
		return this.delete(this.id);
	}
	public ArrayList<BlogTag> toSelfList(ArrayList<Object> oArr){
		ArrayList<BlogTag> arr = new ArrayList<BlogTag>();
		for(Object o: oArr) {
			arr.add((BlogTag) o);
		}
		return arr;
	}
	public BlogTag find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (BlogTag) o;
		}
	}
	public BlogTag create(String blogId, String tagId) {
		BlogTag blogTag = new BlogTag();
		blogTag.setId(UUID.randomUUID().toString());
		blogTag.setBlogId(blogId);
		blogTag.setTagId(tagId);
		return (BlogTag) blogTag.save(true);
	}
	public BlogTag update(String blogId, String tagId) {
		this.setBlogId(blogId);
		this.setTagId(tagId);
		return (BlogTag) this.save(false);
	}
	public ArrayList<BlogTag> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<BlogTag> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<BlogTag> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<BlogTag> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
