<%@ include file="index1.jsp" %><br>
<html>
<head>
<title>
</title>
<link rel = "stylesheet" type ="text/css" href ="ustyle2.css"/>
</head>
<body>
<form action ="u-LOGIC.jsp" method="post">
<div class="ecreatebox">
<center>CREATE NEW ACCOUNT</center><br>
<center>
<input type="text" name ="e-name" placeholder="name" required="required"/><br><br>
<input type="text" name ="e-username" placeholder="username" required="required"/><br><br>
<input type="email" name ="e-email" placeholder="email" required="required"/><br><br>
<select><option>+91</option>
        <option>+91</option>
        <option>+987</option>
        <option>+989</option>
        <option>+999</option>
        <option>+996</option>
</select>
<input type ="phoneno" name="e-phoneno" required="required" placeholder="phoneno"/><br><br>
<input type="password" name ="e-password" placeholder="password" required="required"/><br><br>
<input type="password" name ="e-confirmpassword" placeholder="confirmpassword" required="required"/><br><br>
<input type ="submit" value="Register" />
</center>
</div>
</form>
</body>
</html>