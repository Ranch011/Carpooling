<html>
<head>
<title>
</title>
<link rel = "stylesheet" type ="text/css" href ="style2.css"/>
</head>
<body>
<%@ include file="index1.jsp" %>
<form action ="e-LOGIC2loginjsp.jsp" method="post">
<div class="loginbox">

<center>LOGIN HERE </center><br>
<center>
<p>username</p>
<input type="text" name ="e-username2" placeholder="username" required="requird"/><br><br>
<p>password</p> <input type="password" name ="e-password2" placeholder="password" required="requird"/><br><br>
<input type= "submit" value="LOGIN"/><br><br>
<a href="e-passwordrecover.jsp">forgot password?</a><br>
<p class="message">dont have account?<a href ="e-createaccount.jsp">create</a></p>

</center>
</div>
</form>
</body></html>
