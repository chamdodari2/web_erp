<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form  action="EmployeeUpdateServlet">
<fieldset>
<legend>사원 정보</legend>
<ul>
<li>
<label for = "empNo"> 사원번호</label>
<input type="number" name="empNo" size="20" id="empNo" value="${param.empNo }"  readonly>
</li>
<li>
<label for = "empName"> 사원명</label>
<input type="text" name="empName" size="20" id="empName" value="${param.empName}" >
</li>
<li>
<label for = "title"> 직책명</label>
<input type="text" name="title" size="20" id="title" value="${param.title}" >
</li>
<li>
<label for = "manager"> 직속상사</label>
<input type="number" name="manager" size="20" id="manager"value="${param.manager}" >
</li>
<li>
<label for = "salary">  급여</label>
<input type="number" name="salary" size="20" id="salary" value="${param.salary}">
</li>
<li>
<label for = "dept">  부서</label>
<input type="number" name="dept" size="20" id="dept" value="${param.dept}" >
</li>
<li>
<input type="submit" value="저장" />
</li>
</ul>
</fieldset>
</form>
</body>
</html>