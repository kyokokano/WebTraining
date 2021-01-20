<%@page import="model.Mutter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>どこつぶメイン</h1>
<c:out value="${loginUser.name }"/>さん、ログイン中<br>
<a href="/docoTsubu2/Logout">ログアウト</a>
<form action="/docoTsubu2/Main" method="post">
<input type="text" name="text"><br>
<input type="submit" value="つぶやく"><br>
</form>
<c:if test="${not empty errorMsg }">
	<p>${errorMsg }</p>
</c:if>
<c:forEach var="mutter" items="${mutterList }">
<p><c:out value="${mutter.userName }"/>:<c:out value="${mutter.text }"/></p>
</c:forEach>
</body>
</html>