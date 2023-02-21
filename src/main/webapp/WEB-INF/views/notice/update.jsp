<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업데이트</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	<div class="container-fluid my-5">
		<div class="row mb-4">
			<h3 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Update Page</h3>
		</div>
		
		<div class="row col-md-7 mx-auto">
			<form class="row g-3" action="./update" method="post">
				<input type="hidden" name="noticeNumber" readonly value="${dto.noticeNumber}">
				<div class="col-md-6">
    				<label for="noticeTitle" class="form-label">글제목</label>
    				<input type="text" name="noticeTitle" class="form-control" id="noticeTitle" value="${dto.noticeTitle}">
  				</div>
				
				<div class="col-md-12 mt-5">
    				<label for="noticeDetail" class="form-label">글내용</label>
    				<textarea class="form-control" name="noticeDetail" id="noticeDetail"></textarea>
  				</div>
		
				<div class="col-md-12 mt-5">
    				<label for="noticeWriter" class="form-label">작성자</label>
    				<input type="text" class="form-control" name="noticeWriter" id="noticeWriter" value="${dto.noticeWriter}">
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