<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Share JEJU</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
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
.wl{
	background-color: rgba(255,255,255,.0);
	margin-top: 55px;
	
}

.table>tbody>tr>td{
	border-style: none;
	padding: 20px;
	vertical-align: middle;
}
.profile-pic {
	max-width:100%; 
	height:100%;
    display: block;
}
.circle {
    border-radius: 1000px !important;
    overflow: hidden;
    width: 170px;
    height: 170px;
    border: 8px solid rgba(255, 255, 255, 0.7);
    position: absolute;
    top: 150px;
    left: 587px;
}
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
</style>
<script type="text/javascript">
$(function(){
	$('#content').tabs();
	//setInterval("init()",1000);
	init();
	// 1. 데이터 => html()
	// 2. 일반데이터 => text()
});
</script>		
</head>
<body>
	<div class="jumbotron jumbotron-fluid" style="height: 450px; background-color: #f5b634;">
	 <div class="container wl">
	  <table class="table">
	   <tr>
	    <td width=40% class="text-center" rowspan="3">
			<div class="circle" style="background-color: #f5b634;">
		       <img class="profile-pic" src="../member/${profile }">			
			</div>
	    </td>
	    <td colspan="2" class="text-left">${sessionScope.name } 님의 제주위시리스트</td>
	   </tr>
	   <tr>
	    <td width=20% class="text-left">찜한 여행</td>
	    <td width=40%></td>
	   </tr>
	   <tr>
	    <td width=20% class="text-left">좋아요한 리뷰</td>
	    <td width=40%></td>
	   </tr>
	  </table>
	 </div>
	</div>
	
	<div id="content" class="container">
		  <ul class="nav nav-pills">
		    <li class="active"><a data-toggle="pill" href="#wish">찜한 내역</a></li>
		    <li><a data-toggle="pill" href="#like">좋아요</a></li>
		  </ul>		  
	  <!-- START tab-content -->	  
	  <div class="tab-content" style="margin-top: 20px; margin-left: 20px">	  
  			<!-- START review TAB -->
		    <div id="wish" class="tab-pane fade in active">
			 	<div class="row">
					<span class="pull-right">
					      <form>
						    <div class="form-group">
						      <label for="exampleSelect1">보기</label>
						      <select class="form-control" id="exampleSelect1">
						        <option>1</option>
						        <option>2</option>
						        <option>3</option>
						        <option>4</option>
						        <option>5</option>
						      </select>
					    	</div>
					      </form>
			 		    </span>
				</div>
				<div class="row">
			         <div class="col-lg-4">
			              <div class="card h-100">
			                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
			                <div class="card-body">
			                  <h4 class="card-title">
			                    <a href="#">찜</a>
			                  </h4>
			                  <p>설명</p>
			                </div>
			                <div class="card-footer">
			                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
			                </div>
			              </div>
			          </div>
			          <div class="col-lg-4">
			              <div class="card h-100">
			                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
			                <div class="card-body">
			                  <h4 class="card-title">
			                    <a href="#">찜2</a>
			                  </h4>
			                  <p>설명</p>
			                </div>
			                <div class="card-footer">
			                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
			                </div>
			              </div>
			          </div>
			        </div>
            	<div class="text-center"  style="margin-top:30px">
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
			 </div>
	        </div><!-- END review TAB -->

	      
	      <!-- START reserve TAB -->
	      <div id="like" class="tab-pane fade">
			<div class="row">
			<span class="pull-right">
			      <form>
				    <div class="form-group">
				      <label for="exampleSelect1">보기</label>
				      <select class="form-control" id="exampleSelect1">
				        <option>1</option>
				        <option>2</option>
				        <option>3</option>
				        <option>4</option>
				        <option>5</option>
				      </select>
			    	</div>
			      </form>
	 		    </span>
			</div>
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
	                <div class="card-footer">
	                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
	                </div>
	              </div>
	          </div>
	          <div class="col-lg-4">
	              <div class="card h-100">
	                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
	                <div class="card-body">
	                  <h4 class="card-title">
	                    <a href="#">좋아요2</a>
	                  </h4>
	                  <p>설명</p>
	                </div>
	                <div class="card-footer">
	                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
	                </div>
	              </div>
	          </div>
	        </div>
  		  	<div class="text-center"  style="margin-top:30px">
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
		 </div>
		 </div><!-- END reserve TAB -->

      </div><!-- END TAB-CONTENT -->
    </div> <!-- END CONTENT -->
</body>
</html>