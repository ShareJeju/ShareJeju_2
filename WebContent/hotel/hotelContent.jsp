<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Share JEJU</title>
<style type="text/css">

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
</style>
<script type="text/javascript">

$(function(){
	$('#total').click(function(){
		$("#sjlistTotal").show();
		$("#sjlistHotel").hide();
		$("#sjlistPension").hide();
		$("#sjlistHouse").hide();
		$("#sjlistOther").hide();
	});
	$('#hotel').click(function(){
		$("#sjlistHotel").show();
		$("#sjlistTotal").hide();
		$("#sjlistPension").hide();
		$("#sjlistHouse").hide();
		$("#sjlistOther").hide();
	});
	$('#pension').click(function(){
		$("#sjlistHotel").hide();
		$("#sjlistTotal").hide();
		$("#sjlistPension").show();
		$("#sjlistHouse").hide();
		$("#sjlistOther").hide();
	});
	$('#house').click(function(){
		$("#sjlistHotel").hide();
		$("#sjlistTotal").hide();
		$("#sjlistPension").hide();
		$("#sjlistHouse").show();
		$("#sjlistOther").hide();
	});
	$('#other').click(function(){
		$("#sjlistHotel").hide();
		$("#sjlistTotal").hide();
		$("#sjlistPension").hide();
		$("#sjlistHouse").hide();
		$("#sjlistOther").show();
	});
});

</script>

<body style="background-color:white;">

<div id="sub_header">
 <img src="../images/hotel.jpg" width=100%> 

</div>

<div class="sub_content">
	<div class="sjmap">
	 <img src="../images/sjmap2.jpg" width=100%> 
	</div>
	<div class="category" >
	<ul>
	 
	 
	 <li id="total"><img src="../images/menu1.jpg" width=100%></li>	 
	 <li id="hotel"><img src="../images/menu1.jpg" width=100%></li>
	 <li id="pension"><img src="../images/menu1.jpg" width=100%> </li>
	 <li id="house"><img src="../images/menu1.jpg" width=100%> </li>
	 <li id="other"><img src="../images/menu1.jpg" width=100%> </li>
	 
	</ul>	
	</div>

 </div>
<div class="container">
<!-- 전체 -->
  <div id="sjlistTotal" >
  
      <div class="row">
      <c:forEach var="vo" items="${list}">
        <div class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="../hotel/hotelDetailContent.do?no=${vo.id }"><img class="card-img-top" src="${vo.img }" height="283px" width="358px" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="../hotel/hotelDetailContent.do?no=${vo.id }">${vo.name }</a>
              </h4>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
       <div align=center>
	    	
	      <a href="hotelContent.do?page=${curpage>1?curpage-1:curpage} " class="btn btn-xs btn-danger a">이전</a>
	      ${curpage } page / ${totalpage } pages
	      <a href="hotelContent.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-xs btn-primary">다음</a>
	 </div>
    </div>
    
    
    </div>
    
    
    <!-- 호텔 -->
  <div class="container"  >
    <div id="sjlistHotel" style="display:none" >
  
      <div class="row">
      <c:forEach var="vo" items="${listHotel}">
        <div class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="../hotel/hotelDetailContent.do?no=${vo.id }"><img class="card-img-top" src="${vo.img }" height="283px" width="358px" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="../hotel/hotelDetailContent.do?no=${vo.id }">${vo.name }</a>
              </h4>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
      
    </div>
    
 </div>
   
   <!-- 펜션 -->
    <div class="container"  >
    <div id="sjlistPension" style="display:none" >
  
      <div class="row">
      <c:forEach var="vo" items="${listPension}">
        <div class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="../hotel/hotelDetailContent.do?no=${vo.id }"><img class="card-img-top" src="${vo.img }" height="283px" width="358px" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="../hotel/hotelDetailContent.do?no=${vo.id }">${vo.name }</a>
              </h4>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
      
    </div>
    
 </div>
   <!-- 집 -->
    <div class="container"  >
    <div id="sjlistHouse" style="display:none" >
  
      <div class="row">
      <c:forEach var="vo" items="${listHouse}">
        <div class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="../hotel/hotelDetailContent.do?no=${vo.id }"><img class="card-img-top" src="${vo.img }" height="283px" width="358px" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="../hotel/hotelDetailContent.do?no=${vo.id }">${vo.name }</a>
              </h4>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
      
    </div>
    
 </div>
   <!-- 기타 -->
    <div class="container"  >
    <div id="sjlistOther" style="display:none" >
  
      <div class="row">
      <c:forEach var="vo" items="${listOther}">
        <div class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="../hotel/hotelDetailContent.do?no=${vo.id }"><img class="card-img-top" src="${vo.img }" height="283px" width="358px" ></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="../hotel/hotelDetailContent.do?no=${vo.id }">${vo.name }</a>
              </h4>
              <p class="card-text"></p>
            </div>
          </div>
        </div>
        </c:forEach>
      </div>
      
    </div>
    
 </div>
     
    
 
  
   

   


</body>
</html>