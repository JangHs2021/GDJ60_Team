<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세정보</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	
	<div class="container-fluid my-5">
		<div class="row mb-4">
			<h3 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Detail Page</h3>
		</div>
	
		<div class="row col-md-7 mx-auto">
			<c:if test="${not empty detail}">
			<div class="row g-3">
				<div class="col-md-6">
					글번호 : ${detail.noticeNumber}
				</div>
				<div class="col-md-12 mt-5">
					글제목 : ${detail.noticeTitle}
				</div>
				<div class="col-md-12 mt-5">
					작성자 : ${detail.noticeWriter}
				</div>
				<div class="col-md-12 mt-5">
					글내용 : ${detail.noticeDetail}
				</div>
				<div class="col-md-12 mt-5">
					조회수 : ${detail.noticeHit}
				</div>
			</div>
			<div>
				<c:if test="${not empty detail.noticeImgDTO}">
					<img src="../resources/upload/notice/${detail.noticeImgDTO.fileName}">
				</c:if>
			</div>
			</c:if>
			
			
			<div class="row col-md-2 mx-auto mt-5">
				<a href="./update?noticeNumber=${detail.noticeNumber}" class="btn btn-primary">수정</a>
			</div>
			
			<div class="row col-md-2 mx-auto mt-5">
				<a href="./delete?noticeNumber=${detail.noticeNumber}" class="btn btn-primary">삭제</a>
			</div>
			
			<div class="row col-md-2 mx-auto mt-5">
				<a href="/sj/notice/list" class="btn btn-primary">목록</a>
			</div>
			
		</div>
	</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>