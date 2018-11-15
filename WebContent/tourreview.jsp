<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Share JEJU</title>
<meta http-equiv="content-type" content="text/html; charset=EUC-KR" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<script src="../js/index.js"></script>	
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<script src="js/skel.min.js"></script>
<script src="js/skel-panels.min.js"></script>
<script src="js/init.js"></script>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
#review_write{
  width:50%;
  margin:0 auto;
  margin-top:50px;
  text-align:center;
  border: 1px solid black;
  border-color:black;
  color:gray;
}
#review_write th{
  padding:10px;
  background-color:orange;
  color:white;
}
#review_write td{
  padding:10px;
}
</style>
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body class="homepage" style="background-color: white ">
	<!-- Header -->
      <div>
	    <table class="table-bordered table-hover" id="review_write">
	      <tr>
	       <th width=15% class="text-center">평점</th>
	       <td class="text-center" colspan="5">
	        <img src="images/icon/starscore.png" width=20 height=15>
	       </td>
	      </tr>
	      
	      <tr>
	       <th class="text-center">제목</th>
	       <td class="text-center">제목 영역</td>
	       <th class="text-center">등록일</th>
	       <td class="text-center">2018.11.08</td>
	       <th class="text-center">닉네임</th>
	       <td class="text-center">감기</td>
	      </tr>
	      
	      <tr>
	       <th class="text-center">방문날짜</th>
	       <td class="text-center" colspan="5">2018.11.08</td>
	      </tr>
	      
	      <tr>
	       <th class="text-center">해시태그</th>
	       <td class="text-center" colspan="5">#맛집 #카페</td>
	      </tr>
	      
	      <tr>
	       <th style="vertical-align:middle" class="text-center">후기</th>
	       <td class="text-center" colspan="5">맨도롱 또똣 이라는 드라마에 나온 카페라는데,
조명 켜 놓으니 외국에 온 것만 같아요^^
막 찍어도 잘 나오는 사진에 기분이 좋네요~~!
컵홀더도 이뻐서 집에 가져왔어요ㅋㅋ
웰시코기 강아지 4마리도 있답니다!
맨도롱 또똣 이라는 드라마에 나온 카페라는데,
조명 켜 놓으니 외국에 온 것만 같아요^^
막 찍어도 잘 나오는 사진에 기분이 좋네요~~!
컵홀더도 이뻐서 집에 가져왔어요ㅋㅋ
웰시코기 강아지 4마리도 있답니다!
맨도롱 또똣 이라는 드라마에 나온 카페라는데,
조명 켜 놓으니 외국에 온 것만 같아요^^
막 찍어도 잘 나오는 사진에 기분이 좋네요~~!
컵홀더도 이뻐서 집에 가져왔어요ㅋㅋ
웰시코기 강아지 4마리도 있답니다!
맨도롱 또똣 이라는 드라마에 나온 카페라는데,
조명 켜 놓으니 외국에 온 것만 같아요^^
막 찍어도 잘 나오는 사진에 기분이 좋네요~~!
컵홀더도 이뻐서 집에 가져왔어요ㅋㅋ
웰시코기 강아지 4마리도 있답니다!</td>
	      </tr>

	    </table>
	  </div> 
	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<!-- footer.jsp -->
				<jsp:include page="footer.jsp"></jsp:include>
			</div>
		</div>
	</body>
</html>