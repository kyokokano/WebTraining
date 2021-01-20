<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/main.css">
  <link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">
  <title>じゃんけんぽん</title>
</head>
<body>

<<form method="post">
    <input type="radio" name="hand" value="0">ぐー<br>
    <input type="radio" name="hand" value="1">ちょき<br>
    <input type="radio" name="hand" value="2">ぱー<br>
    <button type="submit" name="btn">ショウブ</button>
  </form>
<%if(request.getParameter("btn")!=null){ %>
	<div>
	<%
    String[] jyanken = {
    	"images/gu.png",
    	"images/choki",
    	"images/pa.png"
    };
	Random rand = new Random();
	int pcHand = rand.nextInt(3);
	int uHand = Integer.parseInt(request.getParameter("hand"));
	<img src=jyanken[uHand]>
	<img src=jyanken[pcHnad]>
    %>
  </div>
<%if(uHand==0&&pcHand==1 || uHand==1&&pcHand==2 || uHand==2&&pcHand==0){
	%><p>アナタのかちです!</p>
	<% }else if(uHand==0&&pcHand==2||uHand==){

} %>
</body>
</html>