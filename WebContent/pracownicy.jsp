<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pracownicy z bazy danych</title>
<link rel="stylesheet" type="text/css" href="styl2.css">
</head>
<body>
<h1>Pracownicy z bazy danych</h1>

<jsp:useBean id="dostarczyciel" class="beans.DostarczycielDanych"/>

<%-- <p>Wszyscy pracownicy: ${dostarczyciel.pracownicy} --%>

<table>
<tr>
<th>Imię</th>
<th>Nazwisko</th>
<th>Pensja</th>
<th>Departament</th>
<th>Adres</th>
</tr>

<c:forEach var="p" items="${dostarczyciel.pracownicy}">
<tr>

<td>${p.imie}</td>
<td>${p.nazwisko}</td>
<td>${p.pensja}</td>
<td>${p.departament}</td>
<td>${p.adres}</td>

</tr>
</c:forEach>
</table>

</body>
</html>

