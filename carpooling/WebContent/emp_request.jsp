<%@ include file="empindex2.jsp" %>
<%@include file="sql.jsp"%>

  
<% 
try{
	ResultSet rs = st.executeQuery("select * from status2 where email = '"+empemail+"' ");
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
		String useremail=rs.getString("useremail");
		String username=rs.getString("username");
	%> 
<%
session.setAttribute("useremail",useremail);
session.setAttribute("ememail",email1);
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
<center>
<table class = "ubox"><tr class = "ubox1"><td class = "ubox2">
<center>
<form action = "ride_otp_mail_send.jsp" method ="post">

<BR>
 <%=username%> <BR>
 want to request for ride
 <BR><br>
  </center>
<input type ="submit" value ="ACCEPT REQUEST"/>
</form>
<form action ="emp_reject.jsp">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div align="right"><input type ="submit" value ="REJECT REQUEST"/>
</div></form></center>
--------------------------------------------------
</td></tr></table></center>
<%}}catch(Exception e){ %>
 sorry :<%=e %> occured
<%} %>
</body>
</html>