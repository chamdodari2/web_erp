<%@ page import="web_erp.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var ="con" value="${JndiDS.getConnection() }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연동 테스트</title>
<link rel="stylesheet" href="css/market.css"/> 
</head>
<body>
	<c:out value="${con }"></c:out><br>
	<fieldset>
	<legend>ERP</legend>
	<ul>
	
	<li><a href="TitleListServlet">직책관리</a></li>  <!-- 직책관리에 TㅑTLEListServlet 링크 걸림  -->
	<li><a href="DeptListServlet">부서관리</a></li>
	<li><a href="EmpListServlet">사원관리</a></li>

	
	
	</ul>
	</fieldset>
</body>
</html>