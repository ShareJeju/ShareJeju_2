<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Share JEJU</title>
<script>
 $(function () {
          $('area').click(function () {
                //클릭될때
                $('.sjmap img').attr('src', $(this).attr('href'));
             
		//img의 src 속성값을 this(해당태그(img)의 href 값으로 바꿔라 
				var s=$(this).attr('alt');
		       //alert(s);
		       location.href="../food/foodcontent.do?map="+s;
		       return false;
               // 페이지 전환 막기
            });

		/* $('area#jeju').click(function(){
			$('#sjlist_jeju').show();
			$('#sjlist_jeju2').hide();
			return false;
		}); */
		
        });
          
</script>

<style type="text/css">
.hidden { display: none;  }
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
	/* color:gray; */
	color:#54d9cd;
	font-size:20px;
	font-weight:bold;
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
  font-weight:bold;
  color:#54d9cd;
  text-align:center;
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
<body>
<div id="sub_header">
 <img src="../images/subimg.jpg" width=100%> 

</div>

<div class="sub_content">
	<div class="sjmap">
	 <!-- <img src="../images/map/mapdefault.jpg" width=100%>  -->
	 
<img id="Image-Maps-Com-image-maps-2018-11-27-032155" src="../images/map/mapdefault.jpg" border="0" width="1920" height="600" orgWidth="1920" orgHeight="600" usemap="#image-maps-2018-11-27-032155" alt="" />
<map name="image-maps-2018-11-27-032155" id="jejumap">
<area shape="rect" coords="1918,598,1920,600" alt="Image Map" style="outline:none;" title="Image Map" href="http://www.image-maps.com/index.php?aff=mapped_users_0" />
<area id="jeju" alt="제주시"  href="../images/map/jeju.jpg" shape="poly" coords="816,188,820,202,833,198,841,212,847,252,862,290,911,272,930,260,958,255,988,273,1004,285,1015,265,1031,249,1034,240,1034,227,1030,217,1027,205,1025,193,1012,178,1010,165,1004,158,993,152,987,146,993,138,995,131,919,151,900,150,896,151" style="outline:none;" target="_self"     />
<area id="j_east" alt="제주시 동부"  href="../images/map/j_east.jpg" shape="poly" coords="998,130,993,147,1007,155,1012,173,1018,187,1030,200,1029,210,1031,222,1033,236,1036,249,1028,255,1010,282,1004,292,1014,302,1030,296,1043,291,1049,283,1061,282,1081,276,1093,262,1117,257,1126,258,1140,264,1160,256,1172,248,1178,244,1187,240,1212,236,1223,226,1232,219,1246,210,1258,201,1273,197,1282,194,1286,190,1293,182,1296,172,1294,166,1283,163,1281,156,1286,150,1269,142,1261,139,1250,139,1233,139,1232,137,1226,131,1215,122,1217,113,1214,105,1207,101,1179,107,1177,103,1170,98,1165,98,1153,99,1123,106,1123,104,1074,113,1074,111,1038,110" style="outline:none;" target="_self"     />
<area id="s_east" alt="서귀포시 동부" href="../images/map/s_east.jpg" shape="poly" coords="1019,303,1017,312,978,335,968,338,960,342,981,358,985,372,992,383,1000,402,1006,416,1017,427,1022,456,1019,467,1029,448,1044,443,1054,438,1062,441,1074,442,1095,435,1109,428,1112,426,1120,426,1130,431,1137,425,1142,418,1153,410,1164,404,1171,395,1181,403,1189,403,1200,401,1209,398,1218,393,1226,388,1226,379,1223,372,1238,356,1246,347,1251,337,1259,324,1271,306,1277,300,1283,292,1286,285,1292,276,1297,264,1299,257,1303,250,1311,260,1314,254,1308,247,1305,238,1305,230,1307,225,1310,222,1332,226,1322,214,1320,213,1310,203,1292,207,1287,199,1278,198,1264,202,1214,232,1196,242,1191,246,1183,246,1174,249,1161,260,1151,264,1140,264,1128,264,1120,264,1110,266,1096,269,1077,281,1065,288,1060,292,1052,293,1044,297,1027,305" style="outline:none;" target="_self"     />
<area id="s_middle" alt="서귀포시 중문"href="../images/map/s_middle.jpg" shape="poly" coords="878,337,866,333,858,333,847,335,842,337,836,340,830,346,829,354,822,372,821,387,816,396,812,399,810,397,806,400,802,408,797,412,792,408,789,403,783,397,779,397,774,412,774,436,773,451,771,465,771,478,794,481,802,473,819,473,839,481,851,477,864,478,878,492,890,489,897,486,906,484,912,480,918,476,931,477,945,475,950,473,964,477,978,472,985,475,998,479,1015,473,1020,455,1018,436,1013,426,1004,420,996,411,994,398,987,381,982,366,972,357,962,348,954,342" style="outline:none;" target="_self"     />
<area id="s_west" alt="서귀포시 서부"  href="../images/map/s_west.jpg" shape="poly" coords="648,424,607,400,593,405,584,410,582,418,589,426,598,446,604,456,616,463,638,472,653,478,657,492,668,503,678,520,676,527,688,524,698,521,708,531,701,503,712,496,720,487,729,480,740,477,756,479,772,484,772,470,772,455,772,452,772,443,771,427,775,415,774,404,780,399,783,396,790,404,797,403,803,395,806,390,809,386,817,384,822,371,825,358,830,355,801,352,798,351,782,352,775,348,773,352,763,356,748,354,740,350,724,366,721,371,718,369,703,374,690,394,686,402,676,403,659,409,657,410,654,412" style="outline:none;" target="_self"     />
<area id="j_west" alt="제주시 서부" href="../images/map/j_west.jpg" shape="poly" coords="724,206,724,219,718,228,711,232,703,238,700,238,696,240,695,244,687,245,676,246,677,264,673,278,667,289,659,297,651,300,646,300,633,302,629,316,618,322,614,327,603,334,602,338,597,347,592,350,587,357,583,369,585,396,597,399,601,396,611,404,644,422,651,411,659,403,669,399,679,393,690,387,693,379,698,369,709,365,712,363,722,367,726,360,732,352,737,347,752,350,768,344,775,342,784,343,795,344,824,347,833,341,833,335,839,331,851,329,859,322,870,316,874,311,876,305,855,287,846,277,840,262,844,251,843,236,840,222,838,214,838,203,821,208,819,201,817,193,817,190,810,190,799,185,780,195" style="outline:none;" target="_self"     />
</map>
	 
	 
	 
	 
	</div>
	<div class="category">
	<ul>
	 <li><img src="../images/icon/menu1.png" width=80px> <br>전체</li>
	 <li><img src="../images/icon/menu2.png" width=80px> <br>한식</li>
	 <li><img src="../images/icon/menu3.png" width=80px> <br>양식</li>
	 <li><img src="../images/icon/menu4.png" width=80px> <br>카페</li>
	 <li><img src="../images/icon/menu5.png" width=80px> <br>기타</li>
	</ul>	
	</div>

  
