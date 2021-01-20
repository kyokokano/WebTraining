<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.User" %>
<%
User user = (User)session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
ログインID:<%=user.getId() %>
名前:<%=user.getName() %>
<a href="/chapter8/RegisterUser">戻る</a>
<form action="/chapter8/RegisterUser" method="get">
<input type="hidden" name="action" value="done">
</form>
</body>
</html>