package com.Smartertech.beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Smartertech.Utility.DBUtil;
import com.Smartertech.constants.DBConstant;

public class IsEmailExists {
	
	private String  email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



public boolean EmailChecker()


{
	
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	

	String sql = "select * from EFusers where " + DBConstant.COL_EMAIL + "='" + email + "'";
	
	try
	{
		con = DBUtil.getConnection();
		stmt = con.createStatement();
		
		
		System.out.println(sql);
		rs = stmt.executeQuery(sql);
		
		if(rs.next())
		
			return false;	
}
	
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	finally
	{
		DBUtil.closeConnection(rs, stmt, con);
	}
	
	return true;
}

}