<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type='text/css' href="../css/fontawesome.css">
<link rel="stylesheet" href="../css/lib/semantic.css">



<link rel="stylesheet" href="../css/lib/jquery-clockpicker.css">
<link rel="stylesheet" href="../css/style.css">

<link rel="stylesheet" type="text/css" href="../css/lib/datedropper.css">
<script src="../js/lib/jquery.js"></script>

<script src="../js/lib/datedropper.js"></script>
<script src="../js/lib/stickUp.min.js"></script>
<script src="../js/lib/semantic.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eventfeed | Home</title>
<link rel="shortcut icon" href="../images/logoicon.ico"/>
</head>
<body>


<div class="ui stackable sticky menu overlay" style="width:100%" >
  <div class="item">
   <img src="../images/logo.png">
  </div>
  <a class="item" href="index.jsp">Home</a>
  <a class="item" href="Createevent.jsp">Create Event</a>
  
  <% 
  		HttpSession session1 = request.getSession(false);
if (session1 == null || session.getAttribute("loggedin") == null) {
		
		
 %>
 <a class="item" href="Login.jsp">Log In</a>
 
 <%
 }
 else
 { %>
 
  <div class="ui simple dropdown item">
   <i class="fa fa-user"></i>&nbsp;&nbsp; <%= session.getAttribute("username")%>
    <i class="dropdown icon"></i>
    <div class="menu">
      <div class="item">Tickets</div>
      <div class="item">Saved</div>
      <hr>
      <div class="item">My Events</div>
      <div class="item">My Profile</div>
      <div class="item">My Contacts</div>
      <hr>
      <div class="item">Settings</div>
      <div class="item"><a href="logoutuser.jsp">Log out</a></div>
    </div>
  </div>

  
  <%
 }
 %>
  
  
  <a class="item" href="How_it_works.jsp"  style="margin-left:720px">How it Works</a>
  <a style="padding:1px;" href="Browseevents.jsp"><button  class="ui  item blue basic button">Browse Events</button></a>
  
  </div>
  
 
  
  
<script type="text/javascript">
              //initiating jQuery
              jQuery(function($) {
                $(document).ready( function() {
                  //enabling stickUp on the '.navbar-wrapper' class
                  $('.sticky').stickUp();
                });
              });

            </script>

</body>
