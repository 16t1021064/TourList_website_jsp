package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.mysql.jdbc.PreparedStatement;
import com.van.travel.common.Database;
import com.van.travel.common.DateConvertion;
import com.van.travel.models.Blog;

public class BlogFactory {
	public ArrayList<Blog> getHotBlogs(){
		return this.queryHotBlogs();
	}
	public ArrayList<Blog> queryHotBlogs(){
		Blog tempBlog = new Blog();
		tempBlog.setQueryLimit(4);
		return tempBlog.all();
	}
	
	public void updateRecentView(String blogId) {
		String sql = "update travel_blog set travel_blog.recent_view_time=? where travel_blog.id=?";
		try {
			PreparedStatement stmt = (new Database()).getPreparedStatement(sql);
			DateConvertion dateConvertion = new DateConvertion();
			stmt.setTimestamp(1, dateConvertion.toTimestamp(new Date()));
			stmt.setString(2, blogId);
			stmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<Blog> getRecentViewBlogs(int limit){
		String sql = "";
		sql+=" SELECT ";
		sql+="     travel_blog.* ";
		sql+=" FROM ";
		sql+="     travel_blog ";
		sql+=" ORDER BY travel_blog.recent_view_time DESC ";
		sql+=" LIMIT ? ";
		
		ArrayList<Blog> arr = new ArrayList<Blog>();
		
		try {
			PreparedStatement stmt = (new Database()).getPreparedStatement(sql);
			stmt.setInt(1, limit);
			ResultSet rs = stmt.executeQuery();
			Blog tempBlog = new Blog();
			while(rs.next()) {
				arr.add((Blog) tempBlog.rowToObj(rs));
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return arr;
	}
	
}
