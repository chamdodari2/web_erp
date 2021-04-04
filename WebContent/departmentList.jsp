<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${list }
<h2>부서 목록</h2>
<table border="1">
<theae>
<tr><td>부서번호</td><td>부서명</td><td>층수</td></tr>
</theae>
<tbody>
<c:forEach var="department" items="${list }">                     <!-- var은 변수명 정해주는거 -->
<tr>
<td>${department.deptNo }</td>  <!-- 부서번호 보여주고 -->
<td><a href="DepartmentGetServlet?deptNo=${department.deptNo }">${department.deptName } </td>  <!-- DepartmentGetServlet로 링크걸어줌. department.no를 매개변수로 받아서 글로 이동이시고, 버튼명은 department.name으로 받아와서 보여준다.  -->
<td>${department.floor }</td>	<!-- 층수도 보여주기!! -->
</tr>
</c:forEach>
</tbody>
<tfoot>
	<tr><td dolspan="2"><a href=departmentInput.jsp>부서추가</a></td></tr>  <!-- 부서추가를 누르면departmentInput으로 링크 -->


</table>

</body>
</html>