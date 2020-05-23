package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.van.travel.common.Database;
import com.van.travel.common.PaginationData;
import com.van.travel.models.Blog;
import com.van.travel.models.Comment;

public class CommentFactory {
	
	public PaginationData search(String blogSlug, int page, String type) {
		int limit = 2;
		
		Blog blog = (new Blog()).findWithSlug(blogSlug);
		
		long totalItem = this.querySearchCnt(blog.getId(), type);
		
		long totalPage = totalItem / limit;
		
		if(totalItem % limit != 0) {
			totalPage += 1;
		}
		long firstPage;
		if(totalPage == 0) {
			firstPage = 0;
		} else {
			firstPage = 1;
		}
		long lastPage = totalPage;
		long currentPage = page;
		long firstIndex = 0;
		long lastIndex = 0;
		long perPage = limit;
		
		ArrayList<Comment> arrComments = this.querySearchArr(blog.getId(), page, limit, type);
		PaginationData paginationData = new PaginationData(totalItem, totalPage, firstPage, lastPage, currentPage, firstIndex, lastIndex, perPage, arrComments);
		return paginationData;
		
	}
	
	protected long querySearchCnt(String blogId, String type) {
		String sql = this.getSql(blogId, type);
		String sql2 = "select count(*) from ( "+sql+" ) AS QueryTable";
		
		 
		try {
			ResultSet rs = (new Database()).getPreparedStatement(sql2).executeQuery();
			if(rs.next()) {
				return rs.getLong(1);
			}
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	protected ArrayList<Comment> querySearchArr(String blogId, int page, int limit, String type){
		int offset = (page - 1) * limit;
		String sql = this.getSql(blogId, type);
		sql+=" LIMIT "+limit+" OFFSET "+offset+" ";
		
		ArrayList<Comment> comments = new ArrayList<Comment>();
		try {
			Comment tempComment  = new Comment();
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				Comment comment = (Comment) tempComment.rowToObj(rs);
				comments.add(comment);
			}
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return comments;
	}
	
	protected String getSql(String blogId, String type ) {
		String query = " ";
		query+=" SELECT ";
		query+="     travel_comment.* ";
		query+=" FROM ";
		query+="     travel_comment ";
		query+=" WHERE ";
		query+="     travel_comment.blog_id = '"+blogId+"' ";
		query+=" ORDER BY travel_comment.created_time DESC ";
		return query;
	}
	
}
