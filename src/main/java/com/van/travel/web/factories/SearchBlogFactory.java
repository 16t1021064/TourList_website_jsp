package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.van.travel.common.Database;
import com.van.travel.common.PaginationData;
import com.van.travel.models.Blog;

public class SearchBlogFactory {
	public PaginationData search(int page, String type, String q, String tag) {
		int limit = 2;
		
		long totalItem = this.querySearchCnt(page, limit, type, q, tag);
		
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
		ArrayList<Blog> arrBlogs = this.querySearchArr(page, limit, type, q, tag);
		PaginationData paginationData = new PaginationData(totalItem, totalPage, firstPage, lastPage, currentPage, firstIndex, lastIndex, perPage, arrBlogs);
		return paginationData;
	}
	
	protected long querySearchCnt(int page, int limit, String type, String q, String tag) {
		String sql = this.getSql(page, limit, type, q, tag);
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
	
	protected ArrayList<Blog> querySearchArr(int page, int limit, String type, String q, String tag) {
		int offset = (page - 1) * limit;
		String sql = this.getSql(page, limit, type, q, tag);
		sql+=" LIMIT "+limit+" OFFSET "+offset+" ";
		
		ArrayList<Blog> blogs = new ArrayList<Blog>();
		try {
			Blog tempBlog  = new Blog();
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				Blog blog = (Blog) tempBlog.rowToObj(rs);
				blogs.add(blog);
			}
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return blogs;
	}
	
	protected String getSql(int page, int limit, String type, String q, String tag) {
		if(q == null) {
			q="";
		}
		String sql = "";
		
		sql+=" SELECT  ";
		sql+="     travel_blog.* ";
		sql+=" FROM ";
		sql+="     travel_blog ";
		sql+="         JOIN ";
		sql+="     travel_blog_tag ON travel_blog_tag.blog_id = travel_blog.id ";
		sql+="         JOIN ";
		sql+="     travel_tag ON travel_blog_tag.tag_id = travel_tag.id ";
		sql+=" WHERE ( ";
		sql+="     (travel_blog.title LIKE '%"+q+"%') ";
		if(tag != null) {
			sql+="         AND (travel_tag.name = '"+tag+"') ";
		}
		sql+="       ) ";
		sql+=" GROUP BY travel_blog.id ";
		sql+=" ORDER BY travel_blog.created_time DESC ";
		
		
		return sql;
	}
	
}
