<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>오늘의 식단</title>
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

.header {
	display: flex;
	margin-bottom: 50px;
	width: 100%;
	height: 150px;
	left: 0px;
	right: 0px;
	top: 0px;
	background: #FAFAF5;
}

.header h1 {
	display: flex;
	margin: 50px;
	width: 77px;
	height: 32px;
	left: 96px;
	font-family: 'Newsreader';
	font-style: normal;
	font-size: 90px;
	line-height: 100%;
	letter-spacing: -0.01em;
	color: #426B1F;
}

/* 导航 */
.nav {
	display: flex;
	justify-content: center;
	position: relative;
	top: 60px;
	left: 50px;
	background-color: #426B1F;
	width: 70%;
	height: 90px;
	border-radius: 20px;
	overflow: hidden;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
}

.nav .menu {
	list-style: none;
	display: flex;
	justify-content: flex-end;
}

.nav .menu .item {
	position: relative;
	cursor: pointer;
	padding: 0 10px;
	width: 100px;
	height: 100%;
	transition: all 0.4s ease;
}

.nav .menu .item:hover {
	background-color: #94A963;
}

.nav .menu .item .link {
	display: block;
	position: relative;
	width: 100%;
	height: 100px;
	color: white;
	text-decoration: none;
	overflow: hidden;
	transition: all 0.4s ease;
}

.nav .menu .item .link .fa {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translateY(-50%);
	width: 100%;
	text-align: center;
	transition: all 0.4s ease;
}

.nav .menu .item .link span {
	position: absolute;
	width: 100%;
	bottom: -50%;
	left: 0;
	text-align: center;
	opacity: 0;
	transition: all 0.4s ease;
}

.nav .menu .item:hover .link span {
	opacity: 1;
	bottom: 18px;
}

.nav .menu .item:hover .link .fa {
	transform: translateY(-95%);
}

.header {
	background: #fafaf5;
	padding: 20px;
	text-align: center;
}

.rside {
	box-sizing: border-box;
	float: right;
	height: 600px;
	left: 1139px;
	right: 43px;
	top: 300px;
	margin: 10px;
	padding: 5px;
	background: #FAFAF5;
	border: 2px solid #E6E6E6;
	border-radius: 24px;
	text-align: center;
}
.rside h2{
	display: block;
    font-size: 1.5em;
   	margin: 30px;
    font-weight: bold;
}
.rside p{
	text-align: left;
	margin: 30px;
}
.result{
	display:inline-block;
	background-color: #426b1f;
	border-radius: 20px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
	margin-top: 20%;
	text-align: center;
}
.result h4{
	color: white;
	margin: 10px;
}
.result h2{
	color: white;
}

.container {
	height: 900px;
	margin: 0px auto;
	display: flex;
}

.rside, .insertBoard {
	margin-top: 50px;
	padding: 10px;
}

.insertBoard h2 {
	margin: 30px;
}

.form {
	margin: 20px;
	width: 100%;
}

.table {
	border-spacing: 20px;
	text-align: left;
	width: 70%;
}

#main a {
	margin: 20px;
	color: #fafaf5;
	width: 90px;
	height: 30px;
	background-color: #426B1F;
}

.tdSubmit a button {
	display: inline-block;
	width: 100px;
	height: 40px;
	padding: 10px;
	background-color: #426B1F;
	font-size: 16px;
	font-family: 'Spartan';
	color: #fafaf5;
	border-radius: 5px;
	border: 1px;
}

.inputSubmit {
	display: inline-block;
	width: 100px;
	height: 40px;
	padding: 10px 10px;
	background-color: #426B1F;
	font-size: 16px;
	font-family: 'Spartan';
	color: #fafaf5;
	border-radius: 5px;
	border: 1px;
}

.insertWorkout {
	margin-top: 20px;
	padding: 20px;
	border: 2px solid #426B1F;
	border-radius: 10px;
	background-color: #FAFAF5;
	height: 600px;
	width: 60%;
	margin-left: 10px;
	flex: 0 0 70%;
	border-radius: 24px;
}

#main {
	text-align: center;
	flex: 1;
	padding: 20px;
}

#main h3 {
	font-size: 24px;
	color: #426B1F;
	margin-bottom: 10px;
}

hr {
	border: 1px solid #426B1F;
	margin: 15px 0;
}

.form-group {
	margin-bottom: 15px;
}
button{
	background-color: #426B1F;
	color: white;
	padding: 10px 20px;
	font-size: 13px;
	text-align: center;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	height: 30px;
	
	position: relative;
	left: -120px;
}

button:hover {
	background-color: #94A963;
}

.footer {
	position: relative;
	width: 100%;
	bottom: 0;
	background: #fafaf5;
	padding: 10px;
	text-align: center;
	color: #426B1F;
}

