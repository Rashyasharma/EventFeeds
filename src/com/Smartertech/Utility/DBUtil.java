package com.Smartertech.Utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {
static{
	//register sql server driver to jdbc.
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
			}
			catch(ClassNotFoundException e){
				e.printStackTrace();
			}
}
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle");
	}
	
	
	public static void closeConnection(ResultSet rs, Statement stmt, Connection con){
		if(stmt!=null){
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(con!=null){
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
}
