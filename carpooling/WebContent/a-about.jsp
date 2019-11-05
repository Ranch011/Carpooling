<%@ include file="adminlogin.jsp" %>
<%@ page import= "java.io.*" %>
<%@ page import= "java.util.*" %><br><br><br>
<body background ="C:\\Users\\$ujeet kumar yadav\\Desktop\\carp.jpg">
<html>
<body>
<form action ="Aabout.jsp" method="post">
add something here: <input type="text" name="name"/>
<input type="submit"/><br><br><br>
<% 
try{
   FileReader fr = new FileReader("D:/about.txt");
   BufferedReader br = new BufferedReader(fr);
   
    while(true)
      {
       String n=br.readLine();
        if(n==null)
         {
           break;
         }
         out.println(n);
}
   fr.close();


}catch(Exception e)
{
	out.println(e);
}
%>

</html>