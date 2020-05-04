package com.van.travel.common;

import java.util.ArrayList;

/**
 * prefix: qb
 * @author DELL
 *
 */
public class QueryBuilder {
	
	public static int QB_VALUE_TYPE_INT  = 1;
	public static int QB_VALUE_TYPE_STRING  = 2;
	public static int QB_VALUE_TYPE_BOOLEAN  = 3;
	
	public static int QB_KEY_WHEREAND = 1;
	/**
	 * ArrayList<Object>
	 * 			Object: QueryBuilder or Array<Object>
	 * 				Array<Object[]>: ["co_name", "=", 2, QB_VALUE_TYPE_INT]
	 */
	protected ArrayList<Object> qbWhereAndRepos = new ArrayList<Object>();
	
	public static int QB_KEY_WHEREOR = 2;
	protected ArrayList<Object> qbWhereOrRepos = new ArrayList<Object>();
	
	public static int QB_KEY_ORDER = 3;
	protected ArrayList<Object> qbOrderRepos = new ArrayList<Object>();
	
	public static int QB_KEY_LIMIT = 4;
	protected int qbLimitlimit = 100;
	
	protected String qbQuery = " ";
	
	protected String qbGenerateWhereAnd() {
		String query = " ";
		
		int cnt = 0;
		for(Object obj : this.qbWhereAndRepos) {
			if(obj instanceof QueryBuilder) {
				
			}
		}
		
		query += " ";
		if(query.trim().equals("")) {
			return null;
		}else {
			return query;
		}
	}
	
	protected String qbGenerateWhere() {
		String query = " ";
		
		
		
		query += " ";
		if(query.trim().equals("")) {
			return null;
		}else {
			return query;
		}
	}
	
	
	public String qbGenerate() {
		String query = " ";
		
		
		
		query += " ";
		if(query.trim().equals("")) {
			return null;
		}else {
			return query;
		}
	}
}
