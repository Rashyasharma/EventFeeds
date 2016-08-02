<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Event</title>

<link rel="stylesheet" href="../css/lib/jquery-clockpicker.css">
</head>
<body style="background-color:white">
<jsp:include page="menu.jsp"></jsp:include>

<% 
  		HttpSession session2 = request.getSession(false);
if (session2 == null || session2.getAttribute("loggedin") == null) 
response.sendRedirect("Login.jsp");
		
		
 %>


<div style="height:100px">

<div id="cehead">

 Create an event

</div>

<div id="cebuttons">
 <button class="ui primary button">
  Save
</button>
<button class="ui primary button">
  Preview
</button>
<button class="ui primary button">
  MAKE EVENT LINE
</button>

</div>
</div>


<div style="margin-top:-28px">
<div class="ui inverted segment">
  <div class="ui inverted secondary pointing menu">
    <a class="item active">
      Edit
    </a>
    <a class="item ">
      Design
    </a>
    
  </div>
</div>

</div>

<form class="ui form"  action="../Eventregisterservlet" method="post">
<div id="cedetailswrapper">

<div id="cecontentheader">
<div id="cedetailshead">

1. Event Details

</div>
<div class="tips">
<a id="eventdetailstipslink"> Tips </a>
</div>
</div>
<hr style="margin-top:-75px;margin-left:180px;" >

<div id="cecontent">

<div class="field">
    <label>ORGANIZER's  NAME  (can be individual,group,etc) *</label>
    <input type="text" name="organizer_name" Placeholder=" Name">
  </div>

<div class="field">
    <label>EVENT TITLE *</label>
    <input type="text" name="event_title" Placeholder="Give it a short Eye-catchy Name">
  </div>



<div class="field">
    <label>LOCATION *</label>
    <input type="text" name="location" Placeholder="Specify Where it is held">
  </div>
  
  
  <div class="field">
    <label>EVENT DESCRIPTION*</label>
    <textarea name="event_description"  Placeholder="Tell People Something About Your event"></textarea>
  </div>
  
  <br>
  
  
  <div class="field">
    <label>START DATE * </label>
    <input type="text" id="start" name="startdate" >
  </div>
  
  <div class="field">
    <label>START TIME * </label>
    <input type="text" class="clockpicker"  name="starttime" >
  </div>
   <br>
  
  <div class="field">
    <label>END DATE * </label>
    <input type="text"  id="end" name="enddate" >
  </div>

<div class="field">
    <label>END TIME * </label>
    <input type="text" class="clockpicker" name="endtime" >
  </div>
  
  









</div>
</div>

<div id="cedetailswrapper">
<div id="cecontentheader" >

<div id="cedetailshead">
2. Create Tickets
</div>
<div class="tips">
<a> Tips </a>
</div>
</div>
<hr style="margin-top:-75px;margin-left:180px;" >

<div id="cecontent">

What type of ticket would you like to start with?
<br>
<br>


<div class="field">
    <label>Ticket Costing</label>
    <br>
    <select class="ui dropdown" name="ticket_costing">
      <option value="">Tickets should be</option>
      <option value="1">FREE</option>
      <option value="0">PAID</option>
    </select>
  </div>






</div>
</div>

<div id="cedetailswrapper">
<div id="cecontentheader">

<div id="cedetailshead">
3. Additional Settings
</div>
<div class="tips">
<a> Tips </a>
</div>
</div>
<hr style="margin-top:-75px;margin-left:180px;" >
<div id="cecontent">



<div class="field">
    <label>EVENT LISTING</label>
    <br>
    <select class="ui dropdown" name="Event_listing">
      <option value="">Your Event Should Be</option>
      <option value="1">PUBLIC</option>
      <option value="0">PRIVATE</option>
    </select>
  </div>
  
  <div class="field">
    <label>EVENT Type</label>
    <br>
    <select class="ui dropdown" name="Event_type">
      <option value=""></option>
      <option value="1">Appearance or Signing</option>
      <option value="2">Class, Training, or Workshop</option>
      <option value="3">Concert or Performance</option>
      <option value="4">Festival or Fair</option>
      <option value="5">Game or Competition</option>
      <option value="6">Meeting or Networking Event</option>
      <option value="7">Seminar or Talk</option>
      <option value="8">Rally</option>
      <option value="9">Tournament</option>
      <option value="10">Other</option>
      
    </select>
  </div>
  </div>
  
  <div id="cecontent">

<button class="ui primary button" type="submit">
  Save
</button>
<button class="ui primary button">
  Preview
</button>
<button class="ui primary button">
  MAKE EVENT LINE
</button>

</div>









</div>
</form>



<jsp:include page="footer.jsp"></jsp:include>
<script src="../js/lib/jquery-clockpicker.js"></script>
<script type="text/javascript">
$('.clockpicker').clockpicker();
</script>
<script>$( "#start").dateDropper();</script>
<script>$( "#end").dateDropper();</script>
</body>
</html>