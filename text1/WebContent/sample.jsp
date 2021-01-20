<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat" %>
<%
String[] ans = {"大吉","吉","凶"};
int num = (int)(Math.random()*3);

Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("MM月dd日");
String today = sdf.format(date);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>占い</title>
</head>
<body>
<p><%=today %>の運勢は<%=ans[num] %></p>
</body>
</html>