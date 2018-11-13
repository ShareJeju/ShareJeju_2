<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.sist.manager.*"%>
    
    <jsp:useBean id="weather" class="com.sist.manager.WeatherManager"></jsp:useBean>
 <%
 	WeatherManager w=new WeatherManager();
 	String url = w.weatherFindData();
 	String tem = w.temperatureFindData();
 %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4 style="color:gray;">제주 날씨<img src="<%=url %>" width="50" height="40"> <%=tem %></h4>
</body>
</html>