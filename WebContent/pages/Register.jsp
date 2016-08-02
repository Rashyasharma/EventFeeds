<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/lib/semantic.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/fontawesome.css">
<script src="../js/lib/jquery.js"></script>
<script src="../js/lib/semantic.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>


<body>

<div id="registerdiv">
<a class="ui red ribbon label">Sign Up</a>

<form action="../registerservlet" method="post">
<br>
<br>

<div class="ui form">
<div class="field">
<input type="text" placeholder="Name" name="name">
</div>
</div><br>

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
  
  <div class="ui form">
  <div class="field">  
  <input type="password" placeholder="Re-Enter Password">
  </div>
  </div><br>
  
  <div class="field">
    <div class="ui checkbox">
      <input type="checkbox"  id="agreement" onchange="document.getElementById('submitbtn').disabled = !this.checked;" tabindex="0" class="hidden">
      <label style="color:rgb(37, 114, 255)">I agree to the Terms and Conditions</label>
    </div>
  </div><br>
  <button class="ui button" onclick="return validate()"  id="submitbtn" type="submit">Submit</button>
  
  


</form>
<br> <br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="https://www.facebook.com/"><button class="ui blue button">
  
  Sign Up Using Facebook
</button></a><br><br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
 <a href="https://plus.google.com"><button class="ui red button">
 
  Sign Up Using Google+
</button></a>


</div>

<script>
$('.ui.checkbox')
  .checkbox()
;

</script>
</body>
</html>