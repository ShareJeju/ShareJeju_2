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
		    <h1 style="color:white;">���������</h1>
		    <hr>
		    <p>2017.08.13 ~ 2017.09.01</p>
		  </div>
		</div>
	<div class="container"> 
 	 <ul class="main">
	  <li class="date">
	    <h3>1����</h3>
	    <p>2018.11.15</p>
	  </li>
	  <li class= "events">
	    <ul class="events-detail">
	       <img src="../images/subimg.jpg" width=700px; height=500px;/>
   
			<p>�ѱ������� ������ �Ļ縦 ������� �Դ� �츮.
			�׷��� �԰� �ʹ� shack burger�� �տ� �ΰ� �� ������� ���ζ� ����� ����� ���ϴ� ���� ����� �ٿ� �Ǵ� �� ����.
			�׷��� ��ſ� ������ ��ٸ��� ������ ������ ����� ���Ƴѱ� �� �ִ�
						�ѱ������� ������ �Ļ縦 ������� �Դ� �츮.
			�׷��� �԰� �ʹ� shack burger�� �տ� �ΰ� �� ������� ���ζ� ����� ����� ���ϴ� ���� ����� �ٿ� �Ǵ� �� ����.
			�׷��� ��ſ� ������ ��ٸ��� ������ ������ ����� ���Ƴѱ� �� �ִ�.</p>
						<p>�ѱ������� ������ �Ļ縦 ������� �Դ� �츮.
			�׷��� �԰� �ʹ� shack burger�� �տ� �ΰ� �� ������� ���ζ� ����� ����� ���ϴ� ���� ����� �ٿ� �Ǵ� �� ����.
			�׷��� ��ſ� ������ ��ٸ��� ������ ������ ����� ���Ƴѱ� �� �ִ�
						�ѱ������� ������ �Ļ縦 ������� �Դ� �츮.
			�׷��� �԰� �ʹ� shack burger�� �տ� �ΰ� �� ������� ���ζ� ����� ����� ���ϴ� ���� ����� �ٿ� �Ǵ� �� ����.
			�׷��� ��ſ� ������ ��ٸ��� ������ ������ ����� ���Ƴѱ� �� �ִ�.</p>
   	    </ul>  
   	   </li>   
   	   
   	   	  <li class="date">
	    <h3>2����</h3>
	    <p>2018.11.16</p>
	  </li>
	  <li class= "events">
	    <ul class="events-detail">
			<p>�ѱ������� ������ �Ļ縦 ������� �Դ� �츮.
			�׷��� �԰� �ʹ� shack burger�� �տ� �ΰ� �� ������� ���ζ� ����� ����� ���ϴ� ���� ����� �ٿ� �Ǵ� �� ����.
			�׷��� ��ſ� ������ ��ٸ��� ������ ������ ����� ���Ƴѱ� �� �ִ�
						�ѱ������� ������ �Ļ縦 ������� �Դ� �츮.
			�׷��� �԰� �ʹ� shack burger�� �տ� �ΰ� �� ������� ���ζ� ����� ����� ���ϴ� ���� ����� �ٿ� �Ǵ� �� ����.
			�׷��� ��ſ� ������ ��ٸ��� ������ ������ ����� ���Ƴѱ� �� �ִ�.</p>
   	    </ul>  
   	   </li>  
  	  </ul>
  	  
  	  <div class="row tags" style="display:block;">
  	    <span style="font-size:20px; width:10%;">Tags</span>
  	    <input type=button class="btn btn-sm tagging" value="���">
  	    <input type=button class="btn btn-sm tagging" value="����">
  	    <input type=button class="btn btn-sm tagging" value="����">
   	    <input type=button class="btn btn-sm tagging" value="���">
  	    <input type=button class="btn btn-sm tagging" value="����">
  	    <input type=button class="btn btn-sm tagging" value="����">
  	  </div>	
  	  
 	    <div class="row other" style="display:block;">
  		 <span style="font-size:20px; width:100%;">�۰��� ���� �� ����</span>
		  <table class="table" style="margin-top:20px; margin-left: 100px; border-style: hidden; width: 880px;">
			<tr>
				<td width=30% class="text-left"><a href="#">������Ŭ��</a></td>
			</tr>
			<tr>
				 <td width=30% class="text-left"><a href="#">������Ŭ��</a></td>
			</tr>
		  </table>
  	  </div>
 		<div class="row like"> <!-- todo: ���ƿ� ���� -->
			<input type=button class="img-button">
		</div>
		
  	  	<div class="row">
  	  	      <a class="link_profile"><img src="../images/icon/girl.png" width="64" height="64"
  	  	       style="border-radius: 50px; border: 0 none; margin-left: 500px; margin-bottom: -25px;"></a>		
		</div>

  	    <div class=" row comment" style="display:block;">
  		 <span style="font-size:20px; width:100%; padding:20 0 10 40;">���</span>
  	  	 
  	  	  <div class="comment_content">
  	  	   <ul class="list_comment">
  	  	    <li class="item">
  	  	     <div class="comments">
  	  	      <a class="link_profile"><img src="../images/icon/girl.png" width="42" height="42"
  	  	       style="border-radius: 50px; border: 0 none;"></a>
  	  	      <div class="cont_info">
  	  	       <div class="info_append">  	  
  	  	        <strong>�ο�,  Nov 23. 2018</strong>	       
  	  	       </div>
  	  	       <p class="desc_comment">
  	  	       	�Ϻ� ��ȭ������ �ߴ� ���� �������±���.
				�����̶� ���� ������ �ʴ´ٸ� ���ٹ����� ���� ������. �� ���� ������������ ���������ٴ°� �˰��, �������� �ٵ�.. �����̶� ���翡, ���迡 ���������� �߸��� �������� �ֱ��� �߾��. ����� ���̴ϱ�, �����̴ϱ� ������ �ʾƵ� �˾��ְ���, �� ������ ����������� �ʰھ�? �������� �� �׸� �ǰ��ϰ� ���� ������?..�̷� �������� �������� ������ ����� ���µ�, �ൿ��..
				
				�¾ƿ�. �������� �и� �� ���Ǹ� ���Ѿ��ϰ� �����ؾ��Ѵٰ� ���� �����մϴ�. ������ ���踦 ���� ���ӽ�Ű����, ������ �翬�� �������ָ���� ������ �ִ��� ���ظ� ���ϰ� ������ִ°� �ݵ�� �ʿ��ϰŵ��.
				�κΰ���..���� ���� ���� �е麸��..ó���� �ʹ� ��������ϴ�. �Ÿ����� ���� ������? �κΰ��� ���񸻱��� ��ߵǳ�?
				��ٺ���.. ���� �� ���� �߿��Ѱ�, ����� ������ �������� ȭ�� ���� ��븦 ��Ƴ����� ������ Ƣ����ŵ��. �׷� ������ ������ ���� �ִ� �κζ�� �ƹ����� ���� �� �������� �ο��� �����̶� �� Ŀ���� ���ٴ� ������ ���
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
  	  	        <strong>����,  Nov 23. 2018</strong>	       
  	  	       </div>
  	  	       <p class="desc_comment">
  	  	       	�Ϻ� ��ȭ������ �ߴ� ���� �������±���.
				�����̶� ���� ������ �ʴ´ٸ� ���ٹ����� ���� ������. �� ���� ������������ ���������ٴ°� �˰��, �������� �ٵ�.. �����̶� ���翡, ���迡 ���������� �߸��� �������� �ֱ��� �߾��. ����� ���̴ϱ�, �����̴ϱ� ������ �ʾƵ� �˾��ְ���, �� ������ ����������� �ʰھ�? �������� �� �׸� �ǰ��ϰ� ���� ������?..�̷� �������� �������� ������ ����� ���µ�, �ൿ��..
				
				�¾ƿ�. �������� �и� �� ���Ǹ� ���Ѿ��ϰ� �����ؾ��Ѵٰ� ���� ����Ƴ����� ������ Ƣ����ŵ��. �׷� ������ ������ ���� �ִ� �κζ�� �ƹ����� ���� �� �������� �ο��� �����̶� �� Ŀ���� ���ٴ� ������ ���
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
  	  	        <strong>�ο�,  Nov 23. 2018</strong>	       
  	  	       </div>
  	  	       <p class="desc_comment">
  	  	       	�Ϻ� ��ȭ������ �ߴ� ���� �������±���.
				�����̶� ���� ������ �ʴ´ٸ� ���ٹ����� ���� �����
  	  	       </p>
  	  	      </div>
  	  	     </div>
  	  	    </li>  	  	    
  	  	   </ul>  	  	  
    	  	  <input type="text" size="120" style="margin-left:50px; margin-top:20px; height:100px;"
    	  	   placeholder="����� �Է����ּ���.">
    	  	  <input type="submit" class="btn btn-md btn-success" value="Ȯ��">
  	  	  </div>  	  	  
  	     </div>  
	</div>
</body>
</html>