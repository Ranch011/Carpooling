<%@include file="sql.jsp" %>
<%
String ename="";
String euname="";
String eemail="";
%>
<%
    String spun=request.getParameter("e-username2");
    String sppass=request.getParameter("e-password2");
    ResultSet rs1 = st.executeQuery("select * from emplog where username='"+spun+"' and password ='"+sppass+"' ");
      while(rs1.next())
      {
    	  ename =rs1.getString("name");
     	 euname =rs1.getString("username");
     	 eemail =rs1.getString("email");
      }
      session.setAttribute("ename",ename);
      session.setAttribute("euname",euname);
      session.setAttribute("eemail",eemail);
    ResultSet rs = st.executeQuery("select * from emplog where username='"+spun+"' and password ='"+sppass+"' ");	
    if(rs.next())
    {
    	%>
    	<jsp:forward page="empindex2.jsp"/>
   <% 	
    }else
    {
  %>
 <center><font color ="red">invalid username or password</font></center>
 <jsp:include page="employee.jsp"/>
 <%
    } 
%>