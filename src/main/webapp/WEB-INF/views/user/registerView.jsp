<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 :: UTrip</title>
<link rel="stylesheet" href="css/registerView.css" >
<script src="lib/jquery-3.5.1.min .js"></script>
</head>
<body>
	<header>
		<a href="/">UTrip</a> 회원가입
	</header>
	<section>
		<form action="register.do" id="frm_register" method="post">
			<small>아이디</small><small id="id_alert" class="alert"></small>
			<p>
				<input type="text" name="id" id="id" maxlength="20">
			</p>
			<small>비밀번호</small><small id="pass_alert" class="alert"></small>
			<p>
				<input type="password" name="password" id="password" id="password" maxlength="20">
			</p>
			<small>비밀번호 확인</small><small id="pass2_alert" class="alert"></small>
			<p>
				<input type="password" name="password2" id="password2"maxlength="20">
			</p>
			<small>이름</small><small id="name_alert" class="alert"></small>
			<p>
				<input type="text" name="name" id="name" maxlength="10">
			</p>
			<small>이메일</small><small id="email_alert" class="alert" ></small><br>
			<p id="p_email">
				<input type="text" name="email" id="email" maxlength="20">
			</p>
			
			<p id="p_domain">
				<input type="text" value="@naver.com"  readonly>
				<select id="domain" name="domain">
					<option value="@naver.com">naver</option>
					<option value="@gmail.com">gmail</option>
					<option value="@daum.net">daum</option>
					<option value="@nate.com">nate</option>
					<option value="@hanmail.com">hanmail</option>
					<option value="self">직접입력</option>
				</select>
			</p>
			<p id="p_mbti">
			<small>MBTI</small><br><small id="mbti_alert" class="alert"></small>
				<select name="mbti">
					<option value="INTP">INTP</option>
					<option value="ENTP">ENTP</option>
					<option value="ISTP">ISTP</option>
					<option value="INFP">INFP</option>
					<option value="INTJ">INTJ</option>
					<option value="ESTP">ESTP</option>
					<option value="ISFP">ISFP</option>
					<option value="INFP">INFP</option>
					<option value="ISFJ">ISFJ</option>
					<option value="ESFP">ESFP</option>
					<option value="ESTJ">ESTJ</option>
					<option value="ENFJ">ENFJ</option>
					<option value="ESFJ">ESFJ</option>
					<option value="ENTJ">ENTJ</option>
					<option value="ENFP">ENFP</option>
					<option value="ISTJ">ISTJ</option>
				</select>
				<small>
					 자신의 MBTI 타입을 모른다면?
					<a href="https://www.16personalities.com/ko/%EB%AC%B4%EB%A3%8C-%EC%84%B1%EA%B2%A9-%EC%9C%A0%ED%98%95-%EA%B2%80%EC%82%AC" target="_blank">클릭</a>
				</small> 
			</p>
			<button type="button" id="btn_reg">회원가입</button>
		</form>
	</section>
	<script src="js/register.js"></script>
</body>
</html>