package com.van.travel.models.setting;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.JSONObject;

import com.mysql.jdbc.PreparedStatement;
import com.van.travel.common.Database;

public class AbstractSetting {
	protected String key = null;
	
	protected String plain_data = null;
	
	public JSONObject data = null;
	
	public AbstractSetting(String key) {
		this.key = key;
		this.readData();
		this.convertData();
	}
	
	protected void readData() {
		String sql = "SELECT travel_setting.* FROM travel_setting where (travel_setting.key='"+this.key+"') limit 1";
		try {
			PreparedStatement stmt = (new Database()).getPreparedStatement(sql);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				this.plain_data = rs.getString("value");
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void convertData() {
		if(this.plain_data != null) {
			this.data = new JSONObject(this.plain_data);
		}
	}
	
	public void writeData() {
		String sql = "UPDATE travel_setting set travel_setting.value=? where (travel_setting.key='"+this.key+"')";
		try {
			PreparedStatement stmt = (new Database()).getPreparedStatement(sql);
			stmt.setString(1, this.data.toString());
			stmt.executeUpdate();
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
