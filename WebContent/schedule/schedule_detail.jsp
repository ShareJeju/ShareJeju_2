<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
*, *:before, *:after {
-moz-box-sizing: border-box;
-webkit-box-sizing: border-box;
box-sizing: border-box;
}
ul.main { 
  list-style: none;
  max-width: 100%;
  margin: 20px auto;
}
h3 {padding: 0; margin: 0;}


.date {
  width: 17%;
  padding: 6% 1% 0 0 ;
  float: left;
}

.date h3 {
  font-size: 1.5em;
}

.date p {
  font-size: .8em;
  float: left;
}

.events {
  float: left;
  width: 80%;
  border-left: 1px solid #ccc;
  margin-top: 5%;
  margin-bottom: 5%;
  padding-top: 1%;
}

.events-detail {
  max-width: 950px;
}

.events-detail p{
  padding: 10px;
  line-height: 22px;
  transition: ease .4s all;
  text-align: center;
}

/* .events-detail li:hover {
  background: #e9e9e9;
} */

.event-time {
  font-weight: 900;
}

/* .events-detail li a {
  text-decoration: none;
  color: #444;
  width: 100%;
  height: 100%;
  display: block;
} */

.event-location {
    font-size: .8em;
    color: tomato;
    margin-left: 70px;
}



@media all and (max-width: 641px) {
    .date {
      width: 100%;
      border-bottom: 1px solid #ccc;
      margin-bottom: 10px;
    }
  
  .events {
    border:none;
    width: 100%;
    margin-top: 0;
  }
  
  .events-detail {
    padding: 0;
  }
  
  li.date p {
    margin:0;
  }
}
.middle {
    position: absolute;
    left: 50%;
    transform: translate(-50%, -350%);
    text-align: center;
    color: white;
}

