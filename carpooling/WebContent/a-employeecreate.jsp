<%@include file="adminlogin.jsp" %>
<html>
<body>
<form action="a-employeecreateLOGIC.jsp" method="post">
<div class="aempdetailbox">
<center>
<input type ="text" name="ae-name" placeholder="employee-name" required="required"/><br><br>
<input type ="text" name="ae-profession" placeholder="employee-profession" required="required"/><br><br>
<input type ="email" name="ae-email" placeholder="employee-email" required="required"/><br><br>
<input type ="phoneno" name="ae-phone" placeholder="employee-phone" required="required"/><br><br>
<input type ="text" name="ae-passenger" placeholder="no of passenger" required="required"/><br><br>
<input type ="text" name="ae-carnamne" placeholder="carname" required="required"/><br><br>
<input type ="text" name="ae-carno" placeholder="carno" required="required"/><br><br>
<input type ="text" name="ae-source" placeholder="source" required="required"/>TO<input type ="text" name="ae-destination" placeholder="destination" required="required"/><br><br>
<input type ="text" name="ae-timimg" placeholder="timing" required="required"/><br><br>
<input type ="text" name="ae-seats" placeholder="seat" required="required"/><br><br>
<input type ="submit" value ="submit"/>
</center>
</div>
</form>
</body>
</html>
