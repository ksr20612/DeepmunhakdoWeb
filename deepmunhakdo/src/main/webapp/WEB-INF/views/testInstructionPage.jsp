<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project1</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>

</style>
</head>
<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<div id="wrapper">
		<div id="top">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
			  <a href="./mainPage"><img src="./img/logo_2.PNG" width=160px></a>
			  &nbsp;
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="navbarNav">
			    <ul class="navbar-nav">
			      <li class="nav-item">
			        <a class="nav-link" href="./mainPage">Home</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="./aboutUsPage">About Us </a>
			      </li>
			      <li class="nav-item active">
			        <a class="nav-link" href="./projectPage">Projects <span class="sr-only">(current)</span></a>
			      </li>
			  	  <li class="nav-item">
			        <a class="nav-link" href="./contactUsPage">Contact Us</a>
			      </li>
			    </ul>
			  </div>
			</nav>	
		</div>	
		<div class="jumbotron">
		  <h1 class="display-4">수능 영어 지문이 막 제작되었습니다!</h1>
		  <p class="lead">셰봇이 영어 기사를 읽고 문제를 만들었네요.</p>
		  <hr class="my-4">
		  <p>문제는 한 문제만 출제되며, 제한시간은 4분입니다. 제한시간이 지나면 오답으로 처리됩니다.</p>
		  <a class="btn btn-danger btn-lg" role="button" onclick="startTest()">바로 문제 풀기</a>
		</div>
		<hr id="line" width="80%">
		<div id="footer">
		
		</div>
	</div>
<script>
	function startTest(){
		document.location.href="startTestPage";
	}
</script>
</body>
</html>