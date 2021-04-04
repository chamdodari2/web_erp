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
<h2>사원  목록</h2>
<table border="1"> 
<thead>
<tr><td>사원번호</td><td>사원명</td><td>직책</td><td>직속상사</td><td>급여</td><td>부서</td></tr>
</thead>
<tbody>
<c:forEach var="employee" items="${ list}">
<tr>
<!-- 사원번호, 사원명,직책명,직속상사,급여,부서번호 -->
<td>${employee.empNo }</td>
<td><a href="EmployeeGetServlet?empNo=${employee.empNo }">${employee.empName }</td>
<td>${employee.title.toString2()}</td>
<td>${employee.manager.toString2()} </td>
<td>${employee.salary}</td>
<td>${employee.dept.toString2()}</td>
</tr>
</c:forEach>
</tbody>
<tfoot>
<tr><td dolspan="2"><a href=employeeInput.jsp>사원추가</</a></td></tr>
</table>
</body>
</html>