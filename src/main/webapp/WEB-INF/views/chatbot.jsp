<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/bubbles.css" />">
	<link rel="stylesheet" href="<c:url value="/resources/css/text_box.css" />">
	<script src="<c:url value="/resources/js/jquery-3.2.1.js" />"></script>
	<title>Insert title here</title>
	<link rel="shortcut icon" href="/favicon.ico" />
	
	<!-- <script type="text/javascript">
		$(document).ready(function(){
			// run ajax_process with ""
			ajax_process("");
			
			// run conversation when enter
			$('#txt_isay').keypress(function(e){
				if (e.which === 13){
					conversation();
				}
			});
			
			// run conversation when click button setted id="btn_isay"
			$('#btn_isay').click(function(){
				conversation();
			});
		});
		
		function conversation() {
			// set variable _isay as text in value in id="txt_isay"
			var _isay = $.trim($('#txt_isay').val());
		
			// set isay to collocate
			var isay = '<h4 class="triangle-border right"><b>' + _isay + '</b></h4>';
			$('#said').append(isay);
			
			// to vacate input
			$('#txt_isay').val('');
			
			// run ajax_process with _isay
			ajax_process(_isay);
		}
		
		// to communicate with watson
		function ajax_process(_isay){
			$.ajax({
				type : 'POST',
				url  : 'watsonsay',
				data : 'isay=' + _isay,
				async: false,
				success : function(data) {
					console.log(data);
					var watsonsay =
						'<h4 class="triangle-border left"><b>' + data.output.text;
						
					if (_isay ==='') {
						watsonsay += '';
					}	
					
					watsonsay += '</b></h4>';
					$('#said').append(watsonsay);	
					$('html, body').animate({scrollTop: $(document).height()}, 500);
				}
			});
		}
	</script> -->

	<script>
		var $cont = $('.container2');
/* 		$cont[0].scrollTop = $cont[0].scrollHeight;
 */		
		// append text value to '.container2' when keyup with enter
		$('.inp').keyup(function(e) {
		    if (e.keyCode == 13) {
		    	
		        $cont.append('<h4>' + $(this).val() + '</h4>');
		        $cont[0].scrollTop = $cont[0].scrollHeight;
		        $(this).val('');
	
		    }
		})
		.focus();

		$(document).ready(function(){
			// run ajax_process with ""
			ajax_process("");
			
			// run conversation when enter
			$('.inp').keypress(function(e){
				if (e.which === 13){
					conversation();
				}
			});
			
			// run conversation when click button setted id="btn_isay"
			/* $('#btn_isay').click(function(){
				conversation();
			}); */
		});

		function conversation() {
			// set variable _isay as text in value in id="txt_isay"
			var _isay = $.trim($('.inp').val());
			var $cont = $('.container2');

			// set isay to collocate
			var isay = '<h4>' + _isay + '</h4>';
			$cont.append(isay);
			
			// scroll down
			$cont[0].scrollTop = $cont[0].scrollHeight;

			// to vacate input
			$('.inp').val('');
			
			// run ajax_process with _isay
			ajax_process(_isay);
		}
		
		
		// to communicate with watson
		function ajax_process(_isay){
			var $cont = $('.container2');

			$.ajax({
				type : 'POST',
				url  : 'watsonsay',
				data : 'isay=' + encodeURIComponent(_isay),
				async: false,
				success : function(data) {
					console.log(data);
					var watsonsay =
						'<h4>' + data.output.text;
						
					if (_isay ==='') {
						watsonsay += '';
					}	
					
					watsonsay += '</h4>';
					$cont.append(watsonsay);	
					$cont[0].scrollTop = $cont[0].scrollHeight;
				}
			});
		}
	</script>
</head>
<body>
<div>
	<!-- <div class="row">
		<div class="col-md-12 col-xs-12 col-sm-12" style="overflow:scroll; height:550px;" >
		<div class="col-md-12 col-xs-12 col-sm-12" >
			<div id="said"></div>
		</div>
		<div class="col-md-12 col-xs-12 col-sm-12">
			<input type="text" id="txt_isay" class="triangle-border center" style="font-size:20px; font-weight:bold"/>
			<button type="button" id="btn_isay" autofocus="autofocus" class="btn btn-default">전송</button>	
		</div>
	</div> -->
	
	<div>
		<div class="container2">
		    <p>왓슨 놋봇이당!!</p>
		</div>
		<input type="text" class="inp">
	</div>
	
</div>
	<!-- Origin -->
	<!-- <script>
		var $cont = $('.container2');
		$cont[0].scrollTop = $cont[0].scrollHeight;
		
		// append text value to '.container2' when keyup with enter
		$('.inp').keyup(function(e) {
		    if (e.keyCode == 13) {
		    	
		        $cont.append('<p>' + $(this).val() + '</p>');
		        $cont[0].scrollTop = $cont[0].scrollHeight;
		        $(this).val('');
	
		    }
		})
		.focus();
	</script> -->
</body>
</html>