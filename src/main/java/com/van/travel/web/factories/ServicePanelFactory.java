package com.van.travel.web.factories;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.van.travel.common.Database;
import com.van.travel.models.ServicePanel;

public class ServicePanelFactory {
	public ArrayList<ServicePanel> getServicePanels(int limit) {
		ArrayList<ServicePanel> arr = new ArrayList<ServicePanel>();
		String sql = "";
		sql+=" SELECT ";
		sql+="     travel_service_panel.* ";
		sql+=" FROM ";
		sql+="     travel_service_panel ";
		sql+=" ORDER BY travel_service_panel.priority DESC ";
		sql+=" LIMIT "+limit+" ";
		try {
			ResultSet rs = (new Database()).getPreparedStatement(sql).executeQuery();
			while(rs.next()) {
				arr.add((ServicePanel) (new ServicePanel()).rowToObj(rs));
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
}
