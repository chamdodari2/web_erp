<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="DepartmentUpdateServlet">
<fieldset>
<legend> 부서 정보 </legend>
<ul>
<li>
<label for = "deptNo">부서 번호</label>
<input type = "number" name="deptNo" size = "20" id="deptNo" value="${param.deptNo }" readonly>
</li>
<li>
<label for = "deptName">부서명</label>
<input type = "text" name="deptName" size = "20" id="deptName" value="${param.deptName }">
</li>
<li>
<label for = "floor">층수</label>
<input type = "number" name="floor" size = "20" id="floor" value="${param.floor }">
</li>
<li>
<input type="submit" value="저장" />
</li>
</ul>

</fieldset>


</form>
</body>
</html>