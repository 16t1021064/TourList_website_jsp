package com.van.travel.api.common.token;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.van.travel.common.Database;
import com.van.travel.common.DateConvertion;

/**
 * This object access process tokens table in database
 * @author pt_vien
 *
 */
public class TokenDbAccess {
	
	private Database db = new Database();
	
	/**
	 * check token
	 * @param username
	 * @param token
	 * @return
	 * @throws ClassNotFoundException
	 * @throws FileNotFoundException
	 * @throws SQLException
	 * @throws IOException
	 */
	public Object[] checkValidToken(String username, String token) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		
//		init data will be returned -->
		Object[] dataReturn = new Object[2];
//		dataReturn[0]: boolean value, true if success, false if fail
//		dataReturn[1]: String value, it contain the message when dataReturn[0] = false
//		<--
		
		CallableStatement stmt = this.db.getConnection().prepareCall("{CALL select_tokens(?, ?)}");
		
		stmt.setString(1, username);
		stmt.setString(2, token);
		
		ResultSet rs = stmt.executeQuery();
		
		if(rs.next()) {
			
			DateConvertion dateConvertion = new DateConvertion();
			
			Date expiredDate = dateConvertion.toUtilDate(rs.getTimestamp("expired_date"));
			
			Date now = dateConvertion.toUtilDate(rs.getTimestamp("now_time"));
			
			if(expiredDate.getTime() < now.getTime()) {
				dataReturn[0] = false;
				dataReturn[1] = "Authentication session expired.";
			}else {
				dataReturn[0] = true;
				dataReturn[1] = "valid token";
			}
			
		}else {
			dataReturn[0] = false;
			dataReturn[1] = "Unauthorized";
		}
		
		return dataReturn;
		
	}
	
	/**
	 * Save a token to user
	 * @param username
	 * @param token
	 * @param minute
	 * @return
	 * @throws ClassNotFoundException
	 * @throws FileNotFoundException
	 * @throws SQLException
	 * @throws IOException
	 */
	public int storeInitedToken(String username, String token, int minute) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		
		CallableStatement stmt = this.db.getConnection().prepareCall("{CALL insert_token(?, ?, ?)}");
		
		stmt.setString(1, username);
		stmt.setString(2, token);
		stmt.setInt(3, minute);
		
		return stmt.executeUpdate();
		
	}
	
	/**
	 * Update token to user
	 * @param username
	 * @param token
	 * @param minute
	 * @return
	 * @throws ClassNotFoundException
	 * @throws FileNotFoundException
	 * @throws SQLException
	 * @throws IOException
	 */
	public int updateToken(String username, String token, int minute) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		
		CallableStatement stmt = this.db.getConnection().prepareCall("{CALL update_token(?, ?, ?)}");
		
		stmt.setString(1, username);
		stmt.setString(2, token);
		stmt.setInt(3, minute);
		
		return stmt.executeUpdate();
		
	}
	
	/**
	 * clear all tokens of users
	 * @param username
	 * @return
	 * @throws ClassNotFoundException
	 * @throws FileNotFoundException
	 * @throws SQLException
	 * @throws IOException
	 */
	public int clearAllSession(String username) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		PreparedStatement stmt = this.db.getPreparedStatement("DELETE FROM tokens WHERE username=?");
		
		stmt.setString(1, username);
		
		return stmt.executeUpdate();
	}
	
}
