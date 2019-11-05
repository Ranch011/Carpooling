<%@include file ="sql.jsp"%>
<%
int res;
try{
String email=(String)session.getAttribute("email");
String pass =request.getParameter("password");
String cpass =request.getParameter("re-password");

if(pass.equals(cpass))
{
	 res =st.executeUpdate("update ulog set upassword='"+pass+"' where uemail='"+email+"' ");
	
}
else
{
	%>
	 <jsp:include page ="u_reset_page.jsp"/>
	please confirm password
	<%
}}catch(Exception e){
%>
sorry::<%=e%>occured
<%}%>
	your password is changed...<a href ="user.jsp">home</a>
	