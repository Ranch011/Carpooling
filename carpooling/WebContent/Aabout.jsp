<%@ include file="adminlogin.jsp" %>
<%@ page import= "java.io.*" %>
<%@ page import= "java.util.*" %>
<br><br><br>
<%
String s;
s=request.getParameter("name");
out.println(s);
try{
	FileWriter fw=new FileWriter("D:/about.txt",true);
	fw.write(s);
	fw.flush();
	fw.close();
FileReader fr =new FileReader("D:/about.txt");
BufferedReader br = new BufferedReader(fr);
while(true)
{
String n=br.readLine();
if(n==null)
{
break;}
out.println(n);
}
fr.close();


}catch(Exception e)
{
	out.println(e);
}
%>
