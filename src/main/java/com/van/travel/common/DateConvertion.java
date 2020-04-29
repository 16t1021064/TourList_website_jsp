package com.van.travel.common;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Convert between types of date (time)
 * @author pt_vien
 *
 */
public class DateConvertion {
	
	private String dateFormat = "HH:mm dd/MM/yyyy";

	public String getDateFormat() {
		return dateFormat;
	}

	public void setDateFormat(String dateFormat) {
		this.dateFormat = dateFormat;
	}
	
//	========= to Util date =========
	
	public Date toUtilDate(String stringDate) {
		
		DateFormat format = new SimpleDateFormat(this.dateFormat);
		
		try {
			return format.parse(stringDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return null;
		}
		
	}
	
	public Date toUtilDate(java.sql.Date sqlDate) {
		return (new Date(sqlDate.getTime()));
	}
	
	public Date toUtilDate(Timestamp timestamp) {
		
		return new Date(timestamp.getTime());
		
	}
	
//	========= //======== // =========
	
	
//	========= to Sql date =========
	
	public java.sql.Date toSqlDate(Date utilDate){
		return (new java.sql.Date(utilDate.getTime()));
	}
	
	public java.sql.Date toSqlDate(String stringDate){
		return (this.toSqlDate(this.toUtilDate(stringDate)));
	}
	
//	========= //======== // =========
	
//	========= to String date =========
	
	public String toStringDate(Date utilDate) {
		DateFormat format = new SimpleDateFormat(this.dateFormat);
		
		return format.format(utilDate);
	}
	
	public String toStringDate(java.sql.Date sqlDate) {
		
		return this.toStringDate(this.toUtilDate(sqlDate));
		
	}
	
//	========= //======== // =========
	
//	========= to String date =========
	
	public Timestamp toTimestamp(Date utilDate) {
		
		return new Timestamp(utilDate.getTime());
		
	}
	
	
//	========= //======== // =========
	
}
