<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.button {
    background-color: gray;
    opacity:0.5;
    border: none;
    color: white;
    width: 200px;
    height: 50px;
    margin-top: 2px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
   
    cursor: pointer;
}
.button1 {
    background-color: purple;
    border: none;
    color: white;
    margin-top: 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    width: 200px;
    height: 50px;
    opacity: 0.7;
    cursor: pointer;
}
.checkhome{
	background-color: gray;
    opacity:0.5;
	width: 200px;
	height: 50px;
	margin-top: 2px;
	font-size: 16px;
	 color: white;
}
.ui-progressbar {
    position: relative;
  }
  .progress-label {
    position: absolute;
    left: 1%;
    top: 4px;
    font-weight: bold;
    text-shadow: 1px 1px 0 #fff;
  }
</style>
<title>Insert title here</title>
<!-- ���࿡�� �ʿ��� link -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script type="text/javascript">
$(function(){
	$('#datepicker-checkIn').datepicker();
	$('#datepicker2-checkOut').datepicker();
			
}); 
$( function() {
    var progressbar = $( "#progressbar" ),
      progressLabel = $( ".progress-label" );
 
    progressbar.progressbar({
      value: false,
      change: function() {
        progressLabel.text( progressbar.progressbar( "value" ) + "%" );
      },
      complete: function() {
        progressLabel.text( "����Ϸ�!" );
      }
    });
 
    function progress() {
      var val = progressbar.progressbar( "value" ) || 0;
 
      progressbar.progressbar( "value", val + 2 );
 
      if ( val < 99 ) {
        setTimeout( progress, 80 );
      }
    }
 
    setTimeout( progress, 2000 );
  } );
  
  $( function() {
	    $( "#dialog" ).dialog({
	      autoOpen: false,
	      show: {
	        effect: "blind",
	        duration: 100
	      },
	      hide: {
	        effect: "explode",
	        duration: 100
	      }
	    });
	 
	    $( "#opener" ).on( "click", function() {
	      $( "#dialog" ).dialog( "open" );
	    });
	  } );

</script>
</head>
<body>
<!-- <center> -->
	<div class="container" style="width:100%; height:223px">
	
		<div class="row-sm-4">	
		<center>
			<h1>�����ϱ�</h1>
		
					
			<div>
			<input type="button" class="button" id="datepicker-checkIn" value="üũ��">
				<select class="checkhome" >
				<option>����</option>
				<option>1�ν�</option>
				<option>2�ν�</option>
				<option>3�ν�</option>
				<option>4�ν�</option>
				<option>��ü</option>				
			</select>			
			</div>
			
			<div>
			<input type="button" class="button" id="datepicker2-checkOut" value="üũ�ƿ�">
		
			<select class="checkhome" >
				<option>�ο�</option>
				<option>����1��</option>
				<option>����2��</option>
				<option>����</option>
				<option>��ü</option>				
			</select>			
			</div>			
			</center>
			
			<div>
			<center>
			 <div id="dialog" title="���ҿ���">
  			<div id="progressbar"><div class="progress-label">������...</div></div>
  			<div style="margin: 15px">
  			<center>
  			<a href="my_mp.jsp"><button class="Ȯ��" >Ȯ��</button></a>
 				 <a href="hotelDetailContent.jsp"><button class="���">���</button></a>
				</center>	
</div>
			</div>
			<button class="button1" id="opener">�����ϱ�</button>
			</center>
			
			</div>
			
		</div>		
		</div>
	
	
	<!-- </center> -->
</body>

</html>