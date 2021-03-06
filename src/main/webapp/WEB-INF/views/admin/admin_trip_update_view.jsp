<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기 페이지</title>
<link rel="stylesheet" href="css/admin_trip_insert_view.css">
<script src="lib/jquery-3.5.1.min .js"></script>
<script src="lib/jquery-ui.js"></script>
<link rel="stylesheet" href="css/board_write_view.css">
<script src="lib/jquery-3.5.1.min .js"></script>
<script>
$(function(){
	var count;
	$("#plus").click(function(){
		count=document.getElementById('course_form').childElementCount
		count++;
		console.log(count);
		$("#course_form").append(
				"<div class='col-6 col-12-medium'>"+
					"<select name='place"+count+"' class='area'>"+
		count=$(this).parent().parent().parent().parent().children("#course_form").children().children().last().attr('name').substr(5,6);
		count++;
		console.log(count);
		$("#course_form").append(
				"<td>"+
					"<select name='place"+count+"'>"+
					"<c:forEach var='cou' items='${requestScope.courseList}'>"+
						"<option value='${cou.place_no}'>${cou.place_name}</option>"+							
					"</c:forEach>"+
					"</select>"+
				"</div>"
			);
	});
	$("#minus").click(function(){
		if(count == 1) return;
		console.log(document.getElementById('course_form').lastChild.remove());
				"</td>"
			);
	});
	$("#minus").click(function(){
		count=$(this).parent().parent().parent().parent().children("#course_form").children().children().last();
		if(count == 1) return;
		$(this).parent().parent().parent().parent().children("#course_form").children().children().last().remove();
		count--;
	});
	
	var sel_file;
	$(document).ready(function(){
		$("#input_img").on("change",handleImgFileSelect);
	});
	
	function handleImgFileSelect(e){
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);
		
		filesArr.forEach(function(f){
			if(!f.type.match("image/jp*")){
				alert("jpg형식으로 이미지를 업로드해주세요.");
				return;
			}
			
			sel_file = f;
			
			var reader = new FileReader();
			reader.onload = function(e){
				$("#img").attr("src",e.target.result);
			}
			reader.readAsDataURL(f);
		});
		
	}
});


</script>
</head>
<body>
	<c:choose>
		<c:when test="${sessionScope.user.role == 'ADMIN' }">
			<%@include file="../template/header_admin.jsp"%>
		</c:when>
		<c:otherwise>
			<%@include file="../template/header.jsp"%>
			<script>
				alert("관리자만 이용할 수 있습니다.");
				location.href = "tripMain.do";
			</script>
		</c:otherwise>
	</c:choose>


	<div id="container">
	<div>
		<h2>여행정보 수정</h2>
	</div>
		<form action="tripUpdateAction.do" enctype="multipart/form-data"
			method="post">
			<div>
			<div class="row" id="a">
				<div class="trip_no">
					<h2><input type="hidden" name="trip_no"
						value="${requestScope.dto.trip_no }">${requestScope.dto.trip_no }</h2>
				</div>
				<div class="title">
					<input type="text" name="title" value="${requestScope.dto.title }" />
				</div>
				<div class="col-12">
					<textarea name="content" rows="30">${requestScope.dto.content }</textarea>
				</div>
				<div class="plus">
				<div class="plus_btn"><button type="button" id="plus">+</button>
				<button type="button" id="minus">-</button></div>
				</div>
				<div class="col-12" id="course_form">
					<c:forEach items="${requestScope.list}" var="dto" varStatus="status">
						<div class="col-6 col-12-medium" id="${status.count }">
							<select name="place${status.count }" class="area">
		<h2>여행정보 수정</h2>
		<form action="tripUpdateAction.do" enctype="multipart/form-data"
			method="post">
			<table>
				<tr>
					<th>trip_no</th>
					<td><input type="hidden" name="trip_no"
						value="${requestScope.dto.trip_no }">${requestScope.dto.trip_no }</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="4"><input type="text" name="title"
						value="${requestScope.dto.title }"></td>
				</tr>
				<tr>
					<th style="vertical-align: top;">컨텐츠 내용</th>
					<td colspan="4"><textarea name="content">${requestScope.dto.content }</textarea></td>
					
				</tr>
				
					<tr id="course_form">
				<c:forEach items="${requestScope.list}" var="dto" varStatus="status">
						<td>
							
							<select name="place${status.count }">
								<c:forEach var="cou" items="${requestScope.courseList}">
								<c:choose>
									<c:when test="${dto.place_name eq cou.place_name}">
										<option value="${cou.place_no}" selected >${cou.place_name}</option>
									</c:when>
									<c:otherwise>
										<option value="${cou.place_no}">${cou.place_name}</option>							
									</c:otherwise>
									</c:choose>											
								</c:forEach>
							</select>
						</div>
				</c:forEach>
				</div>
				
				<div class="col-12">
					<img id="img" name="file" src="/img/trip/${requestScope.dto.trip_no}.jpg">
					<input type="file" name="file" id="input_img">	
				</div>
				<div class="button"><a
						href="javascript:history.back();" class="btn-gradient green">뒤로가기</a>
						<button class="btn-gradient green">작성하기</button></div>
				</div>
		</div>
						</td>
				</c:forEach>
					</tr>
					<tr>
					<td colspan="2">
					<p><button type="button" id="plus">+</button> <button type="button" id="minus">-</button></p>
					</td>
					</tr>	
				<tr>
					<td colspan="4">
						<img id="img" name="file" src="/img/trip/${requestScope.dto.trip_no}.jpg">
						
					</td>
					<td colspan="2">
						<p><input type="file" name="file" id="input_img"></p>
					</td>
				</tr>
				<tr>
					<th>
					<td style="text-align: right;" colspan="4">
					<a href="javascript:history.back();" class="btn">뒤로가기</a>
						<button class="btn">수정하기</button></td>
				</tr>
			</table>
		</form>
	</div>
	<%@include file="../template/footer.jsp"%>
</body>
</html>