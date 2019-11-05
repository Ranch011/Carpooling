<%@include file ="sql.jsp" %>
<%@include file="u_mpindex3.jsp"%>
<%

try{
String s =(String)request.getParameter("ADD");
String id[] =s.split(",");
 String nam = id[0];
 String prof= id[1];
 String email= id[2];
 String phone = id[3];
 String nopas= id[4];
 String carna = id[5];
 String carno = id[6];
 String source = id[7];
 String dest = id[8];
 String time= id[9];
 String seat = id[10];
 
 String cst ="request pending";
 
 int res=st.executeUpdate("insert into status2 values('"+nam+"','"+prof+"','"+email+"','"+phone+"','"+nopas+"','"+carna+"','"+carno+"','"+source+"','"+dest+"','"+time+"','"+seat+"','"+cst+"','"+uemail+"','"+name+"')");

%>
 <%}catch(Exception e){%>
  Sorry:<%=e%> occured
 <%}%>
thank you for book our ride