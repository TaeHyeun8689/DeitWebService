<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<link
	href="https://cdn.bootcdn.net/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<style type="text/css">
/* all view */
* {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	text-decoration: none;
}

body {
	width: 1280px;
	height: 1024px;
}

/* 메인 컨테이너 */
.main {
	max-width: 1280px;
	margin: 0 auto; /* 가운데 정렬*/
	padding: 20px;
	background-color: #FAFAF5;
	color: #426B1F;
	text-align: center
}

/* 헤더 스타일 */
.header {
	width: 100%;
	height: 91px;
	background: #FAFAF5;
	padding: 20px;
	box-sizing: border-box;
	display: flex;
	justify-content: space-between;
	align-items: center;
	color: #426B1F;
}

/* 헤더 제목 스타일 */
.header h1 {
	font-size: 60px;
	line-height: 100%;
	letter-spacing: -0.01em;
	margin: 0;
}

.container {
	background-color: #fff;
	border-radius: 10px;
	padding: 20px;
	text-align: center;
}

.loginBox {
	width: 40%;
	margin: 50px auto;
	font-size: 25px;
	font-weight: bold;
	text-align: center;
}

.loginBox input[type="text"], .loginBox input[type="password"] {
	width: 270px;
	height: 55px;
	font-size: 20px;
	padding: 10px;
	font-weight: bold;
	color: #426B1F;
	border: 2px solid #426B1F;
}

.inputSubmit {
	display: inline-block;
	color: white;
	font-size: 17px;
	font-weight: bold;
	text-align: center;
	margin: 10px;
	padding: 15px 30px;
	background-color: #426B1F;
	text-decoration: none;
	border: 2px solid #426B1F;
	border-radius: 5px;
	cursor: pointer;
}

.button-container {
	display: flex;
	align-items: center;
	justify-content: center;
	margin-top: 30px;
}

.button-container a.button {
	display: inline-block;
	color: white;
	font-size: 17px;
	font-weight: bold;
	text-align: center;
	margin: 10px;
	padding: 15px 30px;
	background-color: #426B1F;
	text-decoration: none;
	border: 2px solid #426B1F;
	border-radius: 5px;
	cursor: pointer;
}

.check {
	color: red;
}

.footer {
	position: fixed;
	bottom: 0;
	left: 0;
	width: 100%;
	background: #fafaf5;
	padding: 10px;
	text-align: center;
	color: #426B1F;
}

.footer-text {
	display: inline-block;
}
</style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
	$(document).ready(function() {
        let loginFailed = "${msg}";

        if (loginFailed) {
            alert("로그인에 실패했습니다. 다시 시도해주세요.");
        } else{
        	}
        });
	</script>

	<div class="main">
		<!-- 헤더 섹션 -->
		<div class="header">
			<h1>BodyBalanceBook</h1>
			<!-- Logo or image -->
		</div>

		<!-- 로그인 폼  -->
		<div class="container">
			<h1 class="page-title" style="color: #426B1F; font-size: 30px;">login</h1>
			<hr>

			<form action="login.me" method="post">
				<table class="loginBox" cellpadding="1" cellspacing="1"
					align="center" bgcolor="white">
					<tr>
						<td bgcolor="white"><input type="text" name="id"
							align="center" placeholder="아이디를 입력하세요"></td>
					</tr>
					<tr>
						<td bgcolor="white"><input type="password" name="password"
							align="center" placeholder="비밀번호를 입력하세요"></td>
					</tr>
					<tr>
						<td colspan="2" align="center" bgcolor="white"><input
							type="submit" class="inputSubmit" value="로그인"></td>
					</tr>
				</table>
			</form>
		</div>

		<div class="button-container">
			<a href="/signup.me" class="button" onclick="redirectToSignup()">회원가입</a>
			<a href="finduseridpw" class="button" onclick="redirectToFindIdPw()">아이디
				및 비밀번호 찾기</a>
		</div>
	</div>

	<footer class="footer">
		<p>I am footer</p>
		<p>Adress:oo시00구00로</p>
		<p>Tel:xxx-xxxx-xxxx</p>
		<p>Email:xxxxx@gmail.com</p>
		<p>About us:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
	</footer>

</body>
</html>

