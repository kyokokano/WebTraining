<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "ex.Employee" %>
<%
Employee emp = new Employee("123","かのきょうこ");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>IDは<%=emp.getId() %>,名前は<%=emp.getName() %></p>
</body>
</html>