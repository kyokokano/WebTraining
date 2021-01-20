<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.User" %>
<%
User user = (User)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(user != null){%>
ログインに成功しました<br>
ようこそ<%=user.getName() %>さん<br>
<a href="/docoTsubu2/Main">つぶやき投稿・閲覧へ</a>
<% }else{ %>
ログインに失敗しました<br>
<a href="/docoTsubu2">TOPへ</a>
<%} %>
</body>
</html>