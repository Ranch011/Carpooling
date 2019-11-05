<%@include file="sql.jsp" %>
<%
String name="";
String uname="";
String email="";
%>
<%
    String spun=request.getParameter("u-username2");
    String sppass=request.getParameter("u-password2");
    session.setAttribute("username",spun);
    ResultSet rs1 = st.executeQuery("select * from ulog where uusername='"+spun+"' ");
    while(rs1.next())
    {
    	 name =rs1.getString("uname");
    	 uname =rs1.getString("uusername");
    	 email =rs1.getString("uemail");
    	 
    }
    session.setAttribute("name",name);
    session.setAttribute("uname",uname);
    session.setAttribute("uemail",email);
    ResultSet rs = st.executeQuery("select * from ulog where uusername='"+spun+"' and upassword ='"+sppass+"' ");	
    if(rs.next())
    {
    	%>
    	
    	<jsp:forward page="u_mpindex3.jsp"/>
   <% 	
    }else
    {
  %>
 <center><font color ="red">invalid username or password</font></center>
 <jsp:include page="user.jsp"/>
 <%
    } 
%>