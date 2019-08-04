<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
author: Boostraptheme
author URL: https://boostraptheme.com
License: Creative Commons Attribution 4.0 Unported
License URL: https://creativecommons.org/licenses/by/4.0/
-->

<!DOCTYPE html>
<html lang="UTF-8">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Core Stylesheets -->
<link rel="stylesheet" href="/resources/newTemplate/css/shop.css">
<!-- chartjs -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<title>보호할개</title>

<style>
.carousel-item {
	height: 83vh;
	min-height: 300px;
	background: no-repeat center center scroll;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

/*
.adopt {
	height: 10vh;
	min-height: 300px;
}

.funding {
	height: 20vh;
	min-height: 100px;
}

.middle{
	height: 80vh;
	min-height: 750px;

.info {
	height: 70vh;
	min-height: 100px;
}
.store
 {height: 20vh;
  min-height: 300px;}*/
 /* fade in 효과
.carousel-item{
    animation: fadein 2s;
    -moz-animation: fadein 2s; /* Firefox */
/*    -webkit-animation: fadein 2s; /* Safari and Chrome */
/*    -o-animation: fadein 2s; /* Opera */
/* } */
/* @keyframes fadein { */
/*     from { */
/*         opacity:0; */
/*     } */
/*     to { */
/*         opacity:1; */
/*     } */
/* } */
/* @-moz-keyframes fadein { /* Firefox */ */
/*     from { */
/*         opacity:0; */
/*     } */
/*     to { */
/*         opacity:1; */
/*     } */
/* } */
/* @-webkit-keyframes fadein { /* Safari and Chrome */ */
/*     from { */
/*         opacity:0; */
/*     } */
/*     to { */
/*         opacity:1; */
/*     } */
/* } */
/* @-o-keyframes fadein { /* Opera */ */
/*     from { */
/*         opacity:0; */
/*     } */
/*     to { */
/*         opacity: 1; */
/*     } */

</style>



<!-- ToolBar Start /////////////////////////////////////-->
<jsp:include page="/layout/toolbar.jsp"></jsp:include>
<jsp:include page="/common/modal/modalReport.jsp"></jsp:include>
<!-- ToolBar End /////////////////////////////////////-->
</head>
<body>

	<!-- CAROUSEL -->
	<!-- Navigation -->


	<header>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One - Set the background image for this slide in the line below -->
				<div class="carousel-item active"
					style="background-image: url('/resources/img/bg-img/los-angeles-commercial-dog-photographer-for-pet-brands-23.jpg')">
					<div class="carousel-caption d-none d-md-block">
						<h2 class="display-4"></h2>
						<p class="lead"></p>
					</div>
				</div>
				<!-- Slide Two - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('/resources/img/bg-img/image-asset.jpeg')">
					<div class="carousel-caption d-none d-md-block">
						<h2 class="display-4"></h2>
						<p class="lead"></p>
					</div>
				</div>
				<!-- Slide Three - Set the background image for this slide in the line below -->
				<div class="carousel-item"
					style="background-image: url('/resources/img/bg-img/bg.jpeg')">
					<div class="carousel-caption d-none d-md-block">
						<h2 class="display-4"></h2>
						<p class="lead"></p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</header>

<!-- ==============================================================
						typewrite 배너
================================================================= -->
			<div class="hero"> 
 				<hgroup class="wow fadeInUp"> 
					<h1 style="height: 56px; margin: 0px;"> 
						보호할개<span><a href="" class="typewrite" data-period="1000" 
 							data-type='[ " 분양실종", " 스토리펀딩", " 정보공유", " 스토어"]'><span 
 								class="wrap"></span></a></span> 
					</h1> 
					<h3></h3> 
 				</hgroup> 

 			</div> 
	<!--===================================================
				         분양 실종
======================================================-->

	

	<section id="comp-offer">
		<div class="adopt">
	      <div class="container-fluid">
	        <div class="row" id="rowAdopt">
	           <div class="col-md-2 col-sm-2 wow fadeInUp" style="padding-left:40px" data-wow-delay="0.2s">
	            <h2>분양 · 실종</h2>
	            <div class="heading-border-light"></div> 
	            <button class="btn btn-general btn-green" role="button" id="AD">분양게시판 바로가기</button>
	            <button class="btn btn-general btn-white" role="button" id="MS">실종캘린더 바로가기</button>
	          </div>
	        </div>
	      </div>
	    </div>
    </section>
    

	<!-- ================================================================= -->
    
    <!--====================================================
                        OFFER
======================================================-->
	 <section id="comp-offer">
	 <div class="funding">
      <div class="container-fluid">
        <div class="row" id="rowFunding">
          <div class="col-md-2 col-sm-2 wow fadeInUp" style="padding-left:40px" data-wow-delay="0.2s">
            <h2>스토리펀딩</h2>
            <div class="heading-border-light"></div> 
            <button class="btn btn-general btn-green" role="button" id="vote">투표게시판 바로가기</button>
            <button class="btn btn-general btn-white" role="button" id="fund">후원게시판 바로가기</button>
          </div>
          
          
        </div>
      </div>
      </div>
    </section>
	
	
<!--=====================================================
						중간배너
========================================================-->


<!--====================================================
                   정보공유
======================================================-->
	<section id="service-h">
		<div class="info">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6" style="padding-left:50px">
						<div class="service-himg">
							<iframe src="https://www.youtube.com/embed/3P1YGPZp6Ik?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
						</div>
					</div>
					<div class="col-md-6 wow fadeInUp" data-wow-delay="0.3s">
						<div class="service-h-desc">
							<h2>정보공유</h2>
							<div class="heading-border-light"></div>
							<p>비트캠프 118기 타이피스트 매력없는 박 은우 입니다.</p>
							<div class="service-h-tab">
								<nav class="nav nav-tabs" id="myTab" role="tablist">
									<a class="nav-item nav-link active" id="nav-home-tab"
										data-toggle="tab" href="#nav-home" role="tab"
										aria-controls="nav-home" aria-expanded="true">HOT개</a> <a
										class="nav-item nav-link" id="nav-profile-tab"
										data-toggle="tab" href="#nav-profile" role="tab"
										aria-controls="nav-profile">사용된 기술</a>

								</nav>
								<div class="tab-content" id="nav-tabContent">
									<div class="tab-pane fade show active" id="nav-home"
										role="tabpanel" aria-labelledby="nav-home-tab">
										<p>Nulla est ullamco ut irure incididunt nulla Lorem Lorem
											minim irure officia enim reprehenderit. Magna duis labore
											cillum sint adipisicing exercitation ipsum. Nostrud ut anim
											non exercitation velit laboris fugiat cupidatat. Commodo esse
											dolore fugiat sint velit ullamco magna consequat voluptate
											minim amet aliquip ipsum aute. exercitation ipsum. Nostrud ut
											anim non exercitation velit laboris fugiat cupidatat. Commodo
											esse dolore fugiat sint velit ullamco magna consequat
											voluptate minim amet aliquip ipsum aute.</p>
									</div>
									<div class="tab-pane fade" id="nav-profile" role="tabpanel"
										aria-labelledby="nav-profile-tab">
										<p>Nulla est ullamco ut irure incididunt nulla Lorem Lorem
											minim irure officia enim reprehenderit. Magna duis labore
											cillum sint adipisicing exercitation ipsum. Nostrud ut anim
											non exercitation velit laboris fugiat cupidatat. Commodo esse
											dolore fugiat sint velit ullamco magna consequat voluptate
											minim amet aliquip ipsum aute</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!--====================================================
                      CLIENT
======================================================-->
	<!--====================================================
                        OFFER 스토어
======================================================-->
	 <section id="comp-offer">
	 <div class="store">
      <div class="container-fluid">
        <div class="row">
      <div class="col-md-2 col-sm-2 wow fadeInUp" style="padding-left:40px" data-wow-delay="0.2s">
            <h2>스토어</h2>
            <div class="heading-border-light"></div> 
            <button class="btn btn-general btn-green" role="button">보호마켓 바로가기</button>
            <button class="btn btn-general btn-white" role="button">스토어 바로가기&emsp;  </button>
          </div>
          
         <div class="col-md-3 col-sm-6 wow fadeInUp" style="margin-right: 35px" data-wow-delay="0.4s">
            <div class="desc-comp-offer-cont" style="margin-right: 35px">
              <div class="thumbnail-blogs">
                  <div class="caption">
                    <i class="fa fa-chain"></i>
                  </div>
              </div>
              <h3>Business Management</h3>
              <p class="desc">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC. </p>
              <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Learn More</a>
            </div>
          </div>   
          
                 
          <div class="col-md-3 col-sm-6  wow fadeInUp"  style="margin-right: 35px;" data-wow-delay="0.6s">
            <div class="desc-comp-offer-cont"  style="margin-right: 35px">
              <div class="thumbnail-blogs">
                  <div class="caption">
                    <i class="fa fa-chain"></i>
                  </div>
              </div>              
              <h3>Leadership Development</h3>
              <p class="desc">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC. </p>
              <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Learn More</a>
            </div>
          </div>
          
          
          <div class="col-md-3 col-sm-6 desc-comp-offer wow fadeInUp"  style="margin-right: 35px" data-wow-delay="0.8s">
            <div class="desc-comp-offer-cont"  style="margin-right: 35px">
              <div class="thumbnail-blogs">
                  <div class="caption">
                    <i class="fa fa-chain"></i>
                  </div>
              </div>
              <h3>Social benefits and services</h3>
              <p class="desc">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC. </p>
              <a href="#"><i class="fa fa-arrow-circle-o-right"></i> Learn More</a>
            </div>
          </div>
          
        </div>
      </div>
      </div><br/><br/><br/><br/><br/>
    </section>
    

	<!--================ start footer Area  =================-->
	<!-- footer Start /////////////////////////////////////-->
	<jsp:include page="/layout/footer.jsp"></jsp:include>
	<!-- footer End /////////////////////////////////////-->
	<!--================ End footer Area  =================-->
	<script src="/resources/newTemplate/admin/js/jquery.min.js"></script>
	<script src="/resources/newTemplate/admin/js/popper/popper.min.js"></script>
	<script src="/resources/newTemplate/admin/js/tether.min.js"></script>
	<script src="/resources/newTemplate/admin/js/bootstrap.min.js"></script>
	<script src="/resources/newTemplate/admin/js/jquery.cookie.js"></script>
	<script src="/resources/newTemplate/admin/js/jquery.validate.min.js"></script>
	<script src="/resources/newTemplate/admin/js/chart.min.js"></script>
	<script src="/resources/newTemplate/admin/js/front.js"></script>
	<script type="text/javascript">
		// 	$(function (){
		// 			$(document).ready(function(){
		// 				if(${sessionScope.user != null}){
		// 					debugger;
		// 					var receiverId=$("#userId").val();
		// 					var checkCoupon = { "receiverId":receiverId };
		// 						alert("ajax통신 받는사람 : "+receiverId);
		// 						alert("ajax통신 체크쿠폰 : "+JSON.stringify(checkCoupon));
		// 					$.ajax({
		// 						type : "POST",
		// 						contentType : "application/json",
		// 						url : "/coupon/json/checkCoupon",
		// 						data : JSON.stringify(checkCoupon),
		// 						datatype : "json",
		// 						success : function(response){
		// 							if($.trim(response.result)==1){
		// 								alert("ajax통신 왔습니까?");
		// // 								window.open("/coupon/getCoupon","","width=500,height=400,left=600,resizable=no");
		// 							}else{
		// 								return;
		// 							}
		// 						},
		// 						error : function(request, status, error){
		// 							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		// 						}
		// 					})
		// 				}
		// 			});
		// 	});

		// 		$(document).ready(function(){
		// 			if(${ sessionScope.user != null}){
		// 				var url="/coupon/getCoupon"
		// 				window.open(url,"","width=500,height=400,left=600,resizable=no");
		// 			}
		// 		})


		$(document).ready(function(){
			
			// 분양실종
			$.ajax(
					{
						url : "/adopt/json/listAdopt",
						method : "POST" ,
						data : JSON.stringify({
// 							searchCondition : $("#searchCondition").val(),
// 							searchKeyword : $("#searchKeyword").val(),
// 							areaCondition : $('select[name=areaCondition]').val(),
// 							boardCode : $("#boardCode").val(),
							pazeSize : 1,
						}) ,
						dataType : "json" ,
						headers : {
									"Accept" : "application/json",
									"Content-Type" : "application/json"
								  },
						success : function(data , status) {
							console.log('성공'+JSON.stringify(data));
							var adopt = data.list;
							var display = "";
							var bCode = '';
							 $.each(adopt, function(index, adopt){
								 if(index<3){
								bCode = adopt.areaKr.substring( 0, adopt.areaKr.indexOf('시')+1 );
								
								 display +="<div class=\"col-md-3 col-sm-6  wow fadeInUp\"  style=\"margin-right: 35px;\" data-wow-delay=\"0.6s\">"+
											 "<div class=\"desc-comp-offer-cont\"  style=\"margin-right: 35px;padding-top:10px;\">";	
						
								 
								 display += 

			                        "<a href=\"#\" class=\"img-prod\"><img class=\"img-fluid\" style=\"width:100%;background:url(\'..\/resources\/file\/fileAdopt\/"+adopt.mainFile+
			                        		"\') no-repeat center center;background-size:cover;min-height:300px; max-height:300px; min-width:330px; max-width:330px;\" >"+
			    					"<input type=\"hidden\" value=\""+adopt.postNo+"\" /></a> ";	    																
					
									display += "<div class=\"text py-3 px-3\"><div id=\"checkPostTitle\"><font size=\"5\"><b>"+adopt.postTitle+"</b></font></div>"+
			    						       "<div class=\"row\" style=\"position:relative;height:35px;\">"+						        										
										       "<div class=\"col-xs-4 col-md-4\" align=\"right\" style=\"position:absolute; right:0px; bottom:0px; \" ><font size=\"4\"><b><strong>"+bCode+"</strong></b></font></div></div>";										   				

									display += "</div></div></div>";	
								 }
							 });
										
										$("#rowAdopt").append(display);
									 	$( ".img-prod" ).on("click" , function() {
											$(self.location).attr("href","/adopt/getAdopt?postNo="+$(this).children("input").val());
										});   
									
						},
						error: function(request, status, error){ 
							console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				        }
					
			});
		
			
			
			
			
			
			// 스토리펀딩
			$.ajax(
					{
						url : "/funding/json/listVoting/" ,
						method : "POST" ,
						data : JSON.stringify({
							currentPage : 1,
						}) ,
						dataType : "json" ,
						headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
						error: function(request, status, error){ 
							console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				        },
						success : function(JSONData,status) {
						
							var funding = JSONData.list;
							var display ="";
							
							 $.each(funding, function(index, funding){
								 if(index<3){
								 display +="<div class=\"col-md-3 col-sm-6  wow fadeInUp\"  style=\"margin-right: 35px;\" data-wow-delay=\"0.6s\">"+
								 "<div class=\"desc-comp-offer-cont\"  style=\"margin-right: 35px\">";	
						
								 display += "&emsp;조회 "+funding.voteViewCount+
			                        "<a href=\"#\" class=\"img-prod\"><img class=\"img-fluid\" src=\"/resources/file/fileSF/"+funding.mainFile+"\"  style=\"min-height:210px; max-height:210px; min-width:330px; max-width:330px;\" >"+
			    					"<input type=\"hidden\" value=\""+funding.postNo+"\" /></a> ";	    																
					
									display += "<div class=\"text py-3 px-3\"><div id=\"checkPostTitle\">	<font size=\"5\"><b>"+funding.postTitle+"</b></font></div>"+
			    						       "<div class=\"row\" style=\"position:relative;height:35px;\">"+						        										
										       "<div class=\"col-xs-8 col-md-8\" style=\"position:absolute; left:0px; bottom:0px;\" > <font size=\"3\">"+funding.nickname+"</font></div>"+
										       "<div class=\"col-xs-4 col-md-4\" align=\"right\" style=\"position:absolute; right:0px; bottom:0px; \" ><font size=\"4\"><b><strong style=\"color:#f04f23\">"+funding.voteRate+"%</strong></b></font></div></div>";										   				
									 
								     display += "<div class=\"progress\"> <div class=\"progress-bar \" role=\"progressbar\" style=\"width:"+funding.voteRate+"%; background-color:#e66447!important;\" ></div>"+
						   				"</div> <div align=\"right\"><font size=\"5\" >D- "+funding.voteRemainDate+"</font></div>";	    																
						
										display += "</div></div></div>";	
								 }
							 });
										
										$("#rowFunding").append(display);
									 	$( ".img-prod" ).on("click" , function() {
											$(self.location).attr("href","/funding/getVoting?postNo="+$(this).children("input").val());
										});   
									
				}
					
			});
			
			
		});
		
	
		
		////////분양실종 이벤트///////////
		$("#AD").on("click",function(){
			self.location ="/adopt/listAdopt";	
		});
		$("#MS").on("click",function(){
			self.location ="/adopt/listMissing";	
		});		
		
		////////스토리펀딩 이벤트///////////
		$("#vote").on("click",function(){
			self.location ="/funding/listVoting";	
		});
		$("#fund").on("click",function(){
			self.location ="/funding/listFunding";	
		});		

	</script>

</body>

</html>
