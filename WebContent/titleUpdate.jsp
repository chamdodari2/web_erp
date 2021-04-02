<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="TitleUpdateServlet">
<fieldset>
<legend> 직책 정보</legend>
<ul>
<li>
<label for = "tNo">직책번호 </label>
<input type= "number" name ="tNo" size="20" id="tNo" value="${param.no }" readonly>
</li>
<li>
<label for = "tName">직책명 </label>
<input type= "text" name ="tName" size="20" id="tName" value="${param.name }" >
</li>
<li>
<input type="submit" value="저장"/>
</li>
<li>
</li>
</ul>
</fieldset>
</form>
</body>
</html>