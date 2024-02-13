<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>초기화면</title>
    <link rel="stylesheet" href="./index.css">
    <style type="text/css">

      body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;  /*글자 안보여주는거 */
      background-image: url('../greensalad.jpg'); /*이미지 파일경로*/
      background-size: cover; /*전체 */
      background-position: center;
      background-repeat: no-repeat;
      height: 100vh; /* 화면 전체 높이만큼 body 높이 설정 */
      display: flex; /* body를 flex container로 설정 */
      flex-direction: column; /* 자식 요소들을 세로로 나열 */
      align-items: center; /* 세로 중앙 정렬 */
      }

     .main {
      position: absolute;
      width: 77px;
      height: 32px;
	  left: 96px;
      margin: 50px;
	  font-family: 'Newsreader';
	  font-style: normal;
	  font-size: 30px;
	  line-height: 100%;
	  letter-spacing: -0.01em;
	  color: #426B1F;
     }
     
    .brand {
     display: flex;
     align-items: flex-start; /*세로 중앙 정렬*/
     margin: 0; /*기본 마진 제*/
    }
  
   .login-section {
    position: absolute;
    margin: 5px;
    left: 100px;
    top: 2px;
         
    font-family: 'Newsreader';
    font-style: normal;
    font-size: 25px;
    line-height: 100%;
    letter-spacing: -0.01em;
    color: #426B1F;
         
    display: flex;
    align-items: center;
    justify-content: flex-start;
    flex-direction: row;
    padding-left: 20px;
    height: 100vh;
   }

   .login-link h2{
    font-size: 70px;
    font-weight: bold;
    color: #426B1F;
    display: inline;
    padding: 20px 30px;
    flex-direction: row; /* 가로로 나열 */
    cursor: pointer;
    text-decoration: none !important;  /*밑줄 없애*/
   }
   
   
</style>
</head>
<body>
<header class="">
   
    <div class="main">
        <div class="brand">
        <h1 class="main-title" >BodyBalanceBook</h1>
    </div>
     </div>    
     
        <!-- 로그인 링크 -->
     <div class="login-section">
        <a href="login" class="login-link" style="color: #426B1F;">로그인</a>
     </div>  
    
</header>
</body>
</html>