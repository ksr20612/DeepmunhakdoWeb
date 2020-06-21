<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-1.9.0rc1.js"></script>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700&display=swap" rel="stylesheet"> 
<style>
	#container{
		width : 100%;
		font-family : 'Nanum Gothic', sans-serif;
	}
	#nameList{
		padding : 50px 30% 50px 30%;
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
			      <li class="nav-item">
			        <a class="nav-link" href="./mainPage">Home</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="./aboutUsPage">About Us </a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="./projectPage">Projects</a>
			      </li>
			  	  <li class="nav-item active">
			        <a class="nav-link" href="./contactUsPage">Contact Us <span class="sr-only">(current)</span></a>
			      </li>
			    </ul>
			  </div>
			</nav>				
		</div>
		<div id="container">
			<div id="nameList">
				<div class="card mb-3" style="max-width: 540px;">
				  <div class="row no-gutters">
				    <div class="col-md-4">
				    	<div id="lol_logo" style="text-align: center; max-width: 100px; margin: 10% 20% 10% 20%">
				      		<img src="./img/lol_images/void_crest_icon.png" class="card-img" height=100px alt="서재형" >
				      	</div>
				    </div>
				    <div class="col-md-8">
				      <div class="card-body">
				        <h5 class="card-title">서재형</h5>
				        <p class="card-text">팀장 및 프로젝트 총괄</p>
				        <p class="card-text"><small class="text-muted">wolhalang@gmail.com</small></p>
				      </div>
				    </div>
				  </div>
				</div>
				<div class="card mb-3" style="max-width: 540px;">
				  <div class="row no-gutters">
				    <div class="col-md-4">
				    	<div id="lol_logo" style="text-align: center; max-width: 100px; margin: 10% 20% 10% 20%">
				      		<img src="./img/lol_images/bandle_city_crest_icon.png" height=100px class="card-img" alt="장동환">
				      	</div>
				    </div>
				    <div class="col-md-8">
				      <div class="card-body">
				        <h5 class="card-title">장동환</h5>
				        <p class="card-text">팀 운용 담당</p>
				        <p class="card-text"><small class="text-muted">dooley959@gmail.com</small></p>
				      </div>
				    </div>
				  </div>
				</div>	
				<div class="card mb-3" style="max-width: 540px;">
				  <div class="row no-gutters">
				    <div class="col-md-4">
				    	<div id="lol_logo" style="text-align: center; max-width: 100px; margin: 10% 20% 10% 20%">
				    		<img src="./img/lol_images/shurima_crest_icon.png" height=100px class="card-img" alt="이강희">
				    	</div>
				    </div>
				    <div class="col-md-8">
				      <div class="card-body">
				        <h5 class="card-title">이강희</h5>
				        <p class="card-text">전시 및 기획 담당</p>
				        <p class="card-text"><small class="text-muted">2kanghee1@gmail.com</small></p>
				      </div>
				    </div>
				  </div>
				</div>	
				<div class="card mb-3" style="max-width: 540px;">
				  <div class="row no-gutters">
				    <div class="col-md-4">
				    	<div id="lol_logo" style="text-align: center; max-width: 90px; margin: 12% 24% 12% 24%">
				      		<img src="./img/lol_images/freljord_crest_icon.png" class="card-img" height=90px alt="이민형">
				      	</div>
				    </div>
				    <div class="col-md-8">
				      <div class="card-body">
				        <h5 class="card-title">이민형</h5>
				        <p class="card-text">데이터 관리 및 모델링 담당</p>
				        <p class="card-text"><small class="text-muted">lmhljhlmhljh@naver.com</small></p>
				      </div>
				    </div>
				  </div>
				</div>
				<div class="card mb-3" style="max-width: 540px;">
				  <div class="row no-gutters">
				    <div class="col-md-4">
				    	<div id="lol_logo" style="text-align: center; max-width: 90px; margin: 12% 24% 12% 24%">
				      		<img src="./img/lol_images/iona_crest_icon.png" class="card-img" height=90px alt="유동연">
				      	</div>
				    </div>
				    <div class="col-md-8">
				      <div class="card-body">
				        <h5 class="card-title">유동연</h5>
				        <p class="card-text">웹 개발 담당</p>
				        <p class="card-text"><small class="text-muted">ksr20612@daum.net</small></p>
				      </div>
				    </div>
				  </div>
				</div>		
			</div>
		</div>
		<hr width="80%">
		<div id="footer">
			
		</div>
	</div>
</body>
</html>