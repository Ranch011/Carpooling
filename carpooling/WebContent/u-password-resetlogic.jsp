<%@include file ="sql.jsp"%>

<%
try{
String email =request.getParameter("mail");
session.setAttribute("mail",email);	
ResultSet rs = st.executeQuery("select * from ulog where uemail ='"+email+"' ");
if(rs.next())
{
	
%>
<jsp:forward page ="u_otp_mail_send.jsp"/>

<%
}else{
%>
<jsp:include page ="u_password_reset.jsp" />
<center><font color ="red">please enter your register email id</font></center>
<%}}catch(Exception e)
{
%>
Sorry::<%=e %>: occured
<%	
}%>