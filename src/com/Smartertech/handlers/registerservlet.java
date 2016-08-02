package com.Smartertech.handlers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.Smartertech.beans.IsEmailExists;
import com.Smartertech.beans.userbean;


public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doWork(request,response);
		
	}


	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	doWork(request,response);
	}
	

	
	private void doWork(HttpServletRequest request, HttpServletResponse response) {
		
		
		
		String name =request.getParameter("name");
		String email =request.getParameter("email");
		String password =request.getParameter("password");
		
		
		
		
		userbean bean = new userbean();
		bean.setName(name);
		bean.setPassword(password);
		bean.setEmail(email);
		
		IsEmailExists checker = new IsEmailExists();
		checker.setEmail(email);
		
		boolean status = checker.EmailChecker();

		
		
		
		
		
		
		
		if(status&&(bean.insert()))
		{
			try {
				response.sendRedirect("pages/index.jsp");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else{
			try {
				response.sendRedirect("pages/index.jsp?success=false");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
			
	}
		
	}



	

