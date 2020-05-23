package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.van.travel.common.Database;
import com.van.travel.models.Comment;
import com.van.travel.models.Tag;

public class TagFactory {
	public ArrayList<Tag> getHotTags(int limit){
		ArrayList<Tag> arr = new ArrayList<Tag>();
		String sql = "SELECT * FROM van_graduation_thesis.travel_tag order by clicked limit "+limit;
		try {
			Tag tempTag = new Tag();
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				Tag tag = (Tag) tempTag.rowToObj(rs);
				arr.add(tag);
			}
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
}
