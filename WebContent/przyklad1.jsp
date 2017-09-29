<%@page import="java.time.LocalTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pierwsze JSP</title>
</head>
<body>

<h1>Pierwsze HTMl</h1>
<p>Ala ma kotka.

<%
out.println("siemka, piszę z poziomu scriptletu");
String s = "Halko";
int x = 2;
out.println(x + " + " + s);


%>

<p>to już jest HTML

<p>teraz jest godzina: <%= LocalTime.now() %> a wartosc zmiennej <%= x %>

</body>
</html>