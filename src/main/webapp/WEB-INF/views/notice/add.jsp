<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 등록</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	<div class="container-fluid my-5">
		<div class="row mb-4">
			<h3 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Notice Add Page</h3>
		</div>
		
		<div class="row col-md-7 mx-auto">
			<form class="row g-3" action="./add" method="post" enctype="multipart/form-data">
				<div class="col-md-6">
    				<label for="noticeTitle" class="form-label">글제목</label>
    				<input type="text" name="noticeTitle" class="form-control" id="noticeTitle" placeholder="제목을 입력하세요">
  				</div>
					 
				<div class="col-md-12 mt-5">
    				<label for="noticeDetail" class="form-label">글내용</label>
    				<textarea class="form-control" name="noticeDetail" id="noticeDetail" placeholder="내용을 입력하세요"></textarea>
  				</div>
		
				<div class="col-md-12 mt-5">
    				<label for="noticeWriter" class="form-label">작성자</label>
    				<input type="text" class="form-control" name="noticeWriter" id="noticeWriter" placeholder="작성자를 입력하세요">
  				</div>
				
				<!-- fileUpload -->
				<div class="col-md-12 mt-5">
    				<label for="files" class="form-label">Image</label>
    				<input type="file" class="form-control" name="pic" id="files">
  				</div>
					
				<div class="row col-md-2 mx-auto mt-5">
					<button type="submit" class="btn btn-primary">등록</button>
				</div>
				<div class="row col-md-2 mx-auto mt-5">
					<a href="/sj/notice/list" class="btn btn-primary">목록</a>
				</div>
			</form>
		</div>
	</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>