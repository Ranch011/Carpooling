<%@ include file="employeelogin.jsp" %>
<%@ page import ="java.io.*" %>
<body background ="C:\\Users\\$ujeet kumar yadav\\Desktop\\carp.jpg">
<% try
{
	FileReader fr =new FileReader("D:/about.txt");
   BufferedReader br = new BufferedReader(fr);
     while(true)
       {
         String n=br.readLine();
         if(n==null)
         {
        	 break;
         }
         out.println("\n"+n);
        
        }
         fr.close();
}

 catch(Exception e)
    {
	 out.println(e);
    }
%>