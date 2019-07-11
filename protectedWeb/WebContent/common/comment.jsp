<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>

<html lang="ko">
<head>

<!--  meta  -->
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  bootstrap CDN  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  bootstrap DropDown CSS -->
<link href="/css/animate.min.css" rel="stylesheet">
<link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!--  bootstrap DropDown JS -->
<script src="/javascript/bootstrap-dropdownhover.min.js"></script>

<!--  CSS -->
<style>
body {
	padding-top: 50px;
}
</style>

<script type="text/javascript">
	$(function() {
		$("#purchase").on(
				"click",
				function() {
					$(self.location).attr(
							"href",
							"/purchase/addPurchaseView?prod_no="+ $("#prodNo").text().trim());
				});
		$("#commentGo").on(
				"click",
				function() {
					$("form").attr("action",
							"/comment/addComment?postNo=").attr("method", "POST").submit();
				});

		//	���޴���
		// 	var currentPosition = parseInt($(".quick").css("top")); 
		//     $(window).scroll(function() { 
		//             var position = $(window).scrollTop(); // ���� ��ũ�ѹ��� ��ġ���� ��ȯ�մϴ�. 
		//             $(".quick").stop().animate({"top":position+currentPosition+"px"},500); 
		//     });
	});
</script>
</head>

<body>


	

	<form class="container">
		<!-- 		<div class="row"> -->
		<!-- 			<div class="col-xs-4 col-md-12" align="left"> -->
		<!-- 				<b><h3>������</h3></b> -->
		<!-- 			</div> -->
		<!-- 		</div> -->

		<hr />

		<div class="row">
			<div class="col-sm-12 col-md-12" align="center">
				��ȸ���� ����� �� �� �����ϴ� <a href="#" style="color: #0b43b3;">�α���</a> �� �̿���
				�ֽñ� �ٶ��ϴ�.
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-10 col-md-10" align="center">
				<input type="text" name="reply" class="form-control"
					style="width: 100%; height: 40px" placeholder="����Է�" />
			</div>
			<div class="col-sm-2 col-md-2" align="center">
				<button id="commentGo"
					style="background-color: #6190ed; color: white; width: 100%; height: 40px; border: 1px solid #1449b3">
					<h6>
						<b>��۵��</b>
					</h6>
				</button>
			</div>
		</div>

		<br>

		<div class="row">
			<div class="col-sm-1 col-md-1" align="center">
				<img src="https://via.placeholder.com/80" style="border-radius: 5px; min-height: 80px; min-width: 60px;"/>
			</div>
			<div class="col-sm-9 col-md-9" align="left">
				<h4>
					<b>z1������</b>&nbsp; <small>2019-07-10 10:23:27</small>&nbsp;
				</h4>
				<h5>������ �ȳ� �����̰� �ְ��� ! <br> ������ �ȳ� �����̰� �ְ��� ! </h5>
				<span class="glyphicon glyphicon-refresh"></span> &nbsp; <span
					class="glyphicon glyphicon-remove"></span> &nbsp; <span
					class="glyphicon glyphicon-alert"></span>
					<span class="glyphicon glyphicon-plus"></span>
			</div>
			<div class="col-sm-2 col-md-2" align="center">
				<span class="glyphicon glyphicon-chevron-up"></span> <br>
				<h4>
					<b>0</b>
				</h4>
				<span class="glyphicon glyphicon-chevron-down"></span>
			</div>
		</div>

		<br>

		<div class="row">
			<div class="col-sm-1 col-md-1" align="center">
				<img src="https://via.placeholder.com/80"
					style="border-radius: 5px; min-height: 80px; min-width: 60px;" />
			</div>
			<div class="col-sm-9 col-md-9" align="left">
				<h4>
					<b>����Ÿ�췻</b>&nbsp; <small>2019-07-10 10:23:27 ������</small>&nbsp;
				</h4>
				<h5>�ٸ��� ����� ����սô�</h5>
				<span class="glyphicon glyphicon-refresh"></span> &nbsp; <span
					class="glyphicon glyphicon-remove"></span> &nbsp; <span
					class="glyphicon glyphicon-alert"></span>
			</div>
			<div class="col-sm-2 col-md-2" align="center">
				<span class="glyphicon glyphicon-chevron-up"></span> <br>
				<h4>
					<b>0</b>
				</h4>
				<span class="glyphicon glyphicon-chevron-down"></span>
			</div>
		</div>

		<div class="row">
			&nbsp;
			<p>&nbsp;
			<p>
		</div>

		
		<br>

	</form>




</body>
</html>