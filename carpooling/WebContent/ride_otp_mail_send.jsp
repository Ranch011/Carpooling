<%@ page import="java.util.Properties,javax.mail.*,javax.activation.*,javax.mail.internet.*" %>
<%@page import ="java.util.Random"%>
<%

 
%>
<%! 
    Random r = new Random();
	int otp =r.nextInt(10000);
%>
<%
String mail=(String)session.getAttribute("useremail");
String drivermail=(String)session.getAttribute("ememail");

String otp1 = Integer.toString(otp);
String m = "yor ride  OTP is : ";
String me =m+otp1;
String me1= me+":it is valid up to 3 minute";
session.setAttribute("otp",otp1);
session.setAttribute("useremail",mail);
session.setAttribute("ememail",drivermail);
String mai=mail;

%>
<%
String host = "smtp.gmail.com";
String userid = "sujeetyadav9517@gmail.com"; 
String password = "gmail@12345"; 
String to_email=mail;
String subject="OTP";
String msg= me1;
try
{
Properties p=new Properties();
Session sess=Session.getInstance(p); 
MimeMessage message =new MimeMessage(sess); 
InternetAddress fromAddress = new InternetAddress(userid);
InternetAddress toAddress = new InternetAddress(to_email);
message.setFrom(fromAddress);
message.setRecipient(Message.RecipientType.TO, toAddress);
message.setSubject(subject);
message.setText(msg);


Transport transport = sess.getTransport("smtps"); 
transport.connect(host, userid, password); 
transport.sendMessage(message,message.getAllRecipients()); 
transport.close(); 
%>
<jsp:forward page ="emp_accept.jsp"/>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>
