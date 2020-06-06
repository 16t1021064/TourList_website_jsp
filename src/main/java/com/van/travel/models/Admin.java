package com.van.travel.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.UUID;

import org.apache.commons.codec.digest.DigestUtils;

import com.van.travel.common.Database;
import com.van.travel.common.DateConvertion;

public class Admin extends AbstractModel {
	protected String id;
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	private String email;
	private String password;
	private boolean isSuperadmin;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isSuperadmin() {
		return isSuperadmin;
	}
	public void setSuperadmin(boolean isSuperadmin) {
		this.isSuperadmin = isSuperadmin;
	}
	public Admin() {
		super();
		this.tableName = "travel_admin";
	}

	@Override
	public Object rowToObj(ResultSet rs) {
		Admin admin = new Admin();
		try {
			admin.setId(rs.getString("id"));
			admin.setName(rs.getString("name"));
			admin.setEmail(rs.getString("email"));
			admin.setPassword(rs.getString("password"));
			admin.setSuperadmin(rs.getBoolean("is_superadmin"));
			return admin;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Object save(boolean isNew) {
		Connection conn = (new Database()).getConnection();
		try {
			String sql;
			if(isNew) {
				sql = " INSERT INTO "+this.tableName+" ";
				sql += "			(id, name, email, password, is_superadmin) ";
				sql += "    VALUES  (?, ?, ?, ?, ?) ";
			}else {
				sql = " UPDATE "+this.tableName+" ";
				sql += " SET	name=?, email=?, password=?, is_superadmin=? ";
				sql += "	WHERE id=? ";
			}
			PreparedStatement stmt = conn.prepareStatement(sql);
			if(isNew) {
				int i=0;
				stmt.setString(++i, this.id);
				stmt.setString(++i, this.name);
				stmt.setString(++i, this.email);
				stmt.setString(++i, this.password);
				stmt.setBoolean(++i, this.isSuperadmin);
			}else {
				int i=0;
				stmt.setString(++i, this.name);
				stmt.setString(++i, this.email);
				stmt.setString(++i, this.password);
				stmt.setBoolean(++i, this.isSuperadmin);
				stmt.setString(++i, this.id);
			}
			System.out.println(stmt.toString());
			
			stmt.executeUpdate();
			return this;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int delete() {
		return this.delete(this.id);
	}
	
	public ArrayList<Admin> toSelfList(ArrayList<Object> oArr){
		ArrayList<Admin> arr = new ArrayList<Admin>();
		for(Object o: oArr) {
			arr.add((Admin) o);
		}
		return arr;
	}
	public Admin find(String id) {
		Object o = this.findObject(id);
		if(o == null) {
			return null;
		}else {
			return (Admin) o;
		}
	}
	public Admin create(
			String name, 
			String email, 
			String password, 
			boolean isSuperadmin
		) {
		Admin admin = new Admin();
		admin.setId(UUID.randomUUID().toString());
		admin.setName(name);
		admin.setEmail(email);
		admin.setPassword(password);
		admin.setSuperadmin(isSuperadmin);
		return (Admin) admin.save(true);
	}
	public Admin update(
			String name, 
			String email, 
			String password, 
			boolean isSuperadmin
		) {
		this.setName(name);
		this.setEmail(email);
		this.setPassword(password);
		this.setSuperadmin(isSuperadmin);
		return (Admin) this.save(false);
	}
	public ArrayList<Admin> all(){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(arr);
	}
	public ArrayList<Admin> all(ArrayList<Object[]> whereConditions){
		ArrayList<Object[]> arr = new ArrayList<Object[]>();
		return this.all(whereConditions, arr);
	}
	public ArrayList<Admin> all(ArrayList<Object[]> whereConditions, ArrayList<Object[]> orderBys){
		ArrayList<Admin> arr = this.toSelfList(this.allObject(whereConditions, orderBys));
		return arr;
	}
}
