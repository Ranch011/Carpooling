<%@include file ="sql.jsp" %>
<%@include file="empindex2.jsp"%>
<%
String reject ="REQUEST REJECTED";
String userrequestemail =(String)session.getAttribute("useremail");
String driveremail =(String)session.getAttribute("ememail");

try{
	
 
 
%>

<% 

 %>
<%
  int res =st.executeUpdate("update status2 set status ='"+reject+"' where useremail ='"+userrequestemail+"' and email ='"+driveremail+"'  ");
	 
     if(res>0)
     {
     %>
   THANK YOU FOR YOR RESPONSE .....YOU ARE SUCCESFULLY DECLYNE THE REQUEST..
    <%} %>
 <%}catch(Exception e){%>
  Sorry:<%=e%> occured
 <%}%>


