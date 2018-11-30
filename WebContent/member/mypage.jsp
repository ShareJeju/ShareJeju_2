<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>

<html>
<head>
<title>Share JEJU</title>
<!-- 지우지말것 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <style type="text/css">
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

.profile-pic {
	max-width:100%; 
	height:100%;
    display: block;
}

.file-upload {
    display: none;
}
.circle {
    border-radius: 1000px !important;
    overflow: hidden;
    width: 170px;
    height: 170px;
    border: 8px solid rgba(255, 255, 255, 0.7);
    position: absolute;
    top: 72px;
}
.p-image {
  position: absolute;
  right:42%;
  margin-top: 185px;
  color: #666666;
  transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
}
.p-image:hover {
  transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
}
.upload-button {
  font-size: 2.2em;
}

.upload-button:hover {
  transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
  color: #999;
}
.mod-profile{
	position: absolute;
	right:2%; top:8%;
	width:65px; 
	height:65px;

}
.profile-img{
	position:absolute;
	left:45%; top:8%;
}
.profile-p{
	font-size: 20px;
	position: absolute;
    left: 42%;
    margin-top: 263px;
}
input[type=file]{
	display:none;
}
.jumbotron p{
	font-size:20px;
}
.tab-content .row{
	margin-bottom:40px;
}
.row .col-lg-4
{
	padding-bottom: 20px;
}
</style>
<script type="text/javascript">
$(function(){
	$('#content').tabs();
	//setInterval("init()",1000);
	init();
	// 1. 데이터 => html()
	// 2. 일반데이터 => text()
});
function init()
{
	$.ajax({
		type:'post',
		url:'my_mp_review.jsp',
		success:function(response)
		{
			$('#review-tab').html(response);
		}
	});
}
$(document).ready(function() {

    
    var readURL = function(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('.profile-pic').attr('src', e.target.result);
            }
    
            reader.readAsDataURL(input.files[0]);
        }
    }
    

    $(".file-upload").on('change', function(){
        readURL(this);
    });
    
    $(".upload-button").on('click', function() {
       $(".file-upload").click();
    });
});
</script>		
</head>
<body>	
	<div class="jumbotron jumbotron-fluid" style="height: 450px; background-color: #f5b634;">
	    <form method="post" action="../member/profile_upload_ok.do"
	     enctype="multipart/form-data">
			<div class="row">
			   <div class="small-12 medium-2 large-2 columns" style="padding-left:950px">
			    <div class="profile-img">
			     <div class="circle" style="background-color: #f5b634;">
					 <c:if test="${empty vo.profile_img }">
					 <img class="profile-pic" src="../images/icon/girl.png">
					 </c:if>
					 <c:if test="${!empty vo.profile_img }">
					 <img class="profile-pic" src="../member/${vo.profile_img }">
					 </c:if>
				</div>
 			    </div>

			     <div class="p-image" style="background-color: rgba(255,255,255,.0)">
			       <i class="fa fa-camera upload-button"></i>
			        <input class="file-upload" type="file" accept="image/*" name="profile">
			        <input type="submit" class="btn btn-sm btn-primary" style="margin-left:20px;" value="업로드">		
			     </div>
			  </div>
			</div>
			<p class="profile-p">${sessionScope.name } 님의 프로필사진을 올려주세요.</p>
			 <a href="../member/modify.do" role="button">
			 <img class="mod-profile" src="../images/icon/settings.png"></a>
	    </form>
 	</div>
	<!-- START CONTENT -->
	<div id="content" class="container">
		  <ul class="nav nav-pills">
		    <li class="active"><a data-toggle="pill" href="#review">REVIEW</a></li>
		    <li><a data-toggle="pill" href="#wish">찜</a></li>
		    <li><a data-toggle="pill" href="#like">좋아요</a></li>
		  </ul>		  
	  <!-- START tab-content -->	  
	  <div class="tab-content" style="margin-top: 20px; margin-left: 20px">	  

		    <div id="review" class="tab-pane fade in active">
			 <div id="content" class="container">
			  <ul class="nav nav-pills" style="margin-bottom:20px">
			    <li class="active"><a data-toggle="pill" href="#trip">여행기</a></li>
			    <li><a data-toggle="pill" href="#s_review">관광지 /맛집 /숙박</a></li>
			  </ul>		  
			</div>
		  		<!-- START CARD -->
			<div class="tab-content">
			 <div id="trip" class="tab-pane fade in active">
				<div class="row">
				<c:if test="${sc_count==0}">
				 <p>작성한 리뷰가 없습니다.</p>
				</c:if>
				<c:if test="${sc_count!=0}">
				<c:forEach var="slist" items="${sclist }">

		         <div class="col-lg-4">
		              <div class="card h-100">
	                  <a href="#">
		                <c:if test="${slist.main_img==null }">
		                  <img class="card-img-top" src="../images/noimage.jpg" alt="" width="700" height="250">
		                </c:if>
		                <c:if test="${slist.main_img!=null }">
		                  <a href="../schedule/schedule_detail.do?id=${slist.id }"><img class="card-img-top" src="../schedule_upload/${slist.main_img }" alt="${slist.title }"
		                   width="700" height="250"></a>
		                </c:if>
		                </a>
		                <div class="card-body">
		                  <h4 class="card-title">
		                    <a href="../schedule/schedule_detail.do?id=${slist.id }">${slist.title }</a>
		                  </h4>
		                  <p>${slist.hashtag }</p>
		                </div>
		              </div>
		          </div>
		          </c:forEach>
		          </c:if>
		        </div>
			 </div>
	 <!-- 맛광숙리뷰 -->
	 	 <div id="s_review" class="tab-pane fade">
		  <div class="row">
			<c:if test="${fth_count==0}">
			 <p>작성한 리뷰가 없습니다.</p>
			</c:if>
			<c:if test="${fth_count!=0}">
			 <!-- Food -->
			<c:forEach var="flist" items="${fthlist }">
	         <div class="col-lg-4">
	              <div class="card h-100">
	                <c:if test="${flist.review_img==null }">
	                  <img class="card-img-top" src="../images/noimage.jpg" alt="" width="700" height="250">
	                </c:if>
	                <c:if test="${flist.review_img!=null }">
	                 <c:choose >
  	     			   <c:when test="${flist.cate=='맛집' }">
	                    <a href="../food/fooddetailcontent.do?id=${flist.cid }">
	                    <img class="card-img-top" src="../FoodReivewImg/${flist.review_img }" alt="${flist.review_subject }"
	                   width="700" height="250"></a>
	                   </c:when>
	                   <c:when test="${flist.cate=='관광' }">
                        <a href="../tour/tourdetailcontent.do?id=${flist.cid }">
	                    <img class="card-img-top" src="../tourReviewImg/${flist.review_img }" alt="${flist.review_subject }"
	                   width="700" height="250"></a>
	                   </c:when>
	                   <c:when test="${flist.cate=='숙박' }">
                         <a href="../hotel/hotelDetailContent.do?no=${flist.cid }">
	                    <img class="card-img-top" src="../hotelReivewImg/${flist.review_img }" alt="${flist.review_subject }"
	                   width="700" height="250"></a>
	                   </c:when>
	                  </c:choose>
	                </c:if>
	                <div class="card-body">
	                  <h4 class="card-title">
	                    <a href="../food/fooddetailcontent.do?id=${flist.cid }">${flist.review_subject }</a>
	                  </h4>
	                  <p>작성일 : ${flist.review_regdate }</p>
	                </div>
	              </div>
	          </div>
	          </c:forEach>
	          </c:if>
         </div>
			 </div>
			 
			</div>
				<!-- END CARD -->
