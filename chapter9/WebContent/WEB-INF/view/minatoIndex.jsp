<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.SiteEV" %>
<%
SiteEV siteEV = (SiteEV)application.getAttribute("siteEV");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/chapter9/MinatoIndex?action=like">いいね</a>
<%=siteEV.getLike() %>人<br>
<a href="/chapter9/MinatoIndex?action=deslike">よくないね</a>
<%=siteEV.getDeslike() %>人<br>
</body>
</html>