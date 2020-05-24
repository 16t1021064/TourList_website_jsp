package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.SQLException;

import com.van.travel.common.Database;

public class BlogTagFactory {
	public void countWithBlog(String id) {
		try {
			(new Database()).getPreparedStatement(this.getSqlCount(id, null, 2, 1)).executeUpdate();
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void countWithTag(String id) {
		try {
			(new Database()).getPreparedStatement(this.getSqlCount(null, id, 1, 2)).executeUpdate();
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private String getSqlCount(String blogId, String tagId, int countBlog, int countTag) {
		String sql = "";
		
		sql+=" UPDATE travel_tag ";
		sql+="         JOIN ";
		sql+="     travel_blog_tag ON travel_blog_tag.tag_id = travel_tag.id ";
		sql+="         JOIN ";
		sql+="     travel_blog ON travel_blog.id = travel_blog_tag.blog_id  ";
		sql+=" SET  ";
		sql+="     travel_tag.clicked = travel_tag.clicked + "+countTag+", ";
		sql+="     travel_blog.view_count = travel_blog.view_count + "+countBlog+" ";
		sql+="     		 ";
		if(blogId != null) {
			sql+=" WHERE (travel_blog.id = '"+blogId+"') ";
		}else if( tagId != null) {
			sql+=" WHERE (travel_tag.id = '"+tagId+"') ";
		}
		
		return sql;
	}
}
