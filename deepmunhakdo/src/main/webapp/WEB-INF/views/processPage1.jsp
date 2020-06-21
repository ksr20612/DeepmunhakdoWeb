<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Process1</title>
<link href="${pageContext.request.contextPath}/resources/src/jquery.booklet.latest.css" type="text/css" rel="stylesheet" media="screen, projection, tv" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script> window.jQuery || document.write('<script src="${pageContext.request.contextPath}/resources/src/jquery-2.1.0.min.js"><\/script>') </script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/src/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/src/jquery.booklet.latest.min.js"></script>
<style>
	#buttons{
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
		<div id="mybook">
		    <div>
		        <img src="./img/process_1/${SATQuestion.questionIdx }.png" width=100% >
		    </div>
		    <div>
		        <img src="./img/process_2/${SATQuestion.questionIdx }.png" width=100%>
		    </div>
		    <div>
		        <img src="./img/codeBook/0001.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0002.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0003.jpg" width=100% height=500px>
		    </div>	
		    <div>
		        <img src="./img/codeBook/0004.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0005.jpg" width=100% height=500px>
		    </div>	
		    <div>
		        <img src="./img/codeBook/0006.jpg" width=100% height=500px>
		    </div>		
		    <div>
		        <img src="./img/codeBook/0007.jpg" width=100% height=500px>
		    </div>	
		    <div>
		        <img src="./img/codeBook/0008.jpg" width=100% height=500px>
		    </div>	
		    <div>
		        <img src="./img/codeBook/0009.jpg" width=100% height=500px>
		    </div>	
		    <div>
		        <img src="./img/codeBook/0010.jpg" width=100% height=500px>
		    </div>	    	
		    <div>
		        <img src="./img/codeBook/0011.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0012.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0013.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0014.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0015.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0016.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0017.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0018.jpg" width=100% height=500px>
		    </div>
		    <div>
		        <img src="./img/codeBook/0019.jpg" width=100% height=500px>
		    </div>
		</div>
		<div id="buttons">
			<button type="button" class="btn btn-outline-secondary btn-lg" id="next_button" onclick="next()">돌아가기</button>
			<button type="button" class="btn btn-outline-danger btn-lg" id="replay_button" onclick="replay()">다른 문제 풀기</button>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function() {
	    //single book
	    $('#mybook').booklet({
	    	width : '80%',
	    	height : 500,
	    	pagePadding: 0,
	    	pageNumbers: false,
	        tabs:  true,
	        tabWidth:  180,
	        tabHeight:  20,
	        manual: false,
	        overlays: true,
	        cursor: 'crosshair'
	    });
	});
	
	function next(){
		document.location.href="showResultPage";
	}
	
	function replay(){
		document.location.href="readProjectPage?projectIdx=1";
	}
</script>
</html>