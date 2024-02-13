<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일기 페이지</title>
<link rel="stylesheet" href="./index.css">
<style type="text/css">
	/* all view */
	*{
		margin: 0;
		padding: 0;
		list-style: none;
		text-decoration: none;
	}
	.header,.nav,.container,.footer{
		/*左浮动 */
	 	float:left;
	 	/*填满浏览器 */
	 	width:100%
	}
	.header{
	/* 	position: absolute; */
		height: 91px;
		left: 0px;
		right: 0px;
		top: 0px;
		
		background: #426B1F;
	}
	/* 导航 */
	.nav{
		height: 50px;
		left: 0px;
		right: 0px;
		top: 0px;
		
		background: #FAFAF5;
	}
	.navlist li{
		/* 通过有浮动让列表横排 */
		float: right;
		height: 50px;
		width: 100px;
		
		/* 	文本水平剧中 */
		line-height: 50px;
		text-align: center;
	}
	.navlist a{
		color:#000;;
		display: block;
		
	}
	.navlist a:hover{
		background:#E5F5BD;
	}
	.rside{
		box-sizing: border-box;
		
		float: right;
		height: 300px;
		left: 1139px;
		right: 43px;
		top: 300px;
		
		margin: 10px;
		
		background: #FAFAF5;
		border: 2px solid #E6E6E6;
		border-radius: 24px;
		

	}
	.content{
		margin: 0px,205px;
	}
	.rside,.content{
		padding: 5px;
	}
	.footer{
		
		width: 102px;
		height: 26px;
		left: 379px;
		top: 30px;
	
		font-family: 'Inter';
		font-style: normal;
		font-weight: 400;
		font-size: 20px;
		line-height: 130%;
		/* identical to box height, or 26px */
		display: flex;
		align-items: center;
		text-align: center;
		
		color: #FFFFFF;
	}
	
	</style>
</head>
<body>

	<div class="main">
		<div class="BodyBalanceBook">
			<h1>BodyBalanceBook</h1>
			<p>Logo or image</p>
		</div>
	 	<div class="nav">
	 		<ul class="navlist">
	 		 	<li><a href="/getMyPage.do">MY PAGE</a></li> 
	 		 	<li><a href="insertBoard.do">커뮤니티</a></li>
	 		 	<li><a href="#">체중</a></li>
	 		 	<li><a href="diary.do">일기</a></li> 
	 		 	<li><a href="#">운동</a></li> 
	 			<li><a href="#">식단</a></li> 
	 		</ul>
	 	</div>
	 	<!-- 主体领域 -->
	 	<div class="container">
	 		<!-- 요약 领域 -->
	 		<div class="rside">
	 			<h2>Daily 요약</h2>	
	 			<p>일일 권장량</p>
	 			<p>섭취 갈로리</p>
	 			<p>남은 칼로리</p>
	 			<p>Total</p>
	 			<p>일일 권장량</p>
	 		</div>
	 		
	 	<!-- 일기 상세 영역 -->
	 	<div class="/insertdiary" align="center">
	 	    <h1>오늘의 일기</h1>
	 	    <h3>하루 있었던 일을 작성해보세요!</h3>
	 	    <form action="insertdiary" method="post">
	 				<table border="1" cellpadding="0" cellspacing="0">
	 			
	                <!--  -->
	 					<tr>
	 						<td bgcolor="#FAFAF5" width="70" align="center">제목</td>
	 						<td align="left"><input type="text" name="title"/></td>
	 					</tr>
	 				<!--  -->
	 					<tr>
	 						<td bgcolor="#FAFAF5" align="center">작성자</td>
	 						<td align="left"><input type="text" name="writer" value="${mymember.nickname}" size="10" readonly/></td>
	 					</tr>
	 				<!--  -->
	 					<tr>
	 						<td bgcolor="#FAFAF5" align="center">내용</td>
	 						<td align="left"><textarea name="content" cols="40" rows="10"></textarea></td>
	 					</tr>
	 				<!--  -->
	 					<tr>
	 						<td align="center" colspan="2">
	 							<input type="submit" value="등록"/>
	 						</td>
	 					</tr>
	 				</table>
	 			</form>
	 		</div>
	 	</div>






</body>
</html>