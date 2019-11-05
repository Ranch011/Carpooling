<%@include file="sql.jsp"%>
<%@include file="u_mpindex3.jsp"%>
<% 
try{
	ResultSet rs = st.executeQuery("select * from status2 where username ='"+name+"' and useremail ='"+uemail+"' ");	
	while(rs.next())
	{
		String name1=rs.getString("name");
		String profession=rs.getString("profession");
		String email1=rs.getString("email");
		String phone1=rs.getString("phone");
		String passenger=rs.getString("passenger");
		String carname=rs.getString("carname");
		String carno=rs.getString("carno");
		String sorce=rs.getString("source");
		String destination=rs.getString("destination");
		String time=rs.getString("time");
		String seate=rs.getString("seat");
		String cst=rs.getString("status");
	%> 
<%

%>
<html>
<head>
<style type="text/css">

table, tr, td
 {
border:0.5px solid;
color: black;
}

table 
{
 background-color:white; 
}
tr
 {
 background-color: white;
 }
 
</style>

</head>
<body>
<form action ="u_book_ride_logic.jsp" method ="post">
<center>
<table class = "ubox"><tr class = "ubox1"><td class = "ubox2">
<center>
 NAME-<font color ="green"><%=name1%></font><br>
PROFESSION-<font color ="green"><%=profession%></font><br>
email1 -<font color ="green"><%=email1%></font><br>
phone1 -<font color ="green"><%=phone1%></font><br>
passenger-<font color ="red"><%=passenger%></font><br>
carname-<font color ="red"><%=carname%></font><br>
carno-<font color ="red"><%=carno%></font><br>
sorce-<font color ="red"><%=sorce%></font><br>
destination-<font color ="red"><%=destination%></font><br>
time-<font color ="red"><%=time%></font><br>
seate-<font color ="red"><%=seate%></font><br>
CURRENT STATUS-
<%if(cst.equalsIgnoreCase("REQUEST PENDING")){ %><font color ="yellow"><%=cst%></font><br><%}
else if(cst.equalsIgnoreCase("REQUEST REJECTED")){ %><font color ="red"><%=cst%></font><br><%}else { %><font color ="green">REQUEST <%=cst%> is your otp for ride also check your email</font><br><%} %>
--------------------------------------------------
</center></td></tr></table>
</center>
<%}}catch(Exception e){ %>
 sorry :<%=e %> occured
<%} %>
</form>
</body>
</html>