<!-- 			<div class="text-center" style="margin-top:30px">
			  <ul class="pagination pagination-sm">
			    <li class="page-item disabled">
			      <a class="page-link" href="#">&laquo;</a>
			    </li>
			    <li class="page-item active">
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
			      <a class="page-link" href="#">&raquo;</a>
			    </li>
			  </ul>
			 </div> -->

	        </div>
	        
            <div id="reserve" class="tab-pane fade">
			<div class="row">
	 	         <div class="col-lg-4">
		              <div class="card h-100">
		                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		                <div class="card-body">
		                  <h4 class="card-title">
		                    <a href="#">예약</a>
		                  </h4>
		                  <p>설명</p>
		                </div>
		              </div>
		          </div>
		          <div class="col-lg-4">
		              <div class="card h-100">
		                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		                <div class="card-body">
		                  <h4 class="card-title">
		                    <a href="#">예약2</a>
		                  </h4>
		                  <p>설명</p>
		                </div>
		              </div>
		          </div>
		        </div>
<!-- 		       	<div class="text-center"  style="margin-top:30px">
				  <ul class="pagination pagination-sm">
				    <li class="page-item disabled">
				      <a class="page-link" href="#">&laquo;</a>
				    </li>
				    <li class="page-item active">
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
				      <a class="page-link" href="#">&raquo;</a>
				    </li>
				  </ul>
				 </div>	 -->
		    </div>		
		    
		    <!-- 찜 -->
           <div id="wish" class="tab-pane fade">
			<div class="row">
      <c:forEach var="vo" items="${list }">
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
		       
           <div id="like" class="tab-pane fade">
			<div class="row">
	 	         <div class="col-lg-4">
		              <div class="card h-100">
		                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		                <div class="card-body">
		                  <h4 class="card-title">
		                    <a href="#">좋아요</a>
		                  </h4>
		                  <p>설명</p>
		                </div>
		              </div>
		          </div>
		          <div class="col-lg-4">
		              <div class="card h-100">
		                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		                <div class="card-body">
		                  <h4 class="card-title">
		                    <a href="#">좋아요</a>
		                  </h4>
		                  <p>설명</p>
		                </div>
		              </div>
		          </div>
		        </div>  
		      </div>  
      </div><!-- END TAB-CONTENT -->
    </div> <!-- END CONTENT -->
</body>
</html>