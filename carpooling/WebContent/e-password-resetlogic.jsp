<%@include file ="sql.jsp"%>

<%
try{
String email =request.getParameter("mail");
session.setAttribute("email",email);	
ResultSet rs = st.executeQuery("select * from emplog where email ='"+email+"' ");
if(rs.next())
{
	
%>
<jsp:forward page ="e_otp_mail_send.jsp"/>

<%
}else{
%>
<jsp:include page ="e-passwordrecover.jsp" />
<center><font color ="red">please enter your register email id</font></center>
<%}}catch(Exception e)
{
%>
Sorry::<%=e %>: occured
<%	
}%>