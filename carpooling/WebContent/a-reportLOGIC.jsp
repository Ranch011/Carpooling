<%@ include file="adminlogin.jsp" %>
<%@ page import ="java.io.*" %>

<% try
{
	FileReader fr =new FileReader("D:/report.txt");
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