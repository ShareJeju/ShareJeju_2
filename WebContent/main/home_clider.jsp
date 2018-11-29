<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!--검색바용 -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<script type="text/javascript">
$(function(){
   $('.bxslider').bxSlider({
      mode:'fade',
      auto:true,
      pause:3000,
      captions:true
   });
});


</script>


<style type="text/css">



.img1{
    position: relative;
    background-image: url(../images/main1.jpg);                                                               
    height: 575px;
    background-size: cover;
    width: 110%
}
.img2{
    position: relative;
    background-image: url(../images/main2.jpg);                                                               
    height: 575px;
    background-size: cover;
    width: 110%
}
.img3{
    position: relative;
    background-image: url(../images/main3.jpg);                                                               
    height: 575px;
    background-size: cover;
    width: 110%
}
.img4{
    position: relative;
    background-image: url(../images/main4.jpg);                                                               
    height: 575px;
    background-size: cover;
    width: 110%
}
.img-cover{
   position: absolute;
   height: 575px;
   width: 110%;
   background-color: rgba(0, 0, 0, 0.4);                                                                 
   z-index:1;
}
/* .img1 .content, .img2 .content, .img3 .content, .img4 .content{
     position: absolute;
     top:55%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: center;    
} */

.content{
     position: absolute;
     top:31%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: center;    
}

/* //////////////////////////////////////// */
	 .dropdown-menu {
   position: absolute;
   top: 100%;
   left: -10%;
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
 
.open>a{
	margin-top: 0px;
}

.btn{
	margin-top: 0px;
}
.bx-wrapper{
 margin-top:-54px;
 margin-bottom: 0px;
 -webkit-box-shadow:0 0 0px #ccc;
 border: 0px;
}
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
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<form action="../main/main_search.do" method="post">
						<div id="imaginary_container">
							<div class="input-group stylish-input-group">
								<input type="text" class="form-control" placeholder="Search" name="name"
									style="background-color: rgba(255, 255, 255, 0.0); color: black;">
								<span class="input-group-addon">
									<button type="submit">
										<span class="glyphicon glyphicon-search"></span>
									</button>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<ul class="bxslider">
      <li>
         <div class="img1" >
         </div>
      </li>
     <li>
         <div class="img2">
         </div>
      </li>
      <li>
         <div class="img3">
         </div>
      </li>
      <li>
         <div class="img4">
         </div>
      </li>
   </ul>
</body>
</html>