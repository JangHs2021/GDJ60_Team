<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글목록</title>
<c:import url="../template/common_css.jsp"></c:import>
</head>
<body>
	<div class="container-fluid my-5">
		<div class="row mb-4">
			<h1 class="col-md-7 mx-auto text-center border-bottom border-dark pb-4">Notice List</h1>
		</div>
	</div>
	<div class="row col-md-7 mx-auto">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>글번호</th>
						<th>글제목</th>
						<th>작성자</th>
						<th>작성날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody class="table-group-divider">
					<c:forEach items="${list}" var="dto">
						<tr>
							<td class="tbl_td">${dto.noticeNumber}</td>
							<td class="tbl_td"><a href="detail?noticeNumber=${dto.noticeNumber}">${dto.noticeTitle}</a></td>
							<td class="tbl_td">${dto.noticeWriter}</td>
							<td class="tbl_td">${dto.noticeDate}</td>
							<td class="tbl_td">${dto.noticeHit}</td>
						</tr>
					</c:forEach>
				</tbody>	
			</table>
			<a href="./add" class="btn btn-primary col-2  mx-auto">글 작성</a>
			<a href="/sj" class="btn btn-primary col-2  mx-auto">홈으로</a>
	
		</div>
	
	<c:import url="../template/common_js.jsp"></c:import>
</body>
</html>