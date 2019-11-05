<%
String otp1 =(String)session.getAttribute("otp1");  
String newo=request.getParameter("otp");
String email=(String)session.getAttribute("email");
session.setAttribute("email",email);
%>
<%
if(otp1.equals(newo))
{
%>
<jsp:forward page ="u_reset_page.jsp"/>
<%
}else
{
	%>
	 <jsp:include page ="u_input_otp.jsp"/>
	please enter the correct otp
	<%
	
}
%>