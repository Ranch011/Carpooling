<html><body><%
 String aun=request.getParameter("username1");
 String ap=request.getParameter("password1");
if(aun.equals("admin")&&ap.equals("12345"))
{
	%>
<jsp:forward page="adminlogin.jsp"/>
<%
}else{
%>
<p align="left"><font color="red">invalid username or password</font></p>
<jsp:include page="admin.jsp"/>

<%
}
%>
</body></html>