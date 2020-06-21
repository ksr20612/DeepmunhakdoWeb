<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-1.9.0rc1.js"></script>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700&display=swap" rel="stylesheet"> 
<style>
	#container{
		padding : 0px 0px 30px 0px;
	}
	#slogan{
		width : 100%;
		padding : 30px 0px 30px 30px;
		font-family : 'Nanum Gothic', sans-serif;
		
	}
	#leftbox{
		border : 1px solid white;
		width : 10%;
		float : left;
	}
	#rightbox{
		border : 1px solid white;
		width : 10%;
		float : right;
	}
	#video{
		width : 80%;
		float : left;
	}
	#slogan1{
		padding : 0px 0px 10px 0px;
		font-family: 'Nanum Gothic', sans-serif;
	}
	#slogan2{
		font-family: 'Nanum Gothic', sans-serif;
	}
	#line{
		clear : both;
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
			      <li class="nav-item active">
			        <a class="nav-link" href="./aboutUsPage">About Us <span class="sr-only">(current)</span></a>
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
			<div id="slogan"><h3 id="text">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 인문학과 인공지능의 만남</h3></div>
			<h6 id="slogan1"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"인공 지능은 특정 영역 그리고 전문가만을 위한 것이 아닌,</h6>
			<h6 id="slogan2"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;모든 분야에서 누구나 활용할 수 있는 것이라 생각합니다."</h6>
			<br>
			<hr width="80%">
			<div id="leftbox"></div>
			<input type="hidden" id="video" value=""/>
			<video id="video" controls autoplay>      
			    <source type="video/mp4" src="" type="video/mp4" />      
			    <source src="./img/deepmunhakdo_intro.mp4" type="video/mp4">      
			    Your browser does not support HTML5 video.    
			</video>
			<div id="rightbox"></div>
		</div>
		<hr width="80%" id="line">
		<div id="footer">
			
		</div>
	</div>
</body>
</html>