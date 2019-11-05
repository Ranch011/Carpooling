<%@ include file="index1.jsp" %>
<%
String email=(String)session.getAttribute("email");
session.setAttribute("email",email);
%>
<html>
<head>
<link rel = "stylesheet" type ="text/css" href ="style2.css"/>
</head>
<body>
   
      
        <div class ="loginbox">
         <form action ="e_reset_pagelogic.jsp" method ="post"><br>
          <input type ="password" name ="password" placeholder ="ente-new-password" size=20 required ="required"/><br><br><br> 
           <input type ="password" name ="re-password" placeholder ="confrim-password" size=20 required ="required"/><br><br><br>
           <input type ="submit"  value ="RESET" required ="required"/> 
        </div>
</body>
</html>