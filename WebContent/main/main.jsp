<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html style="margin-top: -6px">
   <head>
      <title>Share JEJU</title>
      <meta http-equiv="content-type" content="text/html; charset=EUC-KR" />
      <meta name="description" content="" />
      <meta name="keywords" content="" />
      <meta name="viewport" con="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="author" content="">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
      <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
      <link rel="stylesheet" type="text/css" href="../css/style.css" />
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> 
      <!-- link , script태그 추가금지!!!!!!!!!! -->
<style type="text/css">
.dropdown-menu {
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
   background-color: rgba(255, 255, 255, 0.9);
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
body {
   font-family: 'Varela Round', sans-serif;
}
.modal-login {      
   color: #636363;
   width: 350px;
}
.modal-login .modal-content {
   padding: 20px;
   border-radius: 5px;
   border: none;
}
.modal-login .modal-header {
   border-bottom: none;   
       position: relative;
       justify-content: center;
}
.modal-login h4 {
   text-align: center;
   font-size: 26px;
   margin: 30px 0 -15px;
}
.modal-login .form-control:focus {
   border-color: #70c5c0;
}
.modal-login .form-control, .modal-login .btn {
   min-height: 40px;
   border-radius: 3px; 
}
.modal-login .close {
       position: absolute;
   top: -5px;
   right: -5px;
}   
.modal-login .modal-footer {
   background: #ecf0f1;
   border-color: #dee4e7;
   text-align: center;
       justify-content: center;
   margin: 0 -20px 0px;
   border-radius: 5px;
   font-size: 13px;
}
.modal-login .modal-footer a {
   color: black;
}      
.modal-login .avatar {
   position: absolute;
   margin: 0 auto;
   left: 0;
   right: 0;
   top: -70px;
   width: 95px;
   height: 95px;
   border-radius: 50%;
   z-index: 9;
   background: #60c7c1;
   padding: 15px;
   box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
}
.modal-login .avatar img {
   width: 100%;
}
.modal-login.modal-dialog {
   margin-top: 80px;
}
   .modal-login .btn {
       color: #fff;
       border-radius: 4px;
   background: #60c7c1;
   text-decoration: none;
   transition: all 0.4s;
       line-height: normal;
       border: none;
   }
.modal-login .btn:hover, .modal-login .btn:focus {
   background: #45aba6;
   outline: none;
}
.trigger-btn {
   display: inline-block;
   margin: 100px auto;
}
@media ( min-width :768px) {
   .modal-dialog {
      width: 350px !important;
      margin: 30px auto
   }
</style>

<script>
  $(function() {
    $('#logBtn').click(function(){
       var userid=$('#userid').val();
       if(userid.trim()=="")
       {          
          $('#userid').focus();
          
          return;
       }
       var pw=$('#pw').val();
       if(pw.trim()=="")
       {
          $('#pw').focus();
          return;
       }
       /*
          ../main   => MainModel
          ../member => MemberModel
          ../board  => BoardModel
       */
       $.ajax({
          type:'post',
          url:'../member/login.do',
          data:{"userid":userid,"pw":pw},
          success:function(response)
          {
             var result=response.trim();
             if(result=="NOID")
             {
                alert("ID가 존재하지 않습니다");
                $('#userid').val("");
                $('#pw').val("");
                $('#userid').focus();
             }
             else if(result=="NOPWD")
             {
                alert("비밀번호가 틀립니다");
                $('#pw').val("");
                $('#pw').focus();
             }
             else
             {
                /* $('#myModal').modal('hide'); */
                location.href="../main/main.do";
             }
          }
       });
       
       //$('#myModal').modal('hide');
    });
  });
  </script>
   </head>   
<body class="homepage" style="background-color: white; margin-top: 50px; ">
  <div style="width: 100%">
  <nav class="navbar navbar-inverse navbar-fixed-top" >
   <div class="container-fluid">
      <ul class="nav navbar-nav" style="height: 50px;">
         <!-- 이유는 모르겠으나 이미지를 설정하는 걸로만 위치가 잡힌다
         float에 대한 설명 : https://ofcourse.kr/css-course/float-%EC%86%8D%EC%84%B1 -->
         <li id="licenter_home"><a href="../main/main.do"
            style="margin-top: 0px;">홈</a></li>
         <li id="licenter_jeju"><a href="#" style="margin-top: 0px;">제주소개</a></li>
         <li id="licenter_tour"><a href="../tour/tourcontent.do" style="margin-top: 0px;">관광지</a></li>
         <li id="licenter_tasty"><a href="../food/foodcontent.do?map=%C1%A6%C1%D6%BD%C3" style="margin-top: 0px;">맛집</a></li>
         <li id="licenter_hotels"><a href="../hotel/hotelContent.do" style="margin-top: 0px;">숙박</a></li>
         <li id="licenter_schedule"><a href="../schedule/schedule_main.do" style="margin-top: 0px;">여행기</a></li>
         
         
         <c:if test="${sessionScope.userid==null }">
         <li id="licenter_login">
            <a href="#myModal" class="trigger-btn" data-toggle="modal" style="margin-top: 0px;">로그인</a>
         </li>            
         </c:if>
         <c:if test="${sessionScope.userid!=null }">
              <li id="licenter_login">
              <a href="../member/logout.do">로그아웃</a>
              </li>
             </c:if>
         
         <li id="licenter_MY">         
            <div class="dropdown">
               <a class="btn btn-secondary dropdown-toggle" href="#" role="button"
                  id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                  aria-expanded="false"> <img src="../images/menu.png" width="30px" height="35px">
               </a>
               <!-- dropdown-menu는 home_clider.jsp에서 스타일을 새로 지정해줬다 안해주면 안됨 아믄 안됨 -->
               <!-- 충돌 안나게하려고 다른건 다 home_붙여서 새로 만들어줬는데 얘만 안됨...용서하기싫은데  건들수가없네 -->
               <div class="dropdown-menu" style="margin-top: 7px;">
                <c:if test="${sessionScope.userid!=null }">
                 <a class="dropdown-item" href="../member/mypage.do" id="myBtn">마이페이지</a><br> 
                </c:if>                  
                  <a class="dropdown-item" href="../member/notice_list.do">공지사항</a><br>
               </div>
            </div>
         </li>
      </ul>
   </div>
   </nav>
   
   <!-- Login Modal -->
   <div class="modal fade" id="myModal" role="dialog">
     <div class="modal-dialog modal-login">
      <div class="modal-content">
         <div class="modal-header">
            <div class="avatar">
               <img src="../images/login_img.png" alt="Avatar">
            </div>            
            <h4 class="modal-title">로그인</h4>
            <p style="font-size: 13px; margin: 22px 5px;"> 쉐어제주를 시작하기 위한 로그인을 해주세요.</p>        
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
         </div>
         <div class="modal-body">
            <form role="form" >
               <div class="form-group">
                  <input type="text" class="form-control" placeholder="아이디" required="required" id="userid">      
               </div>
               <div class="form-group">
                  <input type="password" class="form-control"  placeholder="비밀번호" required="required" id="pw">   
               </div>  
<!--                    <div class="form-group" style="margin-left:10px"> 
                <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" id="customCheck1">
                  <label class="custom-control-label" for="customCheck1">로그인 유지</label>
                </div>
                 </div>      
 -->                  <button type="button" id="logBtn" class="btn btn-primary btn-lg btn-block login-btn">Login</button>   
            </form>
         </div>
         <button type="button" class="btn btn-lg btn-block" style="background: #e45a5a; font-size: 14px"
         onclick="location.href='../member/join.do'">회원가입</button>
<!--          <button type="button" class="btn btn-lg btn-block" style="background: #c0c3c3; font-size: 14px"
         onclick="location.href='../mem_findID.jsp'">ID/PW찾기</button> -->
      </div>
     </div>
   </div>     
  
      </div>
      <jsp:include page="${main_jsp }"></jsp:include>
      <%-- <jsp:include page="../schedule/schedule_insert.jsp"></jsp:include> --%>
      
   <!-- Footer -->
      <div id="footer" style="background-color: black;">
         <div class="container">
            <!-- footer.jsp -->
            <jsp:include page="../footer.jsp"></jsp:include>
         </div>
      </div>
   </body>
</html>