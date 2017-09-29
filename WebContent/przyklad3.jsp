<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Wersja trzecia </title>
</head>
<body>

<h1>Wersja trzecia &mdash; odwołanie do beana</h1>

<jsp:useBean id="info" class="beans.InfoBean"></jsp:useBean>

<p>Napis: ${info.napis}

<jsp:setProperty name="info" property="napis" value="Marysia ma rysia" />

<p>Napis po zmianie: ${info.napis}

<p>Aktualna godzina: ${info.godzina}

<hr>
<jsp:useBean id="licznik_page" class="beans.InfoBean" scope="page"/>
<jsp:useBean id="licznik_request" class="beans.InfoBean" scope="request"/>
<jsp:useBean id="licznik_sesja" class="beans.InfoBean" scope="session"/>
<jsp:useBean id="licznik_globalny" class="beans.InfoBean" scope="application"/>

<p>Licznik page: <strong>${licznik_page.licznik}</strong>
<p>Licznik request: <strong>${licznik_request.licznik}</strong>
<p>Licznik sesja: <strong>${licznik_sesja.licznik}</strong>
<p>Licznik globalny: <strong>${licznik_globalny.licznik}</strong>


</body>
</html>