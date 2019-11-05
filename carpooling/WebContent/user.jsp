<html>
<head>
<title>
</title>
<link rel = "stylesheet" type ="text/css" href ="ustyle2.css"/>
</head>
<body>
<%@ include file="index1.jsp" %>
<form action ="u-LOGIC2loginjsp.jsp" method="post">
<div class="loginbox">

<center>LOGIN HERE </center><br>
<center>
<p>username</p>
<input type="text" name ="u-username2" placeholder="username" required="requird"/><br><br>
<p>password</p> <input type="password" name ="u-password2" placeholder="password" required="requird"/><br><br>
<input type= "submit" value="LOGIN"/><br><br>
<a href="u_password_reset.jsp">forgot password?</a><br>
<p class="message">dont have account?<a href ="u-createaccount.jsp">create</a></p>

</center>
</div>
</form>
</body></html>
