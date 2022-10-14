<%@page import="com.smhrd.domain.InfoDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>main</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/font.css">
<link rel="stylesheet" href="resources/package/dist/sweetalert2.min.css">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="resources/package/dist/sweetalert2.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<style type="text/css">
.dropdown_2 {
	position: relative;
	display: inline-block;
}

.dropdown_con {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 80px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
	font-size: smaller;
}

.dropdown_con a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown_con a:hover {
	background-color: white;
}

.dropdown_2:hover .dropdown_con {
	display: block;
}

.ft {
	position: absolute;
	left: 0;
	bottom: 5px;
	width: 100%;
}


</style>

</head>

<body id="back">

	<div class="container eJEMVp " style="width: 606px;">
		<header class="header">
			<div class="header-logo">

				<div>
					<span></span> <span></span> <span></span> <span></span>
				</div>
			</div>
			<div class="header-title">공감</div>

			<div class="header-buttons">

				<div class="dropdown_2">
					<button class="avatar dropbtn">
						<img src="resources/img/baseline_menu_black_24dp.png" />
					</button>
					<div class="dropdown_con">
						<!-- 로그인했을때 -->
						<%
						if (session.getAttribute("user_info") != null) {
						InfoDTO user_info = (InfoDTO) session.getAttribute("user_info");
					%>
						<a><%=user_info.getNick()%>님</a> <a href="mypage.do">마이페이지</a> <a
							href="logout.do">로그아웃</a>
						<%
						} else {
					%>
						<a href="goJoin.do">회원가입</a><br> <a href="log.do">로그인</a>
						<%
						}
					%>
					</div>
				</div>



				<span></span>
			</div>
		</header>

		<div class="container">
			<div class="row justify-content-center">

				<!-- partial:index.partial.html -->
				<div class='music' style='width: 300px'>
					<div class='bar'></div>
					<div class='bar'></div>
					<div class='bar'></div>
					<div class='bar'></div>
					<div class='bar'></div>
					<div class='bar'></div>
					<div class='bar'></div>
					<div class='bar'></div>
					<div class='bar'></div>
					<div class='bar'></div>
				</div>
			</div>
			<!-- partial -->
		</div>
		<section class="search">
			<div class="search-inner">

				<input type="text" id="text" class="search-input" placeholder="오늘어때"
					name="input" onkeydown="moveFocus('search2')" />

				<button onfocus="enterkey()" class="search-button" id="search2">
					<img src="resources/img/baseline_search_black_24dp.png">
				</button>
			</div>
		</section>


		<div class="d-grid">
			<div class="row">
				<div class="text-center"></div>
			</div>
		</div>


		<div id='wrapper'>
			<div>
				<div class="container">
					<div class="row">


						<div class="input-form col-lg-12 mx-auto" id="list"
							style="padding-top: 20px;">

							<div class="list_wrap_track_rank" id="tbody"></div>

							<div class="d-grid">
								<div class="row">
									<div class="text-center">
										<button id="hide" type="button" style="padding: 0;"
											class="btn btn-default w-25 p-3" onclick="hide()">접기</button>
									</div>
								</div>
							</div>


						</div>

					</div>
				</div>

			</div>
		</div>

		<footer class="menu ft">

			<div class="menu-inner">
				<a href="go" class="menu-item active" data-bs-toggle="tooltip"
					data-bs-placement="top" title="홈"> <i class="ai-home"></i>
				</a> <a href="golocation.do" class="menu-item" data-bs-toggle="tooltip"
					data-bs-placement="top" title="내 주변 노래방 !"> <img
					src="resources/img/free-icon-location-535239.png" />
				</a> <a href="chart.do" class="menu-item" data-bs-toggle="tooltip"
					data-bs-placement="top" title="9월의 인기차트!"> <img
					src="resources/img/free-icon-trending-8344976.png" />
				</a>

			</div>

		</footer>




	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src='https://unpkg.com/akar-icons-fonts'></script>
	<!-- <script src="./script.js"></script> -->
