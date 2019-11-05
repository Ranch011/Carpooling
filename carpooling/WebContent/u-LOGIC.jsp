<%@include file="sql.jsp" %>
 <%

       String en=request.getParameter("e-name");
       String eun=request.getParameter("e-username");
       String em=request.getParameter("e-email");
       String eph=request.getParameter("e-phoneno");
       String ep=request.getParameter("e-password");
       String epc=request.getParameter("e-confirmpassword");
       if(en!=null&&eun!=null){
       if(ep.equals(epc)){
int res =st.executeUpdate("insert into ulog values('"+en+"','"+eun+"','"+em+"','"+eph+"','"+ ep+"')");%>
<jsp:forward page="user.jsp"/>
      <% }
       else
       {
    	 %><font color ="red">plese confirm password</font>
    	 <jsp:include page="u-createaccount.jsp"/>
    	 <%   
       }}

%>

