
<%@ page contentType="text/html; charset=UTF-8"%>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font/category.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font/home.css"/>
	</head>
	<body>
	
		<%-- headerWrap 시작 --%>
		<div id="headerWrap">
			<div class="header header_fixed header_main1903"> 
				<div class="top_nav topnav1903">
					<div class="top_nav_wrap clearfix">
			            <div class="brand_menu brand_menu1903">
				            <ul class="clearfix">
				                <!-- 선호 브랜드 없음 -->
				                        <li>
					                        <span class="on">
					                        	<a href="/">HOME</a>
					                        </span>
				                        </li>
				                        <!-- 로그인 상태 -->
												<!-- 비로그인 상태 -->
				              <p class="brand_menu_guide_text">패션의 완성 THE HANDSOME</p>
							</ul>
			       		</div>
			    		<div class="gnb_sh_wrap" style="display:none;">
							<div class="gnb_sh_box">
								<input type="text" class="input" id="gnbsearchwords" title="검색어 입력" value="" onkeypress="if(event.keyCode==13) {EnterSearchHeader(); return false;}">
								<a href="" id="gnbsearch">검색</a>
							</div>
						</div>				
		                <div class="util_menu" style="display:block;">
							<ul class="clearfix">
								<sec:authorize access="isAnonymous()">
									<li>
										<a href="${pageContext.request.contextPath}/member/loginform">로그인</a>
									</li>
								</sec:authorize>
								<sec:authorize access="isAuthenticated()">
									<li>
										<a href="${pageContext.request.contextPath}/logout">로그아웃</a>
									</li>
								</sec:authorize>
								<li>
									<a href="${pageContext.request.contextPath}/member/orderlist">마이페이지</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				
		
				<div class="gnbwarp com clearfix">
			        <h1 class="logo logo1903">
			            <a href="/" onclick="GA_Event('공통', '로고', '상단');">thehandsome.com</a>
			        </h1>
			        
			        <!-- category start -->
			        <div class="gnb_nav gnb_nav1903 hscene1906 hscene1910">
			            <h2 class="invisible">주메뉴</h2>
			            <ul class="cate_m cate_banner gnbul1" id="cate_m_main">
				            <li>
				            	<a href="" class="gnb_brand dropbtn dropbtn" id="" onmouseover="dropBtnMouseover(this)" onmouseout="dropBtnMouseout(this)">cat1<span class="arr">arrow</span></a>
				            </li>  
				                      
				            <li>
				            	<a href="" class="" onmouseover="dropBtnMouseover(this)" onmouseout="dropBtnMouseout(this)">cat2<span class="arr">arrow</span></a>            
				            </li>
				            <li>
				            	<a href="" class="" onmouseover="dropBtnMouseover(this)" onmouseout="dropBtnMouseout(this)">cat3<span class="arr">arrow</span></a>            
				            </li>
				            <li>
				            	<a href="" class="" onmouseover="dropBtnMouseover(this)" onmouseout="dropBtnMouseout(this)">cat4<span class="arr">arrow</span></a>            
				            </li>
				            <li>
				            	<a href="" class="" onmouseover="dropBtnMouseover(this)" onmouseout="dropBtnMouseout(this)">cat5<span class="arr">arrow</span></a>            
				            </li>
				            <li>
				            	<a href="" class="" onmouseover="dropBtnMouseover(this)" onmouseout="dropBtnMouseout(this)">cat6<span class="arr">arrow</span></a>            
				            </li>
			            </ul>
			        
				        <ul class="cate_m cate_banner gnbul2" id="cate_m_main" style="float:right;">
				            <li><a href="" class="">기타1</a></li>
				            <li><a href="" class="">기타2</a></li>
				            <li><a href="" class="">기타3</a></li>
				            <li><a href="" class="">기타4</a></li>
				            <li><a href="" class="">기타5</a></li>
				            <li><a href="" class="">기타6</a></li>
				        </ul>
			        </div>
			        <!-- category end -->

				    <div class="util_menu util_menu1803">
				        <ul class="clearfix">
				            <li>
				            	<a href="">
				            		<span class="ico_sh">search</span>
				            	</a>
				            </li>
				            <li>
				            	<a href="">
				            		<span class="ico wishlist">wish list</span>
				            		<span class="count" style="display:inline;">(<span id="wishlistCount">0</span>)</span>
				            	</a>
				            </li>
				            <li>
				            	<a href="${pageContext.request.contextPath}/cart/cartlist">
				            		<span class="ico cart">장바구니</span>
				            		<span class="count">(<span id="cartCount">0</span>)</span>
				            	</a>
				            </li>
				        </ul>
				    </div>
				</div>  
				
				<%-- dropDown Menu start --%>
	           	<%-- <div class="" style="display: none;"> --%>
	           	<div class="drop_down_menu" onmouseover="dropBtnMouseover(this)" onmouseout="dropBtnMouseout(this)">
	               <ul class="list-group list-group-horizontal drop_down_inner">                        
		                <li class="drop_down_list"><strong>depth2</strong>
		                       <ul class="depth3_wrap">
				                 	<li class="depth3_element"><a href="" >depth3</a></li>
				                    <li class="depth3_element"><a href="">depth3</a></li>
				                    <li class="depth3_element"><a href="">depth3</a></li>
		                       </ul>
		                </li>
		                
		                <li class="drop_down_list"><strong>depth2</strong>
		                       <ul class="depth3_wrap">
				                 	<li class="depth3_element"><a href="" >depth3</a></li>
				                    <li class="depth3_element"><a href="">depth3</a></li>
				                    <li class="depth3_element"><a href="">depth3</a></li>
		                       </ul>
		                </li>
		                
		                <li class="drop_down_list"><strong>depth2</strong>
		                       <ul class="depth3_wrap">
				                 	<li class="depth3_element"><a href="" >depth3</a></li>
				                    <li class="depth3_element"><a href="">depth3</a></li>
				                    <li class="depth3_element"><a href="">depth3</a></li>
		                       </ul>
		                </li>
		                
		                <li class="drop_down_list"><strong>depth2</strong>
		                       <ul class="depth3_wrap">
				                 	<li class="depth3_element"><a href="">depth3</a></li>
				                    <li class="depth3_element"><a href="">depth3</a></li>
				                    <li class="depth3_element"><a href="">depth3</a></li>
		                       </ul>
		                </li>
	               </ul>
	           </div>
	          <%-- dropDown Menu end --%>
	          
	          <script>
		          function dropBtnMouseover(cat1){
		        	  console.log("dropBtnMouseover");
		        	  $(cat1).css("color","gray");
		        	  $('.drop_down_menu').css("display", "block");
		          }
		          
		          function dropBtnMouseout(cat1){
		        	  console.log("dropBtnMouseout");
		        	  $(cat1).css("color","black");
		        	  $('.drop_down_menu').css("display", "none");
		          }
	          </script>
	          
		    </div>
		</div>
		<%-- headerWrap 끝 --%>