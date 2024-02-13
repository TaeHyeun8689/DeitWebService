<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<style type="text/css">
   /* all view */
   * {
	margin: 0;
	padding: 0;
	list-style: none;
	text-decoration: none;
	font-family: 'Newsreader', sans-serif; /* 기본 폰트 설정 */
   } 
    .body {
    width: 1280;
    height: 1025px;
    margin: 0;
    font-family: 'Newsreader';
    background-color: #FAFAF5;
    color: #426B1F;
   }

    /* 메인 컨테이너 */
    .main {
     max-width: 1280px;
     margin: 0 auto;  /* 가운데 정렬*/
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
        
        .h2 {
         color: #426B1F;
         font-size: 24px;
         margin-bottom: 10px;
        }

        .container {
            margin: 20px auto;
            text-align: center;
        }

        form {
            margin: 20px auto;
        }

        table {
            border-collapse: collapse;
            margin: 0 auto;
            width: 30%; /* 수정된 부분: 테이블 너비 지정 */
        }

        td, th {
            border: 2px solid #426B1F;
            padding: 10px;
            text-align: left;
        }

        /* 새로 추가된 스타일 */
        .label-container {
            margin-bottom: 20px;
            text-align:center;
        }

        .input-container label {
         font-size: 24px;
         font-weight:bold;
         color: #426B1F;
         display: block;
         margin-bottom: 10px; /*라벨 사이의 간격 조절*/
        }

        .button-container {
            margin-top: 20px;
        }

        .button-container input[type="submit"] {
        color: white;
            background-color: #426B1F;
            padding: 10px 20px;
            background-color: #426B1F;
            color: white;
            border: 2px solid #426B1F; /* 테두리 선 추가 및 색상 설정 */
            border-radius: 5px;
            cursor: pointer;
        }

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
         <p>Logo or image</p>
      </div>
      <hr>
        <h2 class="h2" style="text-align: center; color: #426B1F;">아이디 및 비밀번호 찾기 </h2>
     <div class='container'>
         <form role="form" autocomplete="on" action="findusername" method="POST">
         <!--아이 -->
     <div class="label-container">    
         <label for="fullName">이름</label>
                <input type="text" name="fullName" id="fullName" required>
     </div>
     
     <div class="label-container">
         <label for="phoneNumber">전화번호</label>
         <input type="text" name="phoneNumber" id="phoneNumber" size="20" required>
    </div>
    <!--  확인 버 -->
    <div class="button-container">
        <input type="submit" value="확인">
    </div>
  </form>
 </div>
       
            
       
    <footer class="footer">
    <p>I am footer</p>
    <p>Address: oo시 00구 00로</p>
    <p>Tel: xxx-xxxx-xxxx</p>
    <p>Email: xxxxx@gmail.com</p>
    <p>About us: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
</footer>

</body>
</html>