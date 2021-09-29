<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="/WEB-INF/views/common/header.jsp"%>

<!-- bodyWrap -->
<div id="bodyWrap">
	<h3 class="cnts_title">
		<span>배송&amp;결제정보 입력</span>
	</h3>

	<!--sub_container-->
		<div class="sub_container">
			<!--orderwrap-->
		<div class="orderwrap del_pay">
			<!--orderwrap left-->
		<div class="float_left">
			<!--table wrap1-->
		<div id="checkoutCartView" class="tblwrap">
			<table class="tbl_ltype ">
		
				<caption>배송&amp;결제정보 입력</caption>
				<colgroup>
					<col>
					<col style="width: 66px">
					<col style="width: 158px">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">상품정보</th>
						<th scope="col">수량</th>
						<th scope="col">판매가/쿠폰 적용가</th>
					</tr>
				</thead>
				<tbody>
					<tr class="al_middle">
						<td class="frt">
							<!-- pt_list_all -->
							<div class="pt_list_all">
								<a href="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EB%A9%9C%EB%9E%80%EC%A7%80-%ED%81%AC%EB%A1%AD-%EC%9E%AC%ED%82%B7/p/MN2B9WJC649W_BG_82">
								<img src="http://newmedia.thehandsome.com/MN/2B/FW/MN2B9WJC649W_BG_S01.jpg" alt="">
								</a>
								<div class="tlt_wrap">
									<a href="/ko/HANDSOME/WOMEN/OUTER/JACKET/%EB%A9%9C%EB%9E%80%EC%A7%80-%ED%81%AC%EB%A1%AD-%EC%9E%AC%ED%82%B7/p/MN2B9WJC649W_BG_82"
									   class="basket_tlt"> 
									<span class="tlt">MINE</span> 
									<span class="sb_tlt">멜란지 크롭 재킷</span>
									</a>
									<p class="color_op">
										color : BEIGE<span class="and_line">/</span> size : 82
									</p>
								</div>
							</div> 
						</td>
						<td>1</td>
						<td>
							<!-- price_wrap -->
							<div class="price_wrap ">
								<span> ₩795,000</span>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>


		<!--주문자 정보 입력-->
		<div class="title_wrap clearfix mt40">
			<h4 class="float_left">주문자 정보</h4>
		</div>
		<div class="tblwrap">
			<table class="tbl_wtype1">
				<caption>주문자 정보</caption>
				<colgroup>
					<col style="width: 140px">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" class="th_space">주문자</th>
						<td>사용자</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">휴대폰</th>
						<td>010-1234-5678</td>
					</tr>
					<tr>
						<th scope="row" class="th_space">E-mail</th>
						<td>abc12345@naver.com</td>
					</tr>
				</tbody>
			</table>
		</div>


		<!--배송지 정보 -->
		<div class="title_wrap clearfix mt40" id="deliveryAddressDisplay">
			<h4 class="float_left">배송지 정보</h4>
			<p class="reqd_txt none">
				<strong class="reqd">*</strong> 표시는 필수항목입니다.
			</p>
			<div class="btn_wrap">
				<a href="#;" class="btn wt_ss" onclick="f_customerAddress();">주문고객과 동일</a> 
				<a href="#;" class="btn wt_ss" onclick="viewPopup('#popwrap');">배송지 선택</a>
			    <a href="#;" class="btn wt_ss mr0" onclick="resetAddress();">새로작성하기</a>
			</div>
		</div>

		<div class="tblwrap" id="deliveryInfoTitle">
			<table class="tbl_wtype1">
				<caption>배송지 정보</caption>
				<colgroup>
					<col style="width: 140px">
					<col>	
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" class="tooltip191022"><strong class="reqd">*</strong>
							<label for="adress">배송지 주소</label> <span class="ico_question">icon</span>
							<div class="delch_box190816">
								<span class="arr">위치아이콘</span>
								<ul class="bul_sty01_li">
									<li>기본배송지 변경은 <strong>마이페이지&gt; [배송지관리]</strong>에서
										가능합니다.
									</li>
									<li>기본배송지 설정 시 기본배송지가 최우선으로 노출 됩니다.</li>
								</ul>
							</div></th>
						<td>
							<!-- 주소지 입력 --> 
							<input value="" title="우편번호" id="adress" name="postcode" class="post" type="text" readonly="">
							<input value="우편번호 조회" id="addrSearchBtn" class="btn add_s" type="button"> 
							<br>
							<div id="basis_bk_flag">
							<input value="" title="주소1" name="line1" id="line1" class="post_wall top" type="text" readonly="">
							</div> 
							<input value="" title="주소2" name="line2" id="line2" class="post_wall" type="text" maxlength="110"
							placeholder="나머지 주소를 입력해 주세요."> 

						</td>
					</tr>
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="rcpt_name">수령인</label></th>
						<td><input value="" title="수령인" id="rcpt_name"
							name="lastName" maxlength="13" type="text"
							style="width: 118px;"></td>
					</tr>
					<!-- 휴대폰 번호 -->
					<tr>
						<th scope="row"><strong class="reqd">*</strong><label
							for="hp">휴대폰 번호</label></th>
						<td>
							<!-- hp --> <select id="hp" name="hp_num1" title="휴대폰 번호 앞자리"
							class="hp_num1">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
						</select>
							<div class="form_hyphen">-</div> <input title="휴대폰 번호 가운데자리"
							name="hp_num2" id="hp_num2" class="hp_num2" type="text"
							maxlength="4" numberonly="true">
							<div class="form_hyphen">-</div> <input title="휴대폰 번호 뒷자리"
							name="hp_num3" id="hp_num3" class="hp_num2" type="text"
							maxlength="4" numberonly="true"> <!-- //hp -->
						</td>
					</tr>
					<tr>
						<th scope="row" class="th_space"><label for="ph">연락처</label></th>
						<td>
							<!-- 연락처 입력 --> 
							<select name="ph_num1" id="ph" title="연락처 앞자리" class="hp_num1">
								<option value="">선택</option>
								<option value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
								<option value="041">041</option>
								<option value="042">042</option>
								<option value="043">043</option>
								<option value="044">044</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="053">053</option>
								<option value="054">054</option>
								<option value="055">055</option>
								<option value="061">061</option>
								<option value="062">062</option>
								<option value="063">063</option>
								<option value="064">064</option>
						</select>
							<div class="form_hyphen">-</div> <input title="연락처 가운데자리"
							name="ph_num2" id="ph_num2" class="hp_num2" type="text"
							maxlength="4" numberonly="true">
							<div class="form_hyphen">-</div> <input title="연락처 뒷자리"
							name="ph_num3" id="ph_num3" class="hp_num2" type="text"
							maxlength="4" numberonly="true"> 
						</td>
					</tr>
					<!-- 배송 요청 사항 -->
					<tr>
						<th scope="row" class="th_space"><label for="orderr">배송요청사항</label></th>
						<td>
							<div class="input_sumtxt">
								<div class="input_sumtxt_box">
									<!-- input -->
									<input onkeyup="chkword();" id="orderr"
										name="deliveryRequestContents" type="text" value=""
										title="배송요청사항" maxlength="20">
								</div>
								<div>
									<span id="text_length">0</span> <span>/20자</span>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row" class="th_space"><label for="mail">수령인 E-mail</label>
						</th>
						<td>
							<!-- email --> 
							<input type="text" id="mail" name="mail" title="이메일 아이디" class="em_form"> <span class="andmail">@</span>
							<input type="text" value="" name="emailDely" id="emailDely" title="직접입력" class="em_form"> 
							<select title="이메일 계정" id="emailDelySel" class="em_select">
								<option value="">직접입력</option>
								<option value="naver.com">naver.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="daum.net">daum.net</option>
								<option value="nate.com">nate.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="yahoo.com">yahoo.com</option>
								<option value="dreamwiz.com">dreamwiz.com</option>
						</select>
						</td>
					</tr>
				</tbody>
			</table>
			<ul class="bul_sty01_li">
				<li>선택사항을 미입력하더라도 불이익은 발생하지 않습니다.</li>
			</ul>
		</div>

		<!--결제 수단 입력-->
		<div class="title_wrap clearfix mt40">
			<h4 class="float_left">결제 수단 선택</h4>
		</div>
		<div class="tblwrap">
			<table class="tbl_wtype1">
				<caption>결제 수단 선택</caption>
				<colgroup>
					<col style="width: 140px">
				</colgroup>
            <table class="tbl_wtype1">
            <caption>결제 수단 선택</caption>
            <colgroup>
                <col style="width: 140px">
                             <col>
                         </colgroup>
                         <tbody>
						<tr>
                             <th scope="row" class="th_space"><label for="pointpay">한섬마일리지 결제</label></th>
                             <td>
                            <!-- 한섬마일리지 결제 입력 -->
                            <div class="point_wrap">
                                <input title="한섬마일리지 결제" class="inpput" type="text" id="pointpay" name="usePoint" numberonly="true">
                                <p class="p_txt">
                                    M 사용 (잔액 : <span>100,0000</span>M)
                                </p>
                                
                                <div class="point_apply">
                                    <div class="all">
                                        <input title="선택" value="" type="checkbox" id="point_useall"> <span><label for="point_useall">모두사용</label></span>
                                    </div>
                                    <input id="btnUsePoint" class="btn add_s min_auto" value="적용" type="button" onclick="doUsePoint(this);"> <input id="btnCancelUsePoint" class="btn dis_s min_auto" value="적용취소" type="button" onclick="cancelUsePoint(this);">
                                </div>

                                <p class="txt_guide">* 1마일리지 = 1원</p>
                            </div>
                        </td>
                    </tr>
				<tbody>
					<tr>
						<th scope="row" class="th_space">결제수단 선택</th>
						<td>
							<div class="rd_wrap payment_way1907">
								<ul>
									<li>
									<input type="radio" name="mode" id="sel_rd1" value="KO001"onclick="showCkout(this);">
									<label for="sel_rd1" class="mr20">신용카드</label>
									</li>
									
									<li>
									<input type="radio" name="mode" id="sel_rd2" value="KO002" onclick="showCkout(this);"> 
									<label for="sel_rd2" class="mr20">실시간 계좌이체</label>
									</li>
									
									<li>
									<input type="radio" name="mode" id="sel_rd6" value="KO007" onclick="showCkout(this);">
								    <label for="sel_rd6" class="mr20">한섬 마일리지</label>
								    </li>
								</ul>
							</div> 
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	
				<div class="float_right"
					style="position: absolute; left: 680px; top: 60px;">
					<!--오른쪽 박스 최종 결제 금액-->
					<div class="sum_box">
						<div>
							<p class="tlt">최종 결제 금액</p>
							<hr>
							<dl class="clearfix">
								<dt class="sub_total190816">상품 합계</dt>
								<dd class="sub_total190816" id="subTotal">₩795,000</dd>
								<dt class="delch_wrap190816">
									<p class="tlt_ship190816">배송비</p>
								</dt>
								<dd id="deliveryCost">₩ 0</dd>
							</dl>
						</div>
						<div class="total">
							<dl class="clearfix">
								<dt>합계</dt>
								<dd id="totalPrice">₩795,000</dd>
							</dl>
						</div>
					</div>
					<!-- 구매시 지급 예정 포인트-->
					<div class="p_a_box">
						<div class="point">
							<!-- 간편회원이 아닐 때 s -->
							<p class="tlt">구매 시 지급 예정 포인트</p>
							<p>(제품 수령 완료 후 10일 후 적립)</p>
							<p class="txt" id="txtAccumulationPoint">한섬마일리지 39,750 M</p>
							<p class="txt" id="txtAccumulationHPoint">H.Point 795 P</p>
						</div>

						<div class="agree">
							<input type="checkbox" id="agree">
							<label for="agree" class="tlt"> 구매자 동의</label>
							<p class="txt">
								주문할 상품의 상품명, 가격, 배송정보 등
								<br> 판매조건을 확인하였으며, 구매진행에 동의합니다.
								<br>(전자상거래법 제8조 2항)
								<br>
								<br> 기존 마이너스 한섬마일리지를 보유하고 있는 고객은 한섬마일리지가 차감되어 적립되는 것에 동의합니다. 적립 예정 한섬마일리지가 상이할 수 있습니다.
							</p>
						</div>
					</div>
					<!-- <span id="doOrderBtn"> <a href="#;" class="btn gray " onclick="doOrder();"> 결제하기</a>
					</span> -->
					<span id="doOrderBtn"> <a href="/member/orderlist" class="btn gray "> 결제하기</a>
					</span>
				</div>
			</div>
		</div>
	</form>
</div>



<%@ include file="/WEB-INF/views/common/footer.jsp"%>