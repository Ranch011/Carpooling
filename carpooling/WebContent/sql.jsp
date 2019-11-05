<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%
     Class.forName("oracle.jdbc.driver.OracleDriver");
			   Connection c = DriverManager.getConnection("jdbc:Oracle:thin:@localhost:1521:xe","System","Oracle");
			   Statement  st = c.createStatement();



%>