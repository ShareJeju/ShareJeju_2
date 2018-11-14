<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">


<style type="text/css">



.img{
    position: relative;
    background-image: url(images/pic02.jpg);                                                               
    height: 450px;
    background-size: cover;
}
.img-cover{
   position: absolute;
   height: 450px;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.4);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:55%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: center;    
}

/* //////////////////////////////////////// */
/* .dropdown-menu {
	position: absolute;
	top: 100%;
	left: -50%;
	z-index: 1000;
	display: none;
	float: left;
	min-width: 160px;
	padding: 5px 0;
	margin: 2px 0 0;
	font-size: 14px;
	text-align: center;
	list-style: none;
	background-color: rgba(255,255,255,0.9);
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: 1px solid #ccc;
	border: 1px solid rgba(0, 0, 0, .15);
	border-radius: 4px;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 6px 12px rgba(0, 0, 0, .175)
}
.navbar-inverse {
    background-color: #fff;
    border-color: #fff;
    margin-bottom: 0px;
}

.bx-wrapper{
 position:absolute;
 margin-bottom: 0px;
 border: 0px;
} */
 .bx-wrapper img {
    max-width: 100%;
    height:450px;
} 


.stylish-input-group .input-group-addon{
    background: white !important; 
}
.stylish-input-group .form-control{
	border-right:0; 
	box-shadow:0 0 0; 
	border-color:#ccc;
}
.stylish-input-group button{
    border:0;
    background:transparent;
}
</style>
</head>
<body>
<div class="col-sm-12 col-sm-offset-3">
								<form>
	<div class="input-group stylish-input-group">
		<input type="text" class="form-control" placeholder="Search"
												style="background-color: rgba(255, 255, 255, 0.0); color:black;">
			<span class="input-group-addon">
				<button type="submit">
			<span class="glyphicon glyphicon-search"></span>
				</button>
		</span>
	</div>
	</form>
	</div>
</body>
</html>