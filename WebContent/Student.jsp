<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.io.*, java.net.*"%>
<%@page import="com.javatpoint.DataBean"%>
<%@page import="com.javatpoint.RegisterAction"%>
<%@page import="com.javatpoint.RegisterDao"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student JSP</title>
</head>
<body>
<table border="1" style="margin: auto;" width="75%">
<tr>
<td>SID<br><s:property value="retrieve.studentId"/></td>
<td>First Name<br><s:property value="retrieve.fname"/></td>
<td>Last Name<br><s:property value="retrieve.lname"/></td>
</tr>
<tr>
 <td>Street Address<br>
 <s:property value="retrieve.street"/></td>
 <td>City<br>
 <s:property value="retrieve.city"/></td>
 <td>State<br>
 <s:property value="retrieve.state"/></td>
</tr>

<tr>
 <td>Zip<br>
 <s:property value="retrieve.zip"/></td>
 <td>Telephone Number<br>
 <s:property value="retrieve.tel"/></td>
 <td>Email<br>
 <s:property value="retrieve.email"/></td>
</tr>

<tr>
 <td>URL<br>
 <s:property value="retrieve.url"/></td>
 <td>Month of high-school graduation<br>
 <s:property value="retrieve.month"/></td>
 <td>Year of high-school graduation<br>
 <s:property value="retrieve.year"/></td>
 </tr>
 


  
<tr>

 <td>Date of Survey<br>
 <s:property value="retrieve.date"/></td>
 <td>What do you like most about the campus?<br>
 <s:property value="retrieve.radio"/></td>
 <td>How did you find out about this university?<br>
 <s:property value="retrieve.check"/></td>
</tr>

<tr>
 <td>Feedback<br>
 <s:property value="retrieve.feedback"/></td>
<td colspan="2">Additional Comments<br>
<s:property value="retrieve.comments"/>
</td>
</tr>

</table>
</body>
</html>