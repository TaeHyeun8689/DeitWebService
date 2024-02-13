<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500에러</title>
<style>
body {
    background: #2E95EF;
    background-image: -moz-radial-gradient(center 45deg,circle cover, #9BD1FF, #2E95EF);
    background-image: -webkit-gradient(radial, 50% 50%, 0, 50% 50%,800, from(#9BD1FF), to(#2E95EF));
    padding-top: 15%;
}
.img-error{
width:220px;
height:220px;
}
</style>
</head>
<body>
<div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="col-md-12">
            <div class="pull-right" style="margin-top:10px;">
                <div class="col-md-10 col-md-offset-1 pull-right">
                    <img class="img-error" src="https://bootdey.com/img/Content/fdfadfadsfadoh.png">
                    <h2>500 에러 발생!</h2>
                    <p>죄송합니다. 예기치 못한 오류가 발생했습니다. 다시 시도해 주세요.</p>
                    <div class="error-actions">
                        <a href="#" onclick="history.back();" class="btn btn-primary btn-lg">
                            <span class="glyphicon glyphicon-arrow-left"></span>
                            뒤로 가기
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<a href="/">홈 화면으로 돌아가기</a>
</body>
</html>