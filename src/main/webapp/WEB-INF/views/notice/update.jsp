<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Update Page</h3>
	
	<form action="./update" method="post">
		<input type="hidden" name="noticeNumber" readonly value="${dto.noticeNumber}">
		글제목 <br>
		<input type="text" placeholder="글제목을 입력하세요" name="noticeTitle" value="${dto.noticeTitle}"> <br>
		글내용 <br>
		<textarea placeholder="내용을 입력하세요" name="noticeDetail"></textarea> <br>
		작성자 <br>
		<input type="text" placeholder="작성자를 입력하세요" name="noticeWriter" value="${dto.noticeWriter}"> <br>
			
		<button type="submit">등록</button>
	</form>
</body>
</html>