<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deepmunhakdo</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-1.9.0rc1.js"></script>
<style>
	#start_button{
		text-align : center;
	}
	#projects{
		text-align : center;
		margin : 30px;
	}
	#carouselExampleFade{
		text-alingn : center;
		width : 100%;
		height : 20%;
	}
	#title{
		text-align : left;
	}
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
			      <li class="nav-item active">
			        <a class="nav-link" href="./mainPage">Home <span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="./aboutUsPage">About Us</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="./projectPage">Projects</a>
			      </li>
			  	  <li class="nav-item">
			        <a class="nav-link" href="./contactUsPage">Contact Us</a>
			      </li>
			    </ul>
			  </div>
			</nav>
		</div>
		<div id="container">
			<div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="./img/main_images/1.jpg" class="d-block w-100" height="600px" alt="이미지1">
			    </div>
			    <div class="carousel-item">
			      <img src="./img/main_images/2.jpg" class="d-block w-100" height="600px" alt="이미지2">
			    </div>
			    <div class="carousel-item">
			      <img src="./img/main_images/3.jpg" class="d-block w-100" height="600px" alt="이미지3">
			    </div>
			    <div class="carousel-item">
			      <img src="./img/main_images/4.jpg" class="d-block w-100" height="600px" alt="이미지4">
			    </div>
			  </div>
				  <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
			</div>
			<hr width="80%">
			<div id="content">
				<div id="projects">
					<div id="title"><h5>Recent Project</h5></div>
					<button type="button" id="start_button" class="btn btn-secondary btn-lg" onclick="startTest()">바로 시작하기</button>
				</div>
			</div>
			<hr width="80%">
			<div id="footer">
			
			</div>
		</div>
	</div>
<script type="text/javascript">
	function startTest(){
		document.location.href="readProjectPage?projectIdx=1";
	}
</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>