<%@ include file="index1.jsp"%>
<% 
String otp1 =(String)session.getAttribute("otp1"); 
String email =(String)session.getAttribute("email");
session.setAttribute("otp1",otp1);
session.setAttribute("email",email);
%>
<html>
<head>
<link rel ="stylesheet" type ="text/css" href ="ustyle2.css"/>
</head>
<body>
   
      
        <div class ="loginbox">
         <form action ="u_otp_confirm.jsp" method ="post"><br>
         <p> <h4>enter OTP which send to your email</h4></p>
          <input type ="text" name ="otp" placeholder ="enter OTP" size=10 required ="required"/><br><br><br> 
           <input type ="submit"  value ="done" required ="required"/> <a href = "u_otp_mail_send.jsp">RESEND</a> 
        </div>
</body>
</html>