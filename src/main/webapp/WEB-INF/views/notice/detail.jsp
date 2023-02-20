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
	<h3>Detail Page</h3>
	<hr>
	
	<c:if test="${not empty detail}">
	<h3>글번호 : ${detail.noticeNumber}</h3> <br>
	<h3>글제목 : ${detail.noticeTitle}</h3> <br>
	<h3>작성자 : ${detail.noticeWriter}</h3> <br>
	<h3>조회수 : ${detail.noticeHit}</h3> <br>
	<h3>글내용 : ${detail.noticeDetail}</h3>
	<div>
		<c:if test="${not empty detail.noticeImgDTO}">
			<img src="../resources/upload/notice/${detail.noticeImgDTO.fileName}">
		</c:if>
	</div>
	</c:if>
	
	<a href="./update?noticeNumber=${detail.noticeNumber}">수정</a>
	<a href="./delete?noticeNumber=${detail.noticeNumber}">삭제</a>
	<a href="./list">목록</a>
	
</body>
</html>