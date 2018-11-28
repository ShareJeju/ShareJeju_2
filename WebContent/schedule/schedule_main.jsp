<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<style type="text/css">
.out{
	text-align:center;
	margin: 20px;
	margin-top:150px;	
}
.inn {
 display: inline-block;
 width: 50%;
 height: 20px;
 }
 
.out2{
	text-align:center;
	margin: 20px;

	
}
.in2 {
 display: inline-block;
 width : 100%;
 height : 20px;
 }

/* Google Fonts */
@import url(https://fonts.googleapis.com/css?family=Open+Sans);

/* set global font to Open Sans */
body {
  font-family: 'Open Sans', 'sans-serif';
  background-image: url(http://benague.ca/files/pw_pattern.png);
}

/* header */
h1 {
  color: #55acee;
  text-align: center;
}

/* header/copyright link */
.link {
  text-decoration: none;
  color: #55acee;
  border-bottom: 2px dotted #55acee;
  transition: .3s;
  -webkit-transition: .3s;
  -moz-transition: .3s;
  -o-transition: .3s;
  cursor: url(http://cur.cursors-4u.net/symbols/sym-1/sym46.cur), auto;
}

.link:hover {
  color: #2ecc71;
  border-bottom: 2px dotted #2ecc71;
}

/* button div */
#buttons {
  padding-top: 1px;
  text-align: left;
}

/* start da css for da buttons */
.btn {
  border-radius: 5px;
  padding: 5px 25px;
/*   font-size: 10px; */
  text-decoration: none;
  margin: 5px;
  color: #fff;
  position: relative;
  display: inline-block;
}

.btn:active {
  transform: translate(0px, 5px);
  -webkit-transform: translate(0px, 5px);
  box-shadow: 0px 1px 0px 0px;
}

.blue {
  background-color: #55acee;
  box-shadow: 0px 5px 0px 0px #3C93D5;
}

.blue:hover {
  background-color: #6FC6FF;
}

.green {
  background-color: #2ecc71;
  box-shadow: 0px 5px 0px 0px #15B358;
  font-size: 15px;
}

.green:hover {
  background-color: #48E68B;
}

.red {
  background-color: #e74c3c;
  box-shadow: 0px 5px 0px 0px #CE3323;
}

.red:hover {
  background-color: #FF6656;
}

.purple {
  background-color: #9b59b6;
  box-shadow: 0px 5px 0px 0px #82409D;
  font-size: 15px;
}

.purple:hover {
  background-color: #B573D0;
}

.orange {
  background-color: #e67e22;
  box-shadow: 0px 5px 0px 0px #CD6509;
}

.orange:hover {
  background-color: #FF983C;
}

.yellow {
  background-color: #f1c40f;
  box-shadow: 0px 5px 0px 0px #D8AB00;
}

.yellow:hover {
  background-color: #FFDE29;
}


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
    
#sub_header{
	width:100%;
	background-color:black;
	color:white;
	margin:0 auto;
	display: inline-block;
}
#contents
{
/* 	width:100%; */
	margin:0 auto;
	background-color:gray;
}
.sjmap
{
	width:100%;
	background-color:red;
	color:white;
	display:inline-block;
}
.category
{
	float:left;
	text-align:center;
	width:100%;
	height:160px;
	padding-left:400px;
	padding-right:400px;
/* 	margin-left:200px; */
	background-color:white;
	color:white;
/* 	display: inline-block; */
	margin:0 auto;
	
}
.category ul
{


 list-style:none;
 float:left;
 disply:inline-block;
 
/* float: left;  */

}

.category ul li
{
disply:inline-block;
 marin:0;
 padding:0;
float: left; 
list-style:none;
width:200px;
height:160px;
text-align:center;
}

/* .list
{
	float: left; 
	width:100%;
	height:1000px;
	background-color:gray;
	color:white;
	display: inline-block;
} */
.sjlist .listalign
{
text-align:right;
padding-right:350px;
padding-top:50px;
font-size: 15px;
}
.page
{
	width:100%;
	height:200px;
	background-color:pink;
	color:white;
	display: inline-block;
}


<!--list css!-->

#sjlist
{
padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;
}
.jumbotron-fluid{
	   height: 300px;
	}
	.card {
  position: relative;
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  background-color: #fff;
  background-clip: border-box;
  border: 1px solid rgba(0, 0, 0, 0.125);
  border-radius: 0.25rem;
  margin: 5px;
  margin-right:-30px;
}

.card > hr {
  margin-right: 0;
  margin-left: 0;
}

.card > .list-group:first-child .list-group-item:first-child {
  border-top-left-radius: 0.25rem;
  border-top-right-radius: 0.25rem;
}

.card > .list-group:last-child .list-group-item:last-child {
  border-bottom-right-radius: 0.25rem;
  border-bottom-left-radius: 0.25rem;
}

.card-body {
  -ms-flex: 1 1 auto;
  flex: 1 1 auto;
  padding: 1.25rem;
}

.card-title {
  margin-bottom: 0.75rem;
}

.card-subtitle {
  margin-top: -0.375rem;
  margin-bottom: 0;
}

.card-text:last-child {
  margin-bottom: 0;
}

.card-link:hover {
  text-decoration: none;
}

.card-link + .card-link {
  margin-left: 1.25rem;
}

.card-header {
  padding: 0.75rem 1.25rem;
  margin-bottom: 0;
  background-color: rgba(0, 0, 0, 0.03);
  border-bottom: 1px solid rgba(0, 0, 0, 0.125);
}

.card-header:first-child {
  border-radius: calc(0.25rem - 1px) calc(0.25rem - 1px) 0 0;
}

.card-header + .list-group .list-group-item:first-child {
  border-top: 0;
}

.card-footer {
  padding: 0.75rem 1.25rem;
  background-color: rgba(0, 0, 0, 0.03);
  border-top: 1px solid rgba(0, 0, 0, 0.125);
}

.card-footer:last-child {
  border-radius: 0 0 calc(0.25rem - 1px) calc(0.25rem - 1px);
}

.card-header-tabs {
  margin-right: -0.625rem;
  margin-bottom: -0.75rem;
  margin-left: -0.625rem;
  border-bottom: 0;
}

.card-header-pills {
  margin-right: -0.625rem;
  margin-left: -0.625rem;
}

.card-img-overlay {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  padding: 1.25rem;
}

.card-img {
  width: 100%;
  border-radius: calc(0.25rem - 1px);
}

.card-img-top {
  width: 100%;
  border-top-left-radius: calc(0.25rem - 1px);
  border-top-right-radius: calc(0.25rem - 1px);
}

.card-img-bottom {
  width: 100%;
  border-bottom-right-radius: calc(0.25rem - 1px);
  border-bottom-left-radius: calc(0.25rem - 1px);
}

.card-deck {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
}

.card-deck .card {
  margin-bottom: 15px;
}

@media (min-width: 576px) {
  .card-deck {
    -ms-flex-flow: row wrap;
    flex-flow: row wrap;
    margin-right: -15px;
    margin-left: -15px;
  }
  .card-deck .card {
    display: -ms-flexbox;
    display: flex;
    -ms-flex: 1 0 0%;
    flex: 1 0 0%;
    -ms-flex-direction: column;
    flex-direction: column;
    margin-right: 15px;
    margin-bottom: 0;
    margin-left: 15px;
  }
}

.card-group {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
}

.card-group > .card {
  margin-bottom: 15px;
}

@media (min-width: 576px) {
  .card-group {
    -ms-flex-flow: row wrap;
    flex-flow: row wrap;
  }
  .card-group > .card {
    -ms-flex: 1 0 0%;
    flex: 1 0 0%;
    margin-bottom: 0;
  }
  .card-group > .card + .card {
    margin-left: 0;
    border-left: 0;
  }
  .card-group > .card:first-child {
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
  }
  .card-group > .card:first-child .card-img-top,
  .card-group > .card:first-child .card-header {
    border-top-right-radius: 0;
  }
  .card-group > .card:first-child .card-img-bottom,
  .card-group > .card:first-child .card-footer {
    border-bottom-right-radius: 0;
  }
  .card-group > .card:last-child {
    border-top-left-radius: 0;
    border-bottom-left-radius: 0;
  }
  .card-group > .card:last-child .card-img-top,
  .card-group > .card:last-child .card-header {
    border-top-left-radius: 0;
  }
  .card-group > .card:last-child .card-img-bottom,
  .card-group > .card:last-child .card-footer {
    border-bottom-left-radius: 0;
  }
  .card-group > .card:only-child {
    border-radius: 0.25rem;
  }
  .card-group > .card:only-child .card-img-top,
  .card-group > .card:only-child .card-header {
    border-top-left-radius: 0.25rem;
    border-top-right-radius: 0.25rem;
  }
  .card-group > .card:only-child .card-img-bottom,
  .card-group > .card:only-child .card-footer {
    border-bottom-right-radius: 0.25rem;
    border-bottom-left-radius: 0.25rem;
  }
  .card-group > .card:not(:first-child):not(:last-child):not(:only-child) {
    border-radius: 0;
  }
  .card-group > .card:not(:first-child):not(:last-child):not(:only-child) .card-img-top,
  .card-group > .card:not(:first-child):not(:last-child):not(:only-child) .card-img-bottom,
  .card-group > .card:not(:first-child):not(:last-child):not(:only-child) .card-header,
  .card-group > .card:not(:first-child):not(:last-child):not(:only-child) .card-footer {
    border-radius: 0;
  }
}

.card-columns .card {
  margin-bottom: 0.75rem;
}

@media (min-width: 576px) {
  .card-columns {
    -webkit-column-count: 3;
    -moz-column-count: 3;
    column-count: 3;
    -webkit-column-gap: 1.25rem;
    -moz-column-gap: 1.25rem;
    column-gap: 1.25rem;
    orphans: 1;
    widows: 1;
  }
  .card-columns .card {
    display: inline-block;
    width: 100%;
  }
  }
 
<!--list css!-->

#page{
margin-top:200px;
}

