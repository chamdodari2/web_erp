<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<fieldset>
<legend>사원 정보</legend>
<ul>
<li>
<label for = "empNo"> 사원번호</label>
<input type="number" name="empNo" size="20" id="empNo" value="${employee.empNo }"  readonly>
</li>
<li>
<label for = "empName"> 사원명</label>
<input type="text" name="empName" size="20" id="empName" value="${employee.empName}"  readonly>
</li>
<li>
<label for = "title"> 직책명</label>
<input type="text" name="title" size="20" id="title" value="${employee.title.no}" readonly>
</li>
<li>
<label for = "manager"> 직속상사</label>
<input type="number" name="manager" size="20" id="manager"value="${employee.manager.empNo}" readonly>
</li>
<li>
<label for = "salary">  급여</label>
<input type="number" name="salary" size="20" id="salary" value="${employee.salary}"readonly>
</li>
<li>
<label for = "dept">  부서</label>
<input type="number" name="dept" size="20" id="dept" value="${employee.dept.deptNo}" readonly>
</li>
<li>
	<a href="EmployeeDelServlet?empNo=${employee.empNo }">삭제</a>
<a href="employeeUpdate.jsp?empNo=${employee.empNo }&empName=${employee.empName}&title=${employee.title.no}&manager=${employee.manager.empNo}&salary=${employee.salary}&dept=${employee.dept.deptNo}">수정</a>
</li>
</ul>
</fieldset>
</body>
</html>