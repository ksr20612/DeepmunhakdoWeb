<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projects</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-1.9.0rc1.js"></script>
<style>
	#container{
		width : 100%;
	}
	#projectList{
		padding : 50px 30% 50px 30%;
	}
	#titles{
		color : black;
	}
	#count{
		text-align : center;
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
		<div id="container">
			<div id="leftContent"></div>
			<div id="projectList">
				<h6 class="text-muted font-weight-lighter" >총 ${projectNumber }개의 프로젝트</h6>
				<table class="table table-striped">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col">제목</th>
				      <th scope="col" id="count">조회수</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach var="projectList" items="${projectList }">
				    <tr>
				      <th scope="row">${projectList.projectIdx }</th>
				      <td><a href="./readProjectPage?projectIdx=${projectList.projectIdx }" id="titles">${projectList.title }</a></td>
				      <td id="count">${projectList.readCount }</td>
				    </tr>
				    </c:forEach>
				  </tbody>
				</table>				
			</div>
		</div>
		<hr width="80%">
		<div id="footer">
		
		</div>
	</div>
</body>
</html>