<div class="container">
  <div id="sjlist_jeju">
  <table class="table">
     <c:forEach var="vo" items="${list }">
<%-- <c:if test="vo.map== '제주시'"> --%>
		
        <div class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="fooddetailcontent.do?id=${vo.id }"><img class="card-img-top" src="${vo.img }" width=700 height=250 alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="fooddetailcontent.do?id=${vo.id }">${vo.name }</a>
              </h4>
           <div><input type="hidden" name="map" value="${vo.map}">${vo.map}</div>
            </div>
          </div>
        </div>
<%--        </c:if> --%>
       </c:forEach> 
        
       </table> 
        
        
      </div>
      
      <div id="sjlist_jeju2">
  <table class="table">
     <c:forEach var="vo" items="${list }">
<%-- <c:if test="vo.map== '제주시'"> --%>
		
        <div class="col-lg-4 col-sm-6">
          <div class="card h-100">
            <a href="fooddetailcontent.do?id=${vo.id }"><img class="card-img-top" src="${vo.img }" width=700 height=250 alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="fooddetailcontent.do?id=${vo.id }">${vo.name }</a>
              </h4>
           <div><input type="hidden" name="map" value="${vo.map}">${vo.map}</div>
            </div>
          </div>
        </div>
<%--        </c:if> --%>
       </c:forEach> 
        
       </table> 
        
        
      </div>
      <!-- /.row -->

      <!-- Pagination -->
      
    </div>
  <div id=page class="text-center">
    <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="foodcontent.do?page=${curpage>1?curpage-1:curpage }" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">이전</span>
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
          <a class="page-link" href="foodcontent.do?page=${curpage<totalpage?curpage+1:curpage }" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">다음</span>
          </a>
        </li>
      </ul>
    </div> 
    <!-- /.container -->
   </div>

   

	


</body>
</html>