.gallery { 
    -webkit-column-count: 3;
    -moz-column-count: 3;
    column-count: 3;
    -webkit-column-gap: 10px;
    -moz-column-gap: 10px;
    column-gap: 10px;
    margin-top: 10px;
    overflow: hidden;
}

.gallery img { 
    width: 100%; 
    height: auto;
    transition: 500ms;
    margin-bottom: 10px;
    opacity: 0.8;
    page-break-inside: avoid; /* For Firefox. */
    -webkit-column-break-inside: avoid; /* For Chrome & friends. */
    break-inside: avoid; /* For standard browsers like IE. :-) */
}

.gallery img:hover {
    opacity: 1;
}

/* .modal {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: center;
} */
/* 
.modal-img,.model-vid{
  margin: 0;
  padding: 0;
  width: 100%;
  height: 100%;
  display: table
}
.modal-body{
  padding: 0px;
}

.modal-dialog {
  height: 100%;
      position: relative;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: center;
}

.modal-content {
  border: none;
} */

@media screen and (max-width: 767px) {
	.gallery { 
        -webkit-column-count: 2;
        -moz-column-count: 2;
        column-count: 2;
    }
	.gallery div { margin: 0; 
        width: 200px;
    }
  .modal-dialog {
        margin: 0 5vw;
    }
}

