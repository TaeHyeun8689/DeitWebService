<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 성공 화면 </title>
<style type="text/css">
   /* all view */
   * {
	margin: 0 auto;
	padding: 0;
	list-style: none;
	}
    .body {
    width:1280px;
	height:1024px;
        margin: 0;
        font-family: 'Newsreader';
        background-color: #FAFAF5;
        color: #426B1F;
      }

    /* 메인 컨테이너 */
    .main {
        padding: 20px;
        text-align: center;
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
    }

    /* 헤더 제목 스타일 */
    .header h1 {
        font-size: 60px;
        line-height: 100%;
        letter-spacing: -0.01em;
        margin: 0;
    }    
    /* 푸터 스타일 */
    .footer{
	position:relative;
	width:100%;
	bottom: 0;
	background: #fafaf5;
	padding: 10px;
	
	text-align: center;
	color: #426B1F;
}
    
</style>
</head>

<body>
<div class="main">
      <div class="header">
         <h1>BodyBalanceBook</h1>
      </div>

<h2>아이디 및 비밀번호 찾기 결과</h2>
    <hr>
    
    <form role = "form" autocomplete = "on" action="findusername" method="POST">
        <table border="1">
        
 <p>찾은 아이디 : ${member.id}</p>
 
 <p>찾은 비밀번호 : ${member.password}</p>

<div align="center">
		<a href="login">로그인 페이지로 이동</a>
		
		<br><br>
		

</form>		
<footer class="footer">
    <p>I am footer</p>
    <p>Address: oo시 00구 00로</p>
    <p>Tel: xxx-xxxx-xxxx</p>
    <p>Email: xxxxx@gmail.com</p>
    <p>About us: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
</footer>

 
</body>
</html>