hr {
    margin: auto;
    width: 40%;
}
p {
	margin: 0 0 5px;
}
.events-detail img { 
    display: inline-block;
    margin: 20px -20px 50px 100px;
}
.tags span{
	font-size: 20px;
}
.tags .tagging{
    margin: 0 -20px 0 40px;
}
.comment{
    width: 100%;
    float: left;
    margin:  10px 0 0 50px;
}
.tags{
	width:1000px;
    float: left;
    margin:  10px 0 0 -15px;
}
/* .profile-pic {
	max-width:100%; 
	height:100%;
    display: block;
    margin: 0 -20px 0;

}
.circle {
    border-radius: 1000px !important;
    overflow: hidden;
    width: 170px;
    height: 170px;
    margin-left: 480px;
} */
.p-image {
  position: absolute;
  right:42%; top:23%;
  color: #666666;
  transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
}
.profile-img{
	position:absolute;
	left:50%; top:4%;
}
.profile-img{
    overflow: visible;
    float: left;
    position: relative;
    width: 42px;
    height: 42px;
    margin-left: 10px;
}
.like input.img-button {

  background-image : url('../images/icon/s_heart1.png');
  border: none; 
  background-color: white;
  background-repeat:no-repeat;
  width: 64px;
  height: 64px;
  margin-left: 540px;
}
/* comment */
.comment_content{
    width: 1100px;
    margin: 0 auto;
    padding: 10px;
    margin-bottom: 50px;
}
.list_comment{
    display: block;
    width: 100%;
    border-top: 1px solid #eee;
}
.list_comment li.item{
    float: left;
    padding: 30px 14px;
    border-bottom: 1px solid #eee;
}
.list_comment .link_profile{
    overflow: visible;
    float: left;
    position: relative;
    width: 42px;
    height: 42px;
    margin-left: 10px;
}
.list_comment .cont_info{
	float: left;
    position: relative;
    width: 950px;
    padding-left: 50px;
}
.list_comment .desc_comment{
    padding: 8px 0 0 0;
    font-size: 14px;
    word-wrap: break-word;
    clear: left;
}
.row{
    margin-right: 70px;
    margin-left: 50px;
}
</style>
<script type="text/javascript">
var i=0; // 전역변수
$(function(){
	$('.update').click(function(){
		var no=$(this).attr("value");
		// $(this) ; 많은 a태그 중 클릭한 태그
		//alert("no="+no);
		if(i==0)
		{
			$('.reply_update').hide();
			$('#m'+no).show();
			$(this).text("취소");
			i=1;
		}
		else
		{
			$('.reply_update').hide();
			$('#m'+no).hide();
			$(this).text("수정");
			i=0;
		}

	});
});
$(function(){
	$('.delete').click(function(){
		alert("댓글이 정상적으로 삭제되었습니다.");
	});
});
</script>
</head>
<body style="background-color: white;">
	<div class="parallax"
		style=" background: url('../schedule_upload/${vo.main_img }');
    			min-height: 650px; 
			    background-attachment: fixed;
			    background-position: center;
			    background-repeat: no-repeat;
			    background-size: cover;">
	</div>
		<div style="font-size:20px;">
		  <div class="middle">
		    <h1 style="color:black;">${vo.title }</h1>
		    <hr>
		    <p style="color:black;">${vo.day }</p>
		  </div>
		</div>
	<div class="container"> 
	<div class="row" style="margin-left:-20px;">
 	 <ul class="main">
	  <c:forEach var="t" items="${text }" varStatus="status">
	  <li class="date">
	  	<h3>${status.index+1}일차</h3>   
	  </li>	  
	  <li class= "events">
	    <ul class="events-detail">	    	
	       <img src="../schedule_upload/${img[status.index]}" width=700px; height=500px;/>   
   		   <p>${t}</p>
   	    </ul>  
   	   </li>   
	  </c:forEach>
	  
  	  </ul>
  	  </div>
  	  
  	  <div class="row tags" style="display:block;">
  	    <span style="font-size:20px; width:10%;">Tags</span>
  	    <c:forEach var="tag" items="${hashtag }">
  	      <input type=button class="btn btn-sm tagging" value="${tag }">
  	    </c:forEach>
  	  </div>	

 	    <div class=" row comment" style="display:block; margin-top:70px;">
		 <span style="font-size:20px; width:100%; padding:20 0 10 40;">작가의 다른 여행기 보기</span>  
 	  	    <ul class="list_comment"  style="list-style: none; border-top: none;">	  
 	  	    <li class="item" style="border-bottom: none;">
	  	     <div class="comments">
	  	        <span><a href="../schedule/schedule_detail.do?id=${vo.id-1}">이전글클릭</a></span>	       
	  	     </div>
	  	     <div class="comments" style="margin-top:15px;"> 
	  	        <span><a href="../schedule/schedule_detail.do?id=${vo.id+1}">다음글클릭</a></span>	       
	  	       </div>
	  	       </li>
	  	       </ul>
   	   </div>
   	    <div class="row">
		<a href="../schedule/schedule_list.do"><input type=button class="btn btn-md btn-danger" value="목록으로"
		 style="position:absolute; right:445px;"></a>
   	     </div>
 		<div class="row like"> <!-- todo: 좋아요 구현 -->
			<input type=button class="img-button">
		</div>
		
	<!-- 댓글 -->	
 	  	<div class="row">
   	      <a class="link_profile"><img src="../images/icon/girl.png" width="64" height="64"
 	       style="border-radius: 50px; border: 0 none; margin-left: 540px; margin-bottom: -90px; margin-top: -30px;" ></a>		
		</div>

 	    <div class="row comment" style="display:block; margin-top:80px;">
		 <span style="font-size:20px; width:100%; padding:20 0 10 40;">댓글 <strong>${count }</strong></span>
 	  	 
 	  	  <div class="comment_content">
			<c:if test="${count==0 }">
	     	  <p style="text-align:center">댓글이 없습니다.</p>
	    	</c:if>
	    	<c:if test="${count!=0 }">
	 	  	   <ul class="list_comment"  style="list-style: none;">
				<c:forEach var="rvo" items="${list }">
		 	  	    <li class="item">
		 	  	     <div class="comments">
		 	  	      <a class="link_profile"><img src="../images/icon/girl.png" width="42" height="42"
		 	  	       style="border-radius: 50px; border: 0 none;"></a>
		 	  	      <div class="cont_info">
		 	  	       <div class="info_append">  	  
		 	  	        <strong>${rvo.name} ${rvo.created_at }</strong>	       
		 	  	       </div>
		 	  	       <p class="desc_comment">
		 	  	       	${rvo.content }
		 	  	       </p>
		 	  	       <c:if test="${rvo.userid==sessionScope.userid}">
  	                    <a class="btn btn-xs btn-warning update"
			             value="${rvo.id }"
			            >수정</a>
			            <a href="../schedule/reply_delete.do?id=${rvo.id }&sid=${vo.id}" class="btn btn-xs btn-info delete"
			             >삭제</a>
		 	  	       </c:if>
		 	  	      </div>
		 	  	     </div>
		 	  	     </li>
		 	  	     <li id="m${rvo.id }" style="display:none;" class="reply_update">
			          <div class="comments">
			          <form method="post" action="../schedule/reply_update.do">
				        <input type="hidden" name="sid" value="${vo.id }"> <!-- bno : 게시물번호 -->
				        <input type="hidden" name="id" value="${rvo.id }">
				       <textarea rows="2" cols="80" name="content" style="float:left">${rvo.content }</textarea>
				       <input type=submit value="댓글수정" style="height:50px;float:left" class="btn btn-sm btn-success">
				      </form>
			          </div>
			         </li>
				</c:forEach>
	 	  	   </ul>  	  	  
	 	  	 </c:if> 
	 	  <form method="post" action="../schedule/reply_new.do">
	   	  	  <input type="hidden" name="sid" value="${vo.id }">
	   	  	  <textarea rows="50" cols="120"style="margin-left:90px; height:100px; margin-top:20px;"
	   	  	   placeholder="댓글을 입력해주세요." name=content></textarea>
	   	  	  <input type="submit" class="btn btn-md btn-success" value="확인"
	   	  	   style="margin-bottom:90px;">
 	  	  </form>
 	  	  </div>  	  	  
 	     </div>  
	</div>
</body>
</html>