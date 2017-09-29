<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<p>tutaj uzyjemy <strong>Expression Language (EL)</strong>
<p> ${2 + 3 }

<form>
<input name="arg1" type="text"" value="${param.arg1}">
<input name="arg2" type="text"" value="${param.arg1}">
<button>OKOK</button>
</form>

<c:if test="${!empty param.arg1 && !empty param.arg2 }">
<p> Wynik dodawania  ${param.arg1} +  ${param.arg2} = ${param.arg1 + param.arg2}
</c:if>

</body>
</html>