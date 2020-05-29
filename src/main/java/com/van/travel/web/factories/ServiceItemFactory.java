package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.van.travel.common.Database;
import com.van.travel.models.ServiceItem;

public class ServiceItemFactory {
	public ArrayList<ServiceItem> getServiceItems(int limit) {
		ArrayList<ServiceItem> arr = new ArrayList<ServiceItem>();
		String sql = "";
		sql+=" SELECT ";
		sql+="     travel_service_item.* ";
		sql+=" FROM ";
		sql+="     travel_service_item ";
		sql+=" WHERE ";
		sql+="     travel_service_item.active = 1 ";
		sql+=" ORDER BY travel_service_item.priority DESC ";
		sql+=" LIMIT "+limit+" ";
		try {
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				arr.add((ServiceItem) (new ServiceItem()).rowToObj(rs));
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
}
