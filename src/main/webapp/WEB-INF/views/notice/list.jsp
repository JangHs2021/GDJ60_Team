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
	<h3>Notice List</h3>
	<hr>
	<c:forEach items="${list}" var="dto">
		<h3>글번호 : ${dto.noticeNumber}</h3>
		<a href="detail?noticeNumber=${dto.noticeNumber}"><h3>글제목 : ${dto.noticeTitle}</h3></a>
		<h3>작성자 : ${dto.noticeWriter}</h3>
		<h3>작성날짜 : ${dto.noticeDate}</h3>
		<h3>조회수 : ${dto.noticeHit}</h3>
		<hr>
	</c:forEach>
	
	<a href="./add">글 작성</a>
	<a href="/">홈으로</a>
	
</body>
</html>