@media screen and (max-width: 479px) {
    .gallery { 
        -webkit-column-count: 1;
        -moz-column-count: 1;
        column-count: 1;
    }
    .gallery div { 
        margin: 0; 
        width: 200px;
    }
}
.centered {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}
</style>
<script type="text/javascript">
$(document).ready(function () {
	  $(".gallery-img").click(function(){
	    var t = $(this).attr("src");
	    $(".modal-body").html("<img src='"+t+"' class='modal-img'>");
	    $("#scModal").modal();
	  });
	});
</script>
</head>

<body style="background-color:#36b1bf;">

	<!-- 검색창 -->
<!-- 	<div class="out" style="width: 1500px; height: 50px;">
	
	<div class="inn">
		<div class="col-sm-12 col-sm-offset-3">
								<form>
	<div class="input-group stylish-input-group">
		<input type="text" class="form-control" placeholder="Search" style="background-color: rgba(255, 255, 255, 0.0); color:black;">
			<span class="input-group-addon">
				<button type="submit">
			<span class="glyphicon glyphicon-search"></span>
				</button>
			</span>
	</div>
	</form>
	</div>
	</div>
	</div> -->
	<!-- Hashtag -->
	
	<center>
	<div class="out2" style="width: 1500px; height: 50px; 	margin-top:150px;	">
	<div class="in2">
		<font size="5" style="align: center;"><a href="../schedule/schedule_list.do" style="color: black;">#여행기</a></font>&nbsp;&nbsp;
		<font size="5" style="align: center;"><a href="#" style="color: black;">#맛집</a></font>&nbsp;&nbsp;
		<font size="5"style="align: center;"><a href="#" style="color: black;">#관광지</a></font>&nbsp;&nbsp;
		<font size="5" style="align: center;"><a href="#" style="color: black;">#숙소</a></font>
	
	</div>
	
	</div>
	
	</center>
	
	<!-- 정렬 -->
	<div id="FilterButton">
	<div id="Content">
	
		<div id="buttons">
		<center>
	 		<a href="#" class="btn purple">최신순</a>
	 		<a href="#" class="btn green">인기순</a>
		</center>
		</div>
	
	</div>
	</div>
	<!-- 내용 출력 -->
	<div id="sharecontent">
	<center>
	  

   <div class="container" style="margin: 10px; padding: auto;">
  	<div id="sjlist">
  	  <div class="gallery">
		<a href="#">
		 <img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/14/enhanced/webdr01/original-9161-1439317330-3.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
		</a>
		<div style="margin-bottom: 20px; margin-top: 0px; font-size: 20px;">
		 <span>제주카페</span>
		</div>
