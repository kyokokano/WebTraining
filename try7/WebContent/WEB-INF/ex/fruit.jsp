<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "ex.Fruit" %>
<% Fruit fruit=(Fruit)application.getAttribute("fruit");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=fruit.getName() %>の値段は<%=fruit.getPrice() %>円です
</body>
</html>