- 	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script> 
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<!-- <script src="resources/js/bootstrap.bundle.min.js"></script>
	<script src="resources/js/bootstrap.bundle.js"></script> -->
	<script src="//code.jquery.com/jquery-1.12.4.min.js"
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(
				function() {
					var body = document.getElementById('back');
					var body_width = getComputedStyle(body).width;

					body_width = parseInt(body_width.substring(0,
							body_width.length - 2))
					console.log(body_width);
					if (body_width > 570) {
						console.log('크기변경')
						$('.eJEMVp').width(576);
					}
					$('#list').css({ display: 'none' });
					  Swal.fire({
			                // 설명서 넣기
			                //   imageUrl: 'https://placeholder.pics/slvg/300x1500',
			                imageHeight: 1500,
			                imageAlt: 'A tall image'
			            });
				}
				
		);
		
		

      /*   function List() {
            $('#song').on('click', function () {
            	$('#list').fadeIn();  
            });

        }; */
        
        
        
        
		function moveFocus(next) {
			if(event.keyCode == 13){
				let btn_submit = document.getElementById(next).focus();
			}
		}
		
		function enterkey() {
			songList();
			 $('#list').fadeIn();
			document.getElementById('search2').blur();
		}
		
         function songList(){
        	 
        	 $.ajax({
        		 url : 'songList',
        		 type:'get',
        		 dataType:'json',
        		 success:function(res){
        			
        		 console.log(res[0].song_num) 
        		 console.log(res[0].img)
        		 
   			 $('#tbody').html(''); 

        			 for(var i = 0; i < 4; i++){
        				
        				 tr = `
        						<ul class="scroll_list" style="padding-left: 0px;">
								<li class="list_item">
									<ul style="padding-left: 0px;">
										<li class="list_track_row">
											<div class="thumb text-center" >
												<span id="song_number">`+res[i].song_num+`</span>
											</div>
											
											<div class="thumb">
                                            <div class="inner">
                                                 <img src='`+res[i].img+`'>
                                            </div>
                                        </div>
											
									        <div class="song_area col-6">
                                            <div class="song">
                                                <a href="#" class="title fs-5" style="margin-top: 0;">
                                                    `+res[i].song_title+`
                                                
                                                </a>
                                            </div>
                                            <div class="artist">
                                                <span >
                                                   `+res[i].singer+`
                                                </span>
                                            </div>
                                        </div>
                                        <div class="song_area col-9">
                                        <div class="row gx-1">
                                            
                                                <div class="col">
                                                
                                                    <button class="btn like" id = "idlike" onclick="like('`+ res[i].song_num +`')" 
                                                        data-bs-toggle="tooltip" data-bs-placement="bottom" 
                                                        title="좋아요!"><span style="display:none;">좋아요</span><img
                                                            src="resources/img/baseline_sentiment_satisfied_alt_black_24dp.png" id="img1"></button>
                                                            
                                                </div>
                                                <div class="col">
                                                    <button class="btn bad"  onclick="hate('`+ res[i].song_num +`')"
                                                        data-bs-toggle="tooltip" data-bs-placement="bottom" 
                                                        title="싫어요!"><span style="display:none;">싫어요</span><img
                                                            src="resources/img/baseline_sentiment_very_dissatisfied_black_24dp.png"></button>
                                                            
                                                </div>
                                            <div class="col" id="lyrs">
                                                <button  class="btn ly" id="lyrics" data-bs-toggle="tooltip" onclick="lyrics('`+res[i].song_num+`')"
                                                    data-bs-placement="bottom" title="가사보기!"> <img
                                                        src="resources/img/baseline_lyrics_black_24dp.png"></button>
                                                       
                                            </div>
                                            <div class="col popupModalVideo ratio ratio-16x9">
                                            <a class="btn video-btn play" data-toggle="modal" onclick="video('`+res[i].preview+`')"
                                                data-bs-toggle="tooltip" data-video="`+res[i].preview+`"
                                                data-bs-placement="bottom" title="미리듣기!"><img
                                                    src="resources/img/baseline_play_circle_black_24dp.png"></a>
                                        </div>
                                            <div class="video_modal_popup" >
                                                <div class="video_modal_popup-closer"></div>
                                              </div>
                                          
                                            
                                            <div class="col">
                                                <a class="btn" id="link" data-bs-toggle="tooltip" data-toggle="modal" 
                                                	 href="`+res[i].link+`"
                                                    data-bs-placement="bottom" title="연습하기!"> <img
                                                        src="resources/img/baseline_mic_black_24dp.png"></a>
                                            </div>
                                           
                                        </div>
                                    </div>
                                        
										</li>
									</ul>
								</li>
							</ul>
							
        				 `
        			 
        			 $('#tbody').append(tr);
        			
        		
        			 }
        		
        		 }
        	 
        	 })
         };
        function hide() {
            
                $('#list').fadeOut();
           
        }

		
		function video(aa){
			
			 $(".popupModalVideo a").click(function () {
				 alert('실패!')
		         $(".video_modal_popup").addClass("reveal"),
		             $(".video_modal_popup .video-wrapper").remove(),
		             $(".video_modal_popup").append("<div class='video-wrapper'><iframe src='https://youtube.com/embed/" + aa + "?rel=0&playsinline=1&autoplay=1' allow='autoplay; encrypted-media' allowfullscreen></iframe></div>")
		     }),
		         $(".video_modal_popup-closer").click(function () {
		             $(".video_modal_popup .video-wrapper").remove(),
		                 $(".video_modal_popup").removeClass("reveal")
		         });
		
	}
		

		// 좋아요2
		 
		 function like(songnumber) {
				
			 for (var i=1; i<4; i++){
					
			  		if ($('ul.scroll_list:nth-child('+i+') span#song_number').text() == songnumber){ 
						console.log(songnumber)
						console.log(i)
					 	break; 
						
					} 
					
				}
				if ($('ul.scroll_list:nth-child('+i+')  button.like > span').text() == '좋아요')  {
						 $('ul.scroll_list:nth-child('+i+')  button.like > span').text('dislike')
																				// 싫어요를 비활성화 시킴
						$('ul.scroll_list:nth-child('+i+')  button.bad').prop("disabled", true); 
																				// 좋아요 추가
						$.ajax({
							url : 'songinsert',
							type : 'get', // get post
							data : {
								songnumber : songnumber
							},
							dataType : 'text',
							success : function(res) {
								
								Swal.fire({
									icon : 'success',
									title : '저장되었습니다!',
									text : '마이페이지에서 확인가능해용',
									showConfirmButton : false,
									timer : 1500
								});
							},
							error : function(e) {
								Swal.fire({
									icon : 'error',
									title : '저장 실패!',
									text : '로그인이 필요합니다!',
									showConfirmButton : false,
									timer : 1500
								});
								console.log(songnumber);
							}
						});
					} 
																			  // 아이디 값이 like가 아닐 때 즉 dislike일 때 실행
																			  // dislike를 like로 바꿔주고 삭제
				else {
					$('ul.scroll_list:nth-child('+i+')  button.like > span').text('좋아요')
					$('ul.scroll_list:nth-child('+i+')  button.bad').prop("disabled", false); 						
					$.ajax({
							url : 'songdelete',
							type : 'get', // get post
							data : {
								songnumber : songnumber
							},
							dataType : 'text',
							success : function(res) {
								alert("좋아요성공22222");
							},
							error : function(e) {
								Swal.fire({
									icon : 'error',
									title : '저장 실패!',
									text : '로그인이 필요합니다!',
									showConfirmButton : false,
									timer : 1500
								});
							}
						});

					}
				}
		
		// 싫어요
			 function hate(songnumber) {
				
			 for (var i=1; i<4; i++){
					
			  		if ($('ul.scroll_list:nth-child('+i+') span#song_number').text() == songnumber){ 
						console.log(songnumber)
						console.log(i)
					 	break; 
						/* document.getElementById('song_number').innerHTML */		
					} 
					
				}
				
			 
			 
			 																	// 아이디 값이 like일 때 dislike로 변경
				if ($('ul.scroll_list:nth-child('+i+')  button.bad > span').text() == '싫어요')  {
					
					
						 $('ul.scroll_list:nth-child('+i+')  button.bad > span').text('시러요취소')
																				// 싫어요를 비활성화 시킴
						$('ul.scroll_list:nth-child('+i+')  button.like').prop("disabled", true); 
																				
						
																				// 좋아요 추가
						$.ajax({
							url : 'hateinsert',
							type : 'get', // get post
							data : {
								songnumber : songnumber
							},
							dataType : 'text',
							success : function(res) {
								Swal.fire({
									icon : 'success',
									title : '저장되었습니다!',
									text : '마이페이지에서 확인가능해용',
									showConfirmButton : false,
									timer : 1500
								});
							},
							error : function(e) {
								Swal.fire({
									icon : 'error',
									title : '저장 실패!',
									text : '로그인이 필요합니다!',
									showConfirmButton : false,
									timer : 1500
								});
								console.log(songnumber);
							}
						});
					} 
																			  // 아이디 값이 like가 아닐 때 즉 dislike일 때 실행
																			  // dislike를 like로 바꿔주고 삭제
				else {
					$('ul.scroll_list:nth-child('+i+')  button.bad>span').text('싫어요')
					$('ul.scroll_list:nth-child('+i+')  button.like').prop("disabled", false); 						
					$.ajax({
							url : 'hatedelete',
							type : 'get', // get post
							data : {
								songnumber : songnumber
							},
							dataType : 'text',
							success : function(res) {
								alert("성공22222");
							},
							error : function(e) {
								Swal.fire({
									icon : 'error',
									title : '저장 실패!',
									text : '로그인이 필요합니다!',
									showConfirmButton : false,
									timer : 1500
								});
							}
						});

					}
				}

		
			/* (document.getElementById('bad')){
			$('.bad').click(function() {
				Swal.fire({

					icon : 'success',
					title : '저장되었습니다!',
					text : '마이페이지에서 확인가능해용',
					showConfirmButton : false,
					timer : 1500
				});
				$('#img2').css({
					'filter' : 'opacity(0.5) drop-shadow(0 0 0 blue)'
				})
			});
		}; */
		
		
		
		
		function test(){
			console.log('성공');
			 songList();  
         	
         	$('#list').fadeIn();  
		};
		
	

		
		
		
		
		
		  //가사
		 function lyrics(songnumber){
				
			 for (var i=1; i<4; i++){
					
			  		if ($('ul.scroll_list:nth-child('+i+') span#song_number').text() == songnumber){
						console.log(songnumber)
						console.log(i)
					 	break;
					}
					
				}
			
				console.log("번호")
				console.log(i)
				$.ajax({
							url : 'lyrics',
							type : 'get',
							data : {
								num : songnumber
							},
							dataType : 'text',
							success : function(res){
								console.log(res) // 가사
								console.log(songnumber+ "songnumber") //
								alert('이쿠');
								var text = /@/g;
								console.log(text);
								var lyicss=res.replace(text,'\n')
								console.log(lyicss)
								var j = 0;
								confirm(res);
								Swal.fire(lyicss)				
								
									if ($('ul.scroll_list:nth-child('+i+')  button.ly > span').text() == '가사') {
									
						
											/*  $('div#lyrs').append("<ul class='scroll_list' style='padding-left: 0px;'><div ='col'>" + res + "</div></ul>") 
											  $('div#lyrs').append("<ul class='scroll_list' style='padding-left: 0px;'><div ='col'>" + res + "</div></ul>") 
										 	$('#tbody').append("<div></>")
										$('tr').last().append(
										"<td>" + res + "</td>")  */
									
									
									
									
											$('ul.scroll_list:nth-child('+i+')  button.ly > span').text('가사닫기')
											j = 1;
								}
								else if (j == 0
									&& $('ul.scroll_list:nth-child('+i+')  button.ly > span').text() == '가사닫기') {
									$('ul.scroll_list:nth-child('+i+')  button.ly > span').text('가사')
									$('tbody > tr:nth-child(' + (i+1) + ')').remove(); // 여기서 활성화된 가사를 제거해야함
								}
								
								
								
								
								
							},
								error : function(e){
									alert('error');
									}
								
							
								});
				
				
				
				
				
				
				
				
									
			} 
		
	</script>
	<script>
		var tooltipTriggerList = [].slice.call(document
				.querySelectorAll('[data-bs-toggle="tooltip"]'));
		var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {
			return new bootstrap.Tooltip(tooltipTriggerEl)
		});
	</script>


</body>

</html>
