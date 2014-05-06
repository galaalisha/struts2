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
<title>Winner</title>
</head>
<body>
<h3> Thank you for submitting the form.</h3>
<h2>You are the winner of 2 movie tickets!!</h2>
<br>
Mean:<s:property value="info.mean"/><br>
Standard Deviation:<s:property value="info.std"/>
<br>

<!--<s:url id="aLink" action="retrieve.action">  
          <s:param name="sid" value="%{sid}" />  
       </s:url>  
 <s:iterator value="myList">
       <s:a href="%{aLink}"><s:property value="%{sid}"/></s:a>                        
 </s:iterator>  -->

<s:iterator value="myList" var="myList">
<s:url action="retrieve.action" var="urltag">
<s:param name="sid">
<s:property/>
</s:param>
</s:url>
<ul>
<li>
<a href="<s:property value="#urltag"/>">SID:<s:property/></a>
</li>
</ul>
</s:iterator>

</body>
</html>