h3 {
	font-size: 25px;
	color: #426B1F;
	font-family: 'Spartan';
}
#searchThink, #searchInput{
	width: 150px;
	height: 30px
	
	border-radius: 5px;
	padding: 5px;
}
#searchResultsContainer{
	width: 500px;
	height: 100px;
	border: 1px solid #426B1F;
	border-radius: 5px;
	margin: 30px;
	
	position: relative;
	left: 120px;
}
#selectContainer{
	width: 500px;
	height: 100px;
	border: 1px solid #426B1F;
	border-radius: 5px;
	margin: 30px;
	
	position: relative;
	left: 120px
}
.submit{
	background-color: #426B1F;
	color: white;
	padding: 10px 20px;
	font-size: 13px;
	text-align: center;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	height: 30px;
	
	position: relative;
	left: 200px;
	top: 110px;
}
.date{
	position: relative;
	left: 150px;
	top: 20px;
}
</style>
</head>
<body>
	<div class="header">
		<a href="home"><h1>DIET</h1></a>
		<nav class="nav">
			<ul class="menu">
				<li class="item"><a href="insertDailyFood.do" class="link">
						<i class="fa fa-cutlery" aria-hidden="true"></i> <span>식단</span>
				</a></li>
				<li class="item"><a href="insertDailySport.do" class="link">
						<i class="fa fa-bicycle" aria-hidden="true"></i> <span>운동</span>
				</a></li>
				<li class="item"><a href="insertDailyDiary.do" class="link">
						<i class="fa fa-book" aria-hidden="true"></i> <span>일기</span>
				</a></li>
				<li class="item"><a href="insertDailyWeight.do" class="link">
						<i class="fa fa-balance-scale" aria-hidden="true"></i> <span>체중</span>
				</a></li>
				<li class="item"><a href="getBoardList.do" class="link"> <i
						class="fa fa-comments-o" aria-hidden="true"></i> <span>커뮤니티</span>
				</a></li>
				<li class="item"><a href="getMyPage.do" class="link"> <i
						class="fa fa-user-o" aria-hidden="true"></i> <span>My Page</span>
				</a></li>
				<li class="item"><a href="logout.me" class="link"> <i
						class="fa fa-sign-out" aria-hidden="true"></i> <span>Log-out</span>
				</a></li>
			</ul>
		</nav>
	</div>
	<div class="container">
		<div class="insertWorkout" align="left">
			<!--검색 사작-->
			<form class="searchForm" action="" method="get">
			  <table class="table-search" board="1" cellpadding="1" width="700">
			    <tr align="center">
			      <td align="center">
			      	<input type="text" id="searchThink" placeholder="연상 검색 결과" readonly>
			        <input type="text" id="searchInput" placeholder="검색내용 입력하세요" oninput="remoteMethod(this.value)">
			      </td>
			      <td>
			        <button onclick="search()"><i class="fa fa-search" aria-hidden="true"></i></button>
			      </td>
			    </tr>
			  </table>
			</form>
			<div id="searchResultsContainer"></div>
			<div class="date">
				<label for="datePicker">날짜 선택</label>
				<input type="date" id="datePicker" name="datePicker">
			</div>			
			<div id="selectContainer">
				<form onsubmit="submitForm()" action="">
					<table board="0" cellpadding="0" width="700">
						<tr align="left">	
							<td align="left">
								<input type="hidden" id="hiddenResults" name="hiddenResults">
							</td>
						</tr>
						
					</table>
					<input class="submit" type="submit" value="모두등록">
				</form>
			</div>
<script>
	function search() {
		//검색어 가져오기
		  var searchTerm = document.getElementById("searchInput").value;
		//서버로 검색 요청 보내기
		  fetch('/search?query=' + encodeURIComponent(searchTerm))
		    .then(response => response.json())
		    .then(data => {
		    	//검색 결과 표시
		      displayResults(data);
		    });
		}

	//검색 결과 표시 함수
	function displayResults(results){
		var resultContainer = document.getElementById("searchResults");
		
		//이전 결과 지우기
		resultContainer.innerHTML = "";
		
		//새로운 검색 결과 표시
		results.forEach(result =>{
			var resultElement = document.createElement("p");
			resultElement.textContent = result;
			resultContainer.appendChild(resultElement);
		});
		
		//숨겨진 입력 필드의 값 업데이트
		document.getElementById("hiddenResults").value = JSON.stringify(results);
		
	}
	//폼 제출 함수
	function submitForm() {
		//숨겨진 입력 필드의 값 가져오기
		var hiddenResultsValue = document.getElementById("hiddenResults").value;
		
		// 여기에 다른 제출해야 할 폼 요소의 처리 로직을 추가할 수 있음

		// 여기에서 숨겨진 입력 필드의 값을 사용하여 서버로 전송할 수 있음
		// 예: hiddenResultsValue를 서버로 전송하여 처리
	}
	//원격 메서드 함수
	function remoteMethod(query) {
		  if (query !== '') {
		    this.loading = true;
		    setTimeout(() => {
		      getData({ name: query }).then(res => {
		        this.loading = false;
		        this.options = res.data;
		        // 연상 검색 결솨 업데이트
		        document.getElementById("searchThink").value = res.data.join(', '); // 将结果用逗号分隔，你可以根据需要调整
		      });
		    }, 200);
		  } else {
		    remoteClear();
		  }
		}

</script>	
			
		</div>
		<!-- daily요약 -->
		<div class="rside">
			<h2>Daily 요약</h2>
			<p>일일 권장량： 2200kal</p>
			<p>섭취 갈로리: 1500kal</p>
			<p>남은 칼로리: 1000kal</p>
			<div class="result">
				<h4>Toady Is</h4>
				<h2>성공!</h2>

			</div>
		</div>
	</div>


	<!-- footer 영역 -->
	<footer class="footer">
		<p>I am footer</p>
		<p>Adress:xxxxxxxxxxxxxxxx</p>
		<p>Tel:xxx-xxxx-xxxx</p>
		<p>Email:xxxxx@gmail.com</p>
		<p>About us:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
	</footer>
</body>
</html>