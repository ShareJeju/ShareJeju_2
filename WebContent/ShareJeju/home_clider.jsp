<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<style type="text/css">
.bx-wrapper{
 margin-bottom: 0px;
 border: 0px;
}
 .bx-wrapper img {
    max-width: 100%;
    height:400px;
} 
.img{
    position: relative;
    background-image: url(images/pic02.jpg);                                                               
    height: 400px;
    background-size: cover;
}
.img-cover{
   position: absolute;
   height: 400px;
   width: 100%;
   background-color: rgba(0, 0, 0, 0.4);                                                                 
   z-index:1;
}
.img .content{
     position: absolute;
     top:50%;
     left:50%;
     transform: translate(-50%, -50%);                                                                   
     font-size:5rem;
     color: white;
     z-index: 2;
     text-align: center;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript">
$(function(){
   $('.bxslider').bxSlider({
      mode:'fade',
      auto:true,
      captions:true
   });
});


</script>
</head>
<body>
   <ul class="bxslider">
      <li>
      	<div class="img">
        <div class="content">
            <p>Hello!<p>
            <p>My name is sist<p>
        </div>
        <div class="img-cover"></div>
    </div>
      </li>
      <li><img src="images/pic02.jpg" width=100% height=90%></li>
      <li><img src="images/pic03.jpg" width=100% height=90%></li>
      <li><img src="images/pic04.jpg" width=100% height=90%></li>
   </ul>
</body>
</html>