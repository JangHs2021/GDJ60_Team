<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Notice Add Page</h3>
	
	<form action="./add" method="post">
			글제목 <br>
			<input type="text" placeholder="글제목을 입력하세요" name="noticeTitle" value=""> <br>
			글내용 <br>
			<textarea placeholder="내용을 입력하세요" name="noticeDetail"></textarea> <br>
			작성자 <br>
			<input type="text" placeholder="작성자를 입력하세요" name="noticeWriter" value=""> <br>
			
			<!-- fileUpload -->
			<div>
    			<label for="files" class="form-label">Image</label>
    			<input type="file" class="form-control" name="pic" id="files">
  			</div>
			
			<button type="submit">등록</button>
	</form>
</body>
</html>