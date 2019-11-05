<%@ include file="employeelogin.jsp" %>
<%@ page import= "java.io.*" %>
<%@ page import= "java.util.*" %>

<%

 String report =request.getParameter("report");
String repemail =request.getParameter("email");
 
try{
	FileWriter fw=new FileWriter("D:/report.txt",true);
	out.println("\n");
	fw.write(repemail+"-->");
	fw.write(report);
	fw.flush();
	fw.close();
	out.println("\n");
	}
catch(Exception e)
{
	}
 %>
 .....thnx for submit your report.....