package com.van.travel.common;

import java.io.InputStream;
import java.net.URL;
import java.nio.file.Paths;

/**
 * Define path files
 * @author pt_vien
 *
 */
public class FileConstant {
	
	
//	database config file -->
	public String database = "/../main/resources/config/DatabaseConfig.properties";
//	<--
	
//	token config file -->
	public String token = "/../main/resources/config/TokenConfig.properties";
//	<--
	
//	pagination config file -->
	public String pagination = "/../main/resources/config/PaginationConfig.properties";
//	<--

	public InputStream getDatabase() {
		ClassLoader classloader = Thread.currentThread().getContextClassLoader();
		InputStream is = classloader.getResourceAsStream("config/DatabaseConfig.properties");
		return is;
	}
	
	public InputStream getToken() {
		return getClass().getResourceAsStream(this.token);
	}
	
	public InputStream getPagination() {
		return getClass().getResourceAsStream(this.pagination);
	}
	
}
