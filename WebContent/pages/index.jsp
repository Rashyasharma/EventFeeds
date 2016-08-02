<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/style.css">
<title>EventFeeds | Home</title>
</head>


<body>


<jsp:include page="menu.jsp"></jsp:include>


<% 
  		HttpSession session1 = request.getSession(false);
if (session1 == null || session.getAttribute("loggedin") == null) {
		
		
 %>
<jsp:include page="Register.jsp"></jsp:include>

<%
 }
 
 %>
 

<div class="header" >


<h1 id="headtext">Eventfeeds.</h1>
<div id="orangetext">
<h1>Your Celebrations , Our Responsibilty.</h1>


</div><br>

<div class="content">

<h1 id="contenttext">Find your next experience</h1>
<br>
<form>
<div class="ui action input" style="width:650px;height: 45px;margin-left:340px">
  <input type="text" id="eventsearch" placeholder="Search...">
  <button type="submit"  class="ui button"><a href="https://www.google.com/">Search</a></button>
</div>
</form>


<br>
<h1 id="contenttext2">
"Find  some  awesome  and  beautiful  Experiences  near  you .<br>
   Enhance  Yourself  and  Be  a  Part  of  Awesomeness Around you.  "   
</h1>





</div>



<div class="bottom">

<h1 id="contenttext">&nbsp;&nbsp;.Create Your Own Event.</h1>
<h1 id="contenttext2">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bring people together, or turn your passion into a business. <br>
Eventbrite gives you everything you need to host your best event yet.   
</h1>

<div>
<button class="ui blue button primary"  style="width:650px;height: 45px;margin-left:340px;;text-decoration: none;"><a style="color:white" href="Createevent.jsp" >GET STARTED</a></button>

</div>

 

</div>

<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>