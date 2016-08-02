package com.Smartertech.handlers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Smartertech.Utility.DBUtil;


public class userloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String em = request.getParameter("email");
		String pw = request.getParameter("password");

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		
		try
		{
			con = DBUtil.getConnection();
			stmt = con.createStatement();
			
			rs = stmt.executeQuery("select * from EFusers where email = '" + em + "' and password = '" + pw + "'");
			
			if(rs.next())
			{
				HttpSession session = request.getSession();
				System.out.println(session.getId());
				session.setAttribute("loggedin", true);
				session.setAttribute("username", rs.getString("name"));
				session.setAttribute("userid", rs.getString("id"));
				System.out.println(session.getAttribute("userid"));
				response.sendRedirect("pages/index.jsp");
				
				
				
			}
			else
			{
				System.out.println("hello");
				response.sendRedirect("pages/Login.jsp");
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			DBUtil.closeConnection(rs, stmt, con);
		}
	}
}



	