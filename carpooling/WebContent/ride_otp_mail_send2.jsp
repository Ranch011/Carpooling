<%@ page import="java.util.Properties,javax.mail.*,javax.activation.*,javax.mail.internet.*" %>

<%
String host = "smtp.gmail.com";
String userid = "sujeetyadav9517@gmail.com"; 
String password ="gmail@12345"; 
String to_email=request.getParameter("sujeetkumar9517@gmail.com");
String subject=request.getParameter("subject");
String msg=request.getParameter("msg  zxmc c ");
try
{
Properties p=new Properties();
p.put("mail.smtp.port", "465");
p.put("mail.smtp.socketFactory.port", "465");
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
out.println("mail send.....");
}
catch(Exception e)
{
e.printStackTrace();
}
%>
