<body background ="C:\\Users\\$ujeet kumar yadav\\Desktop\\carp.jpg">
<%@include file="empindex2.jsp" %>
<%@include file ="sql.jsp"%>

<%
String aen=request.getParameter("ae-name");
String aep=request.getParameter("ae-profession");
String aem=request.getParameter("ae-email");
String aeph=request.getParameter("ae-phone");
String aepas=request.getParameter("ae-passenger");
String aecn=request.getParameter("ae-carnamne");
String aecno=request.getParameter("ae-carno");
String aeso=request.getParameter("ae-source");
String aeds=request.getParameter("ae-destination");
String aetim=request.getParameter("ae-timimg");
String aeseat=request.getParameter("ae-seats");
if(empname!=null){
int res =st.executeUpdate("insert into empcreate values('"+empname+"','"+aep+"','"+empemail+"','"+aeph+"','"+aepas+"','"+aecn+"','"+aecno+"','"+aeso+"','"+aeds+"','"+aetim+"','"+aeseat+"')");
}
%>
<hr>done<hr>