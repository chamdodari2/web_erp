<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직책 추가</title>
</head>
<body>
<h2>직책 정보 입력 폼</h2>
<form action="TitleInsertServlet" method="get">
<legend> 직책 정보</legend>
<ul>
<li>
<label for = "tNo">직책번호 </label>
<input type= "number" name ="tNo" size="20" id="tNo" autofocus required>
</li>
<li>
<label for = "tName">직책명 </label>
<input type= "text" name ="tName" size="20" id="tName">
</li>
<li>
<input type = "submit" value = "추가">
</li>
<li>
<input type = "reset" value = "취소">
</li>
</ul>
</form>
</body>
</html>