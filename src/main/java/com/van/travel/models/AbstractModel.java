package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import com.van.travel.common.Database;

public abstract class AbstractModel {
	public String tableName;
	
	protected ArrayList<Object[]> hasMany_repos = new ArrayList<Object[]>();
	
	protected ArrayList<Object[]> belongsTo_repos = new ArrayList<Object[]>();
	
	public AbstractModel() {
		super();
	}
	
	protected Object getHasManyRepos(String key) {
		for(Object[] hasMany : this.hasMany_repos) {
			String keyRepos = (String) hasMany[0];
			if(keyRepos.equals(key)) {
				return hasMany[1];
			}
		}
		return null;
	}
	protected void setHasManyRepos(String key, Object data) {
		for(Object[] hasMany : this.hasMany_repos) {
			String keyRepos = (String) hasMany[0];
			if(keyRepos.equals(key)) {
				hasMany[1] = data;
				return;
			}
		}
		this.hasMany_repos.add(new Object[] {key, data});
	}
	
	protected Object getBelongsToRepos(String key) {
		for(Object[] belongsTo : this.belongsTo_repos) {
			String keyRepos = (String) belongsTo[0];
			if(keyRepos.equals(key)) {
				return belongsTo[1];
			}
		}
		return null;
	}
	protected void setBelongsToRepos(String key, Object data) {
		for(Object[] belongsTo : this.belongsTo_repos) {
			String keyRepos = (String) belongsTo[0];
			if(keyRepos.equals(key)) {
				belongsTo[1] = data;
				return;
			}
		}
		this.belongsTo_repos.add(new Object[] {key, data});
	}
	
	/**
	 * Get data to object
	 * @param rs
	 * @return
	 */
	public abstract Object rowToObj(ResultSet rs);
	
	/**
	 * Find object by id
	 * @param id
	 * @return
	 */
	public Object findObject(String id) {
		ResultSet rs = this.findRS(id);
		if(rs == null) {
			return null;
		}else {
			return this.rowToObj(rs);
		}
	}
	
	/**
	 * Save object
	 * @return
	 */
	public abstract Object save(boolean isNew);
	
	/**
	 * Delete object
	 * @return
	 */
	public abstract int delete();
	
	/**
	 * Delete object
	 */
	public int delete(String id) {
		Connection conn = (new Database()).getConnection();
		try {
			PreparedStatement stmt = conn.prepareStatement("delete from "+this.tableName+" where id=?");
			stmt.setString(1, id);
			return stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
	}
	
	/**
	 * Find result set by id
	 * @param id
	 * @return
	 */
	protected ResultSet findRS(String id) {
		Connection conn = (new Database()).getConnection();
		try {
			PreparedStatement stmt = conn.prepareStatement("select * from "+this.tableName+" where id=?");
			stmt.setString(1, id);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				return rs;
			}else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	protected ResultSet allRS() {
		ArrayList<Object[]> arr  = new ArrayList<Object[]>();
		return this.allRS(arr);
	}
	
	/**
	 * Note: Condition {column, operator, value, type['INT', 'STRING']}
	 * @param whereConditions
	 * @return
	 */
	protected ResultSet allRS(ArrayList<Object[]> whereConditions) {
		ArrayList<Object[]> arr  = new ArrayList<Object[]>();
		return this.allRS(whereConditions, arr);
	}
	protected ResultSet allRS(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys) {
		try {
			return this.queryWhereRS(" select * ", whereConditions, orderBys).executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
	protected PreparedStatement queryWhereRS(String preQuery, ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys) {
		Connection conn = (new Database()).getConnection();
		try {
			String sql = preQuery + " from " + this.tableName + " ";
			int index = 0;
			for(Object[] conditions : whereConditions) {
				index++;
				String col = (String) conditions[0];
				String operator = (String) conditions[1];
				if(index == 1) {
					sql += " where ";
				}else {
					sql += " and ";
				}
				sql += " " + col + " " + operator + " ? ";
			}
			int index2 = 0;
			for(Object[] orderBy : orderBys) {
				index2++;
				String col = (String) orderBy[0];
				String sort = (String) orderBy[1];
				if(index2 == 1) {
					sql += " order by ";
				}else {
					sql += " , ";
				}
				sql += " " + col + " " + sort + " ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			int cnt = 0;
			for(Object[] conditions : whereConditions) {
				cnt = cnt + 1;
				String type = (String) conditions[3];
				switch (type) {
					case "INT":
						int valueINT = (Integer) conditions[2];
						stmt.setInt(cnt, valueINT);
						break;
					case "STRING":
						String valueSTRING = (String) conditions[2];
						stmt.setString(cnt, valueSTRING);
						break;
				}
			}
			System.out.println(stmt.toString());
			return stmt;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	protected ArrayList<Object> allObject(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.allObject(arr);
	}
	protected ArrayList<Object> allObject(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.allObject(whereConditions, arr);
	}
	protected ArrayList<Object> allObject(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Object> arr = new ArrayList<Object>();
		ResultSet rs = this.allRS(whereConditions, orderBys);
		try {
			while(rs.next()) {
				arr.add(this.rowToObj(rs));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
}
