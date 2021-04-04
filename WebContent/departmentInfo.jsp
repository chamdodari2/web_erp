<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${department }
<fieldset>
<legend> 부서 정보 </legend>
<ul>
<li>
<label for ="deptNo">부서번호</label>
<input type= "number" name= "deptNo" size="20" id="deptNo" value="${department.deptNo}" readonly>  <!-- 여기서 안되면 dto에 있는 변수명  no 떄문이다!! deptNo, deptName으로 바꿔주자  -->
</li>
<li>
<label for ="deptName">부서명</label>
<input type="text" name = "deptName" size = "20" id= "deptName" value="${department.deptName }" readonly>
</li>
<li>
<label for ="floor">층수</label>
<input type="number" name = "floor" size = "20" id= "floor" value="${department.floor }" readonly>
</li>
<li>
<a href="DepartmentDelServlet?deptNo=${department.deptNo }">삭제</a>
<a href="departmentUpdate.jsp?deptNo=${department.deptNo }&deptName=${department.deptName}&floor=${department.floor}">수정</a><!-- 여기서 바로 서블렛 가는거 아이다 -->

</li>
</ul>
</fieldset>
</body>
</html>