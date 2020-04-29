package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

import com.van.travel.common.Database;

public abstract class AbstractModel {
	public String tableName;
	public AbstractModel() {
		super();
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
	public abstract Object find(String id);
	
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
		Connection conn = (new Database()).getConnection();
		try {
			PreparedStatement stmt = conn.prepareStatement("select * from " + this.tableName);
			ResultSet rs = stmt.executeQuery();
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
