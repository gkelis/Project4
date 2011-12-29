<%-- 
    Document   : register
    Created on : Dec 28, 2011, 2:00:10 PM
    Author     : FoG
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="windows-1252"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/struts-tags" prefix="s"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Register Page</title>
</head>
<body bgcolor="#E6E6FA">
    <br>
    <br>
<div align="center">
    <h1>Insert your info to login!</h1>
    <br>
<s:form method="POST" action="Register">
	<s:textfield name="userName" label="User Name" />
	<s:password name="password" label="Password" />
	<s:radio name="gender" label="Gender" list="{'Male','Female'}" />
	<s:select name="country" list="countryList" listKey="countryId"
		listValue="countryName" headerKey="0" headerValue="Country"
		label="Select a country" />
	<s:textarea name="about" label="About You" cols="15" rows="5" />
	<s:checkboxlist list="communityList" name="community" label="Community" />
	<s:checkbox name="mailingList"
		label="Would you like to join our mailing list?" />
	<s:submit />
</s:form>
</div>
</body>
</html>
