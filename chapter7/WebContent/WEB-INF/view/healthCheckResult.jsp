<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Health" %>
<%Health health =(Health)request.getAttribute("health"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>診断結果</h1>
身長:<%=health.getHeight() %>
体重:<%=health.getWeight() %>
BMI:<%=health.getBmi() %>
体型:<%=health.getBodyType() %>
<a href="/chapter7/HealthCheck">戻る</a>
</body>
</html>