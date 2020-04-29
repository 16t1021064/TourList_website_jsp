package com.van.travel.api.common.auth;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.van.travel.common.Database;

public class AuthDbAccess {
	private Database db = new Database();
	
	
	public int countAuth(String username, String processName, String screenId) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		
		String sql = " SELECT COUNT(*) AS total ";
		sql += " FROM auth_screens, auth_processes ";
		sql += " WHERE ";
		sql += "       auth_screens.user_id=? ";
		sql += "   AND auth_screens.func_id=? ";
		sql += "   AND auth_screens.func_id=auth_processes.func_id ";
		sql += "   AND auth_screens.auth=auth_processes.auth ";
		sql += "   AND auth_processes.process_name=? ";
		sql += "   AND auth_processes.execute_flag=1 ";
		
		PreparedStatement stmt = this.db.getPreparedStatement(sql);
		
		stmt.setString(1, username);
		stmt.setString(2, screenId);
		stmt.setString(3, processName);
		
		ResultSet rs = stmt.executeQuery();
		
		rs.next();
		
		return rs.getInt("total");
		
	}
	
}
