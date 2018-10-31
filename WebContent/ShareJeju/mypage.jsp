<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Linear by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
<title>Share JEJU</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<style type="text/css">
.jumbotron-fluid{
	height:300px;
	background-color:gray;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>		
<noscript>
	<link rel="stylesheet" href="css/skel-noscript.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/style-desktop.css" />
</noscript>
</head>
<body>
<%-- 	<jsp:include page="navbar.jsp"></jsp:include> --%>
	
	<div class="jumbotron jumbotron-fluid">
	  <div class="container">
	    <center><h1>MyPage</h1></center>      
	  </div>
	</div>
	
	<div id="content" class="container">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#home">Home</a></li>
    <li><a data-toggle="pill" href="#menu1">Menu 1</a></li>
  </ul>
  
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
		<div class="row">
			<div class="card-deck">
			  <div class="card col-sm-4">
			    <img class="card-img-top" src="images/sample_card.JPG" alt="Card image cap">
			    <div class="card-body">
			      <h5 class="card-title">Card title</h5>
			      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
			      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			    </div>
			  </div>
			  <div class="card col-sm-4">
			    <img class="card-img-top" src="images/sample_card.JPG" alt="Card image cap">
			    <div class="card-body">
			      <h5 class="card-title">Card title</h5>
			      
			      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
			      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			    </div>
			  </div>
			  <div class="card col-sm-4">
			    <img class="card-img-top" src="images/sample_card.JPG" alt="Card image cap">
			    <div class="card-body">
			      <h5 class="card-title">Card title</h5>
			      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
			      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			    </div>
			  </div>
			</div>
		</div>
	</div>
<%-- 		<div id="footer">
			<div class="container">
				<jsp:include page="footer.jsp"></jsp:include>	
			</div>
		</div> --%>
</body>
</html>