<img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/15/enhanced/webdr08/original-13354-1439321173-3.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/15/enhanced/webdr08/original-13354-1439321173-3.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/15/enhanced/webdr04/original-25740-1439321209-5.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/15/enhanced/webdr08/original-9292-1439319916-3.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/14/enhanced/webdr05/original-6710-1439319334-17.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />

		<img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/15/enhanced/webdr02/original-16901-1439320287-3.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/15/enhanced/webdr04/original-29345-1439321306-8.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
		<img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/15/enhanced/webdr15/original-20286-1439320376-10.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
    <img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/14/enhanced/webdr02/original-6989-1439317507-15.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
    <img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/14/enhanced/webdr11/original-8867-1439317446-6.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
    <img src="https://img.buzzfeed.com/buzzfeed-static/static/2015-08/11/14/enhanced/webdr03/original-22498-1439319085-3.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="" width="100%" height="auto" class="gallery-img" />
	</div> 


      <!-- Pagination -->
      
    </div>
    <div id=page class="text-center">
    <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">3</a>
        </li>
          <li class="page-item">
          <a class="page-link" href="#">4</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">5</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">6</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">7</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">8</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">9</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#">10</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>
    </div>
    <!-- /.container -->
   </div>
   
<!--    <div id="scModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal">&times;</button>
      <h4 class="modal-title">이메일 전송 완료</h4>
    </div>
    <div class="modal-content">
      <div class="modal-body">
      </div>
    </div>
  </div>
</div> -->

</body>
</html>