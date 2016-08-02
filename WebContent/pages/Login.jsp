<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In </title>
</head>
<jsp:include page="menu.jsp"></jsp:include>
<body style="background-color:white">



<div class="loginpage">

<div class="logindiv">


<i class="ui blue ribbon label">Log In</i>


<form action="../userloginservlet"  method="post">
<br>
<br>



   <div class="ui form">
  <div class="field">  
  <input type="email" placeholder="Email"  name="email">
  </div>
  </div><br>
  
  <div class="ui form">
  <div class="field">  
  <input type="password" placeholder="Password"  name="password">
  </div>
  </div><br>
  
  <button class="ui button primary"  id="submitbtn" type="submit">Log In</button>
  
  <div class="field">
    <div class="ui checkbox">
    <br>
      <input type="checkbox"  id="Rememberme"  tabindex="0" class="hidden">
      <label style="color:white">Remember me</label>
    </div>
    
    <br><a style="color:white;float:right">Forgot Password?</a>
  
  


</form>
<br><br>
Not Having an Account ?<a href="index.jsp" > Click Here</a> to Sign up.


</div>


</div>



<script>
$('.ui.checkbox')
  .checkbox()
;

</script>
</body>
</html>