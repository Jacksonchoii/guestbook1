<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>


<%

	int no = Integer.parseInt(request.getParameter("no")); //비번지정
	
	String password = request.getParameter("password"); 
	
	GuestDao guestDao = new GuestDao();
	GuestVo guestVo = new GuestVo(no, password);
	
	guestDao.guestDelete(guestVo);
	
	response.sendRedirect("./addList.jsp");

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	delete
</body>
</html>