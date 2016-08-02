package com.Smartertech.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.Smartertech.Utility.DBUtil;
import com.Smartertech.Utility.DML;
import com.Smartertech.constants.DBConstant;

public class userbean {
	
	private int id;
	private String name, email, password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	
	
	public boolean insert()
	
	{
		
		
		id = DML.generateID(DBConstant.TABLE_USERS, DBConstant.COL_ID);
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		
		String sql = "insert into " + DBConstant.TABLE_USERS + " values(?, ?, ?, ?, ?)";
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, email);
			
			pstmt.setString(4, password);
			pstmt.setInt(5, 0);
			
			pstmt.executeUpdate();
			
			
			
			return true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeConnection(null, pstmt, con);
		}
		
		return false;
	}

}



