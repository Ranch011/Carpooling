<%@include file ="sql.jsp" %>
<%@include file="empindex2.jsp"%>

<%
String userrequestemail =(String)session.getAttribute("useremail");
String driveremail =(String)session.getAttribute("ememail");
String otp1 =(String)session.getAttribute("otp");
String reject ="ACCEPETED "+otp1+"";
try{
	
 
 
%>
<% 

 %>
<%
  int res =st.executeUpdate("update status2 set status ='"+reject+"' where useremail ='"+userrequestemail+"' and email ='"+driveremail+"'  ");
	 
     if(res>0)
     {
     %>
 <%=otp1%> THANK YOU FOR ACCEPETING RQUEST .....<%=userrequestemail%> DRIVER<%=driveremail%>
    <%} %>
 <%}catch(Exception e){%>
  Sorry:<%=e%> occured
 <%}%>


