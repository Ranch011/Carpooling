<%@include file="sql.jsp" %>
 <%

       String en=request.getParameter("e-name");
       String eun=request.getParameter("e-username");
       String em=request.getParameter("e-email");
       String eph=request.getParameter("e-phoneno");
       String ep=request.getParameter("e-password");
       String epc=request.getParameter("e-confirmpassword");
       if(ep.equals(epc)){
int res =st.executeUpdate("insert into emplog values('"+en+"','"+eun+"','"+em+"','"+eph+"','"+ep+"')");%>
<jsp:forward page="employee.jsp"/>
      <% }
       else
       {
    	 %><font color ="red">plese confirm password</font>
    	 <jsp:include page="e-createaccount.jsp"/>
    	 <%   
       }

%>

