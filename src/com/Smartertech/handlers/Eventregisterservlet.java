package com.Smartertech.handlers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Smartertech.beans.Eventbean;

/**
 * Servlet implementation class Eventregisterservlet
 */
public class Eventregisterservlet extends HttpServlet {
	
    
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   		doWork(request,response);	
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doWork(request,response);
	}

	

	private void doWork(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session3 = request.getSession();
		String userid = (String)session3.getAttribute("userid");
		String organizer_name =(String)request.getParameter("organizer_name");
		String event_title =(String)request.getParameter("event_title");
		String location =(String)request.getParameter("location");
		String event_description =(String)request.getParameter("event_description");
		String startdate =(String)request.getParameter("startdate");
		String starttime =(String)request.getParameter("starttime");
		String enddate =(String)request.getParameter("enddate");
		String endtime =(String)request.getParameter("endtime");
		String ticket_costing =(String)request.getParameter("ticket_costing");
		String Event_listing =(String)request.getParameter("Event_listing");
		String Event_type =(String)request.getParameter("Event_type");
		
		System.out.println(userid);
		System.out.println(organizer_name);
		System.out.println(event_title);
		System.out.println(location);
		System.out.println(event_description);
		System.out.println(startdate);
		System.out.println(starttime);
		System.out.println(enddate);
		System.out.println(endtime);
		System.out.println(ticket_costing);
		System.out.println(Event_listing);
		System.out.println(Event_type);
		
		Eventbean bean = new Eventbean();
		bean.setId(userid);
		bean.setOrganizer_name(organizer_name);
		bean.setEvent_title(event_title);
		bean.setLocation(location);
		bean.setEvent_description(event_description);
		bean.setStartdate(startdate);
		bean.setStarttime(starttime);
		bean.setEnddate(enddate);
		bean.setEndtime(endtime);
		bean.setTicket_costing(ticket_costing);
		bean.setEvent_listing(Event_listing);
		bean.setEvent_type(Event_type);
		
		if(bean.insert())
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
