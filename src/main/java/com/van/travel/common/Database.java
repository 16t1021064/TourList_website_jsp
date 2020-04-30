package com.van.travel.common;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import com.mysql.jdbc.PreparedStatement;

public class Database {
	
	/**
	 * get connection
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public Connection getConnection() {
		Connection conn;
		try {
			Properties databaseProperties =  new Properties();
			databaseProperties.load((new FileConstant()).getDatabase());
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn=DriverManager.getConnection(
					"jdbc:mysql://"+ databaseProperties.getProperty("ip") +":"+ databaseProperties.getProperty("port") +"/" + databaseProperties.getProperty("dbname")+"?useUnicode=yes&characterEncoding=UTF-8",
					databaseProperties.getProperty("user"),
					databaseProperties.getProperty("password"));			
		}catch(Exception e) {
			e.printStackTrace();
			conn = null;
		}

		
		return conn;
	}
	
	/**
	 * Get prepared statement
	 * @param sql
	 * @return
	 * @throws ClassNotFoundException
	 * @throws FileNotFoundException
	 * @throws SQLException
	 * @throws IOException
	 */
	public PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, FileNotFoundException, SQLException, IOException {
		return (PreparedStatement) this .getConnection().prepareStatement(sql);
	}
}
 