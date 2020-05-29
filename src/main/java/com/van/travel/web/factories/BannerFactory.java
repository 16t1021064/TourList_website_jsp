package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.van.travel.common.Database;
import com.van.travel.models.Banner;

public class BannerFactory {
	
	public ArrayList<Banner> getBanners(int limit) {
		ArrayList<Banner> arr = new ArrayList<Banner>();
		String sql = "";
		sql+=" SELECT ";
		sql+="     travel_banner.* ";
		sql+=" FROM ";
		sql+="     travel_banner ";
		sql+=" WHERE ";
		sql+="     travel_banner.active = 1 ";
		sql+=" ORDER BY travel_banner.priority DESC ";
		sql+=" LIMIT "+limit+" ";
		try {
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				arr.add((Banner) (new Banner()).rowToObj(rs));
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	
}
