package com.Smartertech.beans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Smartertech.Utility.DBUtil;
import com.Smartertech.Utility.DML;

public class Eventbean {
	
	private int eventid;
	String id;
	String organizer_name;
	String event_title;
	String location;
	String event_description;
	String startdate;
	String starttime;
	String enddate;
	String endtime;
	String ticket_costing;
	String Event_listing;
	String Event_type;
	
	public int getEventid() {
		return eventid;
	}
	public void setEventid(int eventid) {
		this.eventid = eventid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOrganizer_name() {
		return organizer_name;
	}
	public void setOrganizer_name(String organizer_name) {
		this.organizer_name = organizer_name;
	}
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEvent_description() {
		return event_description;
	}
	public void setEvent_description(String event_description) {
		this.event_description = event_description;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getTicket_costing() {
		return ticket_costing;
	}
	public void setTicket_costing(String ticket_costing) {
		this.ticket_costing = ticket_costing;
	}
	public String getEvent_listing() {
		return Event_listing;
	}
	public void setEvent_listing(String event_listing) {
		Event_listing = event_listing;
	}
	public String getEvent_type() {
		return Event_type;
	}
	public void setEvent_type(String event_type) {
		Event_type = event_type;
	}
	
	
public boolean insert()
	
	{
		
		
		eventid = DML.generateID("EFEVENTS", "EVENTID");
		
		System.out.println(id);
		System.out.println(eventid);
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
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into EFEVENTS values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try
		{
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setInt(2, eventid);
			pstmt.setString(3, organizer_name);
			
			pstmt.setString(4,event_title );
			pstmt.setString(5,location );
			pstmt.setString(6, event_description);
			pstmt.setString(7, startdate);
			pstmt.setString(8,starttime );
			pstmt.setString(9,enddate );
			pstmt.setString(10, endtime);
			pstmt.setString(11,ticket_costing );
			pstmt.setString(12,Event_listing );
			pstmt.setString(13,Event_type );
			
			
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
