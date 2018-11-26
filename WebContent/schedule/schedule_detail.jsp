<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
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
.comment .other{
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

  background-image : url('../images/icon/like_1.png');
  border: none; 
  background-color: white;
  background-repeat:no-repeat;
  width: 64px;
  height: 64px;
  margin-left: 550px;
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

</style>
</head>
<body style="background-color: white;">
	<div class="parallax"
		style=" background: url('../images/back_review.jpg');
    			min-height: 650px; 
			    background-attachment: fixed;
			    background-position: center;
			    background-repeat: no-repeat;
			    background-size: cover;">
	</div>
		<div style="font-size:20px;">
		  <div class="middle">
		    <h1 style="color:white;">유럽여행기</h1>
		    <hr>
		    <p>2017.08.13 ~ 2017.09.01</p>
		  </div>
		</div>
	<div class="container"> 
 	 <ul class="main">
	  <li class="date">
	    <h3>1일차</h3>
	    <p>2018.11.15</p>
	  </li>
	  <li class= "events">
	    <ul class="events-detail">
	       <img src="../images/subimg.jpg" width=700px; height=500px;/>
   
			<p>한국에서의 마지막 식사를 양식으로 먹는 우리.
			그렇게 먹고 싶던 shack burger를 앞에 두고도 몸 컨디션이 별로라 제대로 즐기지 못하니 괜히 기분이 다운 되는 것 같다.
			그래도 즐거운 여행이 기다리고 있으니 이정도 힘든건 참아넘길 수 있다
						한국에서의 마지막 식사를 양식으로 먹는 우리.
			그렇게 먹고 싶던 shack burger를 앞에 두고도 몸 컨디션이 별로라 제대로 즐기지 못하니 괜히 기분이 다운 되는 것 같다.
			그래도 즐거운 여행이 기다리고 있으니 이정도 힘든건 참아넘길 수 있다.</p>
						<p>한국에서의 마지막 식사를 양식으로 먹는 우리.
			그렇게 먹고 싶던 shack burger를 앞에 두고도 몸 컨디션이 별로라 제대로 즐기지 못하니 괜히 기분이 다운 되는 것 같다.
			그래도 즐거운 여행이 기다리고 있으니 이정도 힘든건 참아넘길 수 있다
						한국에서의 마지막 식사를 양식으로 먹는 우리.
			그렇게 먹고 싶던 shack burger를 앞에 두고도 몸 컨디션이 별로라 제대로 즐기지 못하니 괜히 기분이 다운 되는 것 같다.
			그래도 즐거운 여행이 기다리고 있으니 이정도 힘든건 참아넘길 수 있다.</p>
   	    </ul>  
   	   </li>   
   	   
   	   	  <li class="date">
	    <h3>2일차</h3>
	    <p>2018.11.16</p>
	  </li>
	  <li class= "events">
	    <ul class="events-detail">
			<p>한국에서의 마지막 식사를 양식으로 먹는 우리.
			그렇게 먹고 싶던 shack burger를 앞에 두고도 몸 컨디션이 별로라 제대로 즐기지 못하니 괜히 기분이 다운 되는 것 같다.
			그래도 즐거운 여행이 기다리고 있으니 이정도 힘든건 참아넘길 수 있다
						한국에서의 마지막 식사를 양식으로 먹는 우리.
			그렇게 먹고 싶던 shack burger를 앞에 두고도 몸 컨디션이 별로라 제대로 즐기지 못하니 괜히 기분이 다운 되는 것 같다.
			그래도 즐거운 여행이 기다리고 있으니 이정도 힘든건 참아넘길 수 있다.</p>
   	    </ul>  
   	   </li>  
  	  </ul>
  	  
  	  <div class="row tags" style="display:block;">
  	    <span style="font-size:20px; width:10%;">Tags</span>
  	    <input type=button class="btn btn-sm tagging" value="사과">
  	    <input type=button class="btn btn-sm tagging" value="나무">
  	    <input type=button class="btn btn-sm tagging" value="여행">
   	    <input type=button class="btn btn-sm tagging" value="사과">
  	    <input type=button class="btn btn-sm tagging" value="나무">
  	    <input type=button class="btn btn-sm tagging" value="여행">
  	  </div>	
  	  
 	    <div class="row other" style="display:block;">
  		 <span style="font-size:20px; width:100%;">작가의 이전 글 보기</span>
		  <table class="table" style="margin-top:20px; margin-left: 100px; border-style: hidden; width: 880px;">
			<tr>
				<td width=30% class="text-left"><a href="#">이전글클릭</a></td>
			</tr>
			<tr>
				 <td width=30% class="text-left"><a href="#">다음글클릭</a></td>
			</tr>
		  </table>
  	  </div>
 		<div class="row like"> <!-- todo: 좋아요 구현 -->
			<input type=button class="img-button">
		</div>
		
  	  	<div class="row">
  	  	      <a class="link_profile"><img src="../images/icon/girl.png" width="64" height="64"
  	  	       style="border-radius: 50px; border: 0 none; margin-left: 500px; margin-bottom: -25px;"></a>		
		</div>

  	    <div class=" row comment" style="display:block;">
  		 <span style="font-size:20px; width:100%; padding:20 0 10 40;">댓글</span>
  	  	 
  	  	  <div class="comment_content">
  	  	   <ul class="list_comment">
  	  	    <li class="item">
  	  	     <div class="comments">
  	  	      <a class="link_profile"><img src="../images/icon/girl.png" width="42" height="42"
  	  	       style="border-radius: 50px; border: 0 none;"></a>
  	  	      <div class="cont_info">
  	  	       <div class="info_append">  	  
  	  	        <strong>인영,  Nov 23. 2018</strong>	       
  	  	       </div>
  	  	       <p class="desc_comment">
  	  	       	일본 영화감독이 했던 말이 생각나는군요.
				가족이란 누가 보지만 않는다면 내다버리고 싶은 존재라고. 그 말이 전세계적으로 유명해졌다는걸 알고는, 맘속으로 다들.. 가족이란 존재에, 관계에 공통적으로 잘못을 저지르고 있구나 했어요. 가까운 사이니까, 가족이니까 말하지 않아도 알아주겠지, 이 정도는 이해해줘야지 않겠어? 가족간에 왜 그리 피곤하게 굴고 따지냐?..이런 생각들을 바탕으로 행해진 언어적 폭력들, 행동들..
				
				맞아요. 가까울수록 분명 더 예의를 지켜야하고 조심해야한다고 저도 생각합니다. 소중한 관계를 오래 지속시키려면, 상대방이 당연히 이해해주리라는 믿음이 있더라도 양해를 구하고 배려해주는게 반드시 필요하거든요.
				부부간에..서로 존댓말 쓰는 분들보면..처음엔 너무 낯설었답니다. 거리감이 들지 않을까? 부부간에 존댓말까지 써야되나?
				살다보니.. 다툴 때 정말 중요한게, 사람이 감정이 격해지고 화가 나면 상대를 깎아내리는 막말도 튀어나오거든요. 그런 순간에 존댓말을 쓰고 있던 부부라면 아무래도 말도 덜 격해지고 싸움이 조금이라도 덜 커질것 같다는 생각이 들더
  	  	       </p>
  	  	      </div>
  	  	     </div>
  	  	    </li>
  	  	    
 	      	<li class="item">
  	  	     <div class="comments">
  	  	      <a class="link_profile"><img src="../images/icon/boy.png" width="42" height="42"
  	  	       style="border-radius: 50px; border: 0 none;"></a>
  	  	      <div class="cont_info">
  	  	       <div class="info_append">  	  
  	  	        <strong>정일,  Nov 23. 2018</strong>	       
  	  	       </div>
  	  	       <p class="desc_comment">
  	  	       	일본 영화감독이 했던 말이 생각나는군요.
				가족이란 누가 보지만 않는다면 내다버리고 싶은 존재라고. 그 말이 전세계적으로 유명해졌다는걸 알고는, 맘속으로 다들.. 가족이란 존재에, 관계에 공통적으로 잘못을 저지르고 있구나 했어요. 가까운 사이니까, 가족이니까 말하지 않아도 알아주겠지, 이 정도는 이해해줘야지 않겠어? 가족간에 왜 그리 피곤하게 굴고 따지냐?..이런 생각들을 바탕으로 행해진 언어적 폭력들, 행동들..
				
				맞아요. 가까울수록 분명 더 예의를 지켜야하고 조심해야한다고 저도 생깎아내리는 막말도 튀어나오거든요. 그런 순간에 존댓말을 쓰고 있던 부부라면 아무래도 말도 덜 격해지고 싸움이 조금이라도 덜 커질것 같다는 생각이 들더
  	  	       </p>
  	  	      </div>
  	  	     </div>
  	  	    </li>
  	  	    
   	  	    <li class="item">
  	  	     <div class="comments">
  	  	      <a class="link_profile"><img src="../images/icon/girl.png" width="42" height="42"
  	  	       style="border-radius: 50px; border: 0 none;"></a>
  	  	      <div class="cont_info">
  	  	       <div class="info_append">  	  
  	  	        <strong>인영,  Nov 23. 2018</strong>	       
  	  	       </div>
  	  	       <p class="desc_comment">
  	  	       	일본 영화감독이 했던 말이 생각나는군요.
				가족이란 누가 보지만 않는다면 내다버리고 싶은 존재라
  	  	       </p>
  	  	      </div>
  	  	     </div>
  	  	    </li>  	  	    
  	  	   </ul>  	  	  
    	  	  <input type="text" size="120" style="margin-left:50px; margin-top:20px; height:100px;"
    	  	   placeholder="댓글을 입력해주세요.">
    	  	  <input type="submit" class="btn btn-md btn-success" value="확인">
  	  	  </div>  	  	  
  	     </div>  
	</div>
</body>
</html>