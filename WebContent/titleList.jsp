<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${list }
	<h2>직책 목록</h2>
	<table border="1">
	<thead>
	<tr><td>직책번호</td><td>직책명</td></tr>
	</thead>
	<tbody>
	<c:forEach var="title" items="${list }"> <!-- list에 있는 내용 받아오는 문장 -->
	<tr>
	<td>${title.no }</td>
	<td><a href="TitleGetServlet?titleNo=${title.no }">${title.name }</td> <!-- 파라미터값으로 tno 넘겨주는문장 -->
	</tr>    
	</c:forEach>
	</tbody>
	<tfoot>
		<tr><td dolspan="2"><a href="titleInput.jsp">직책 추가</a></td></tr>
	</tfoot>
	</table>
	
</body>
</html>