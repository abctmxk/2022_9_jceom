<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<!-- 스윗얼럿 -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<link rel="stylesheet" href="/css/modal.css">
<link rel="stylesheet" href="/css/admin/sales.css">
<!-- Basic Page Info -->
<meta charset="utf-8" />
<title></title>

<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="/sbo/main/vendors/styles/core.css" />
<link rel="stylesheet" type="text/css"
	href="/sbo/main/vendors/styles/icon-font.min.css" />
<link rel="stylesheet" type="text/css"
	href="/sbo/main/src/plugins/jquery-steps/jquery.steps.css" />
<link rel="stylesheet" type="text/css"
	href="/sbo/main/vendors/styles/style.css" />

<!-- 내부 스타일 따로 적용 -->
<style>
.btn-toolbar>.btn, .btn-toolbar>.btn-group, .btn-toolbar>.input-group {
	margin-left: 5px;
}

.list-group {
	box-shadow: 0px 11px 23px 5px rgba(0, 0, 0, 0.13);
}

.list-group-item {
	background-color: rgba(255, 255, 255, 0.7);
	border: soild #000 1px;
}

.btn-toolbar {
	margin-top: 10px;
}

/* ==== SOME BOOTSTRAP MODS/STYLING ==== */
.btn-default {
	background-color: rgba(255, 255, 255, 0.3);
	border-color: rgba(0, 0, 0, 0.2);
}

.btn {
	padding: 6px 18px;
}

.subject * {
	font-size: 13px;
}

.subject {
	padding-top: 18px;
}

.subject div {
	clear: both;
	border-top: 1px solid #e3e3e3;
	border-bottom: 1px solid #e3e3e3;
	padding: 4px 0;
}

.subject dl {
	clear: both;
}

.subject dt {
	float: left;
	color: #666;
	line-height: 24px;
	background: url(/sbo/main/vendors/images/layout/bu_list_txt_dep2.gif)
		no-repeat left 10px;
	padding-left: 5px;
	letter-spacing: -1px;
}

.subject dd {
	margin-left: 110px;
	line-height: 24px;
	letter-spacing: -1px;
}

.subject dt {
	font-weight: 900;
}

/* 상품설명 부분 */
.po-detail-info {
	clear: both;
	margin-left: 29px;
	overflow: hidden;
}

dl {
	font-size: 12px;
}

#tab-cont-1.tab-cont-1 dl.po-detail-info dt {
	padding-left: 0;
	background: transparent;
	font-weight: bold;
	padding-right: 10px;
}

.po-detail-info dt {
	clear: both;
	float: left;
	width: 140px;
	color: #333;
	font-size: 14px;
	padding-left: 10px;
	padding-top: 14px;
}

.po-detail-info dd {
	float: left;
	width: 744px;
	font-size: 14px;
	padding-top: 14px;
}

.color-1 {
	color: red;
}

.blue {
	color: blue;
}

.po-detail-info li {
	background: url(/sbo/main/vendors/images/layout/bu_list_txt_dep2.gif)
		no-repeat left 9px;
	padding-left: 10px;
	font-size: 14px;
	line-height: 19px;
}

.bir_yy, .bir_mm, .bir_dd {
	width: 160px;
	display: table-cell;
}

.bir_mm+.bir_dd, .bir_yy+.bir_mm {
	padding-left: 10px;
}
.Next{
	background-color: #009591 !important;
	color:#fff !important;
}
.prev{
	background-color: #009591 !important;
	color:#fff !important;
	border-color: #fff !important;
	border-radius: 4px !important;
	padding: 7px 12px !important;
}
.Submit{
	background-color: #009591 !important;
	color:#fff !important;
	border-color: #fff !important;
	border-radius: 4px !important;
}
</style>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<div class="menu-icon bi bi-list"></div>
			<div class="search-toggle-icon bi bi-search"
				data-toggle="header_search"></div>
		</div>
		<div class="header-right">
			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button"
						data-toggle="dropdown"> <span class="user-icon"
						style="width: 0px;"> <!-- <img src="/sbo/main/vendors/images/photo1.jpg" alt="" /> -->
					</span> <span class="user-name"> 홍길동 님 환영합니다.</span>
					</a>
				</div>
			</div>
		</div>
	</div>


	<div class="right-sidebar">
		<div class="sidebar-title">
			<h3 class="weight-600 font-16 text-blue">
				Layout Settings <span class="btn-block font-weight-400 font-12">User
					Interface Settings</span>
			</h3>
			<div class="close-sidebar" data-toggle="right-sidebar-close">
				<i class="icon-copy ion-close-round"></i>
			</div>
		</div>
		<div class="right-sidebar-body customscroll">
			<div class="right-sidebar-body-content">
				<h4 class="weight-600 font-18 pb-10">Header Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary header-white active">White</a>
					<a href="javascript:void(0);"
						class="btn btn-outline-primary header-dark">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-light">White</a> <a
						href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-dark active">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu Dropdown Icon</h4>
				<div class="sidebar-radio-group pb-10 mb-10">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-1" name="menu-dropdown-icon"
							class="custom-control-input" value="icon-style-1" checked="" />
						<label class="custom-control-label" for="sidebaricon-1"><i
							class="fa fa-angle-down"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-2" name="menu-dropdown-icon"
							class="custom-control-input" value="icon-style-2" /> <label
							class="custom-control-label" for="sidebaricon-2"><i
							class="ion-plus-round"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-3" name="menu-dropdown-icon"
							class="custom-control-input" value="icon-style-3" /> <label
							class="custom-control-label" for="sidebaricon-3"><i
							class="fa fa-angle-double-right"></i></label>
					</div>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu List Icon</h4>
				<div class="sidebar-radio-group pb-30 mb-10">
	
				</div>

			</div>
		</div>
	</div>

	<div class="left-side-bar">
		<div class="brand-logo" style="padding-bottom: 10px;">
			<a href="/sbo/login"> <img src="/sbo/main/src/images/logo.jpg"
				alt="메인로고" />
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">
					<li class="dropdown"><a href="javascript:;"
						class="dropdown-toggle"> <span class="micon bi bi-house"></span><span
							class="mtext">가게 및 조회 관리</span>
					</a>
						<ul class="submenu">
							<li><a href="/store">기본 정보(가게정보)</a></li>
						</ul></li>
					<li class="dropdown"><a href="javascript:;"
						class="dropdown-toggle"> <span class="micon bi bi-archive"></span>
							<span class="mtext">매출 관리</span>
					</a>
						<ul class="submenu">
							<li><a href="/orders/205">주문 확인</a></li>
							<li><a href="/sales/205">매출 정보</a></li>
						</ul></li>

					<li><a href="javascript:;" class="dropdown-toggle"> <span
							class="micon bi bi-calendar4-week"></span><span class="mtext">매입
								관리</span>
					</a>
						<ul class="submenu">
							<li><a href="/purchase">매입 등록</a></li>
						</ul></li>

					<li class="dropdown"><a href="javascript:;"
						class="dropdown-toggle"> <span class="micon bi bi-archive"></span><span
							class="mtext">대출 관리</span>
					</a>
						<ul class="submenu">
							<li><a href="/loanstore">대출 상품</a></li>
							<li><a href="/chat" target='_blank'>1:1 상담</a></li>
						</ul></li>
					<li>
						<div class="dropdown-divider"></div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="page-header">
					<div class="row">
						<div class="col-md-6 col-sm-12">
							<div class="title">
								<h4>대출상품</h4>
							</div>
							<nav aria-label="breadcrumb" role="navigation">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a>대출관리</a>
									</li>
									<li class="breadcrumb-item active" aria-current="page"
									style="color : #009591;">
										대출상품</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>

				<!-- 메인 컨텐츠 -->
				<div class="pd-20 card-box mb-30">
					<div class="clearfix mb-20">
						<div class="pull-left">
							<h4 class="h4" style="color:#009591;">전용대출(소상공인)</h4>
						</div>
					</div>

					<div class="loanjoin pd-20 card-box mb-30">
						<div class="clearfix">
							<p class="mb-30">개인신용정보동의</p>
						</div>
						<div class="wizard-content">
							<form onsubmit="return false;" id="check"
								class="tab-wizard wizard-circle wizard" action="#none">
								<h5>정보동의</h5>
								<section>
									<div class="faq-wrap">
										<div id="accordion">
											<div class="card">
												<div class="card-header">
													<button class="btn btn-block collapsed"
														data-toggle="collapse" data-target="#faq1"
														aria-expanded="false">
														<div class="tab3 js-tab">
															<ul>
																<li id="li_info_1" class="on">개인(신용)정보 수집 이용제공
																	동의서(여신 등) 개인(신용)정보 조회 동의서</li>
															</ul>
														</div>
													</button>
												</div>
												<div id="faq1" class="collapse" data-parent="#accordion"
													style="">
													<div class="card-body">
														<div class="col-xs-12">
															<textarea class="form-control" readonly rows="10"
																cols="100">[㈜하나은행 ]귀중
  [귀 행]과의 여신(금융)거래와 관련하여 [귀 행]이 본인의 개인(신용)정보를 수집·이용하거나, 제3자에게 제공하고자 하는 경우에는 「신용정보의 이용 및 보호에 관한 법률」 제15조 제2항, 제32조 제1항, 같은 법 시행령 제34조의2 제4항 및, 「개인(신용)정보 보호법」 제15조 제1항 제1호, 제17조 제1항 제1호, 제24조 제1항 제1호, 제24조의2 제1항에 따라 본인의 동의가 필요합니다.
* 여신 (금융)거래라 함은 은행업무(여신), 겸영업무(파생상품매매 등), 부수업무(보증, 팩토링 등)와 관련된 거래를 의미합니다.

* 필수사항에 대한 동의만으로 계약 체결이 가능합니다.
제2조(정의)
① "홈페이지"란 사업자가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버홈페이지을 운영하는 사업자의 의미로도 사용합니다.

② "이용자"란 "홈페이지"에 접속하여 이 약관에 따라 "홈페이지"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ "회원"이라 함은 "홈페이지"에 개인정보를 제공하여 회원등록을 한 자로서, "홈페이지"의 정보를 지속적으로 제공받으며, "홈페이지"가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

④ "비회원"이라 함은 회원에 가입하지 않고 "홈페이지"가 제공하는 서비스를 이용하는 자를 말합니다.


제3조 (약관의 명시와 개정)
① "홈페이지"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 사이트의 초기 서비스화면(전면)에 게시합니다.

② "홈페이지"는 약관의 규제 등에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 방문판매 등에 관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.

③ "홈페이지"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 홈페이지의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.

④ "홈페이지"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 "홈페이지"에 송신하여 "홈페이지"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑤ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 전자거래소비자보호지침 및 관계법령 또는 상관례에 따릅니다.


제4조(서비스의 제공 및 변경)
① "홈페이지"는 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 "홈페이지"가 정하는 업무

② "홈페이지"는 재화의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화·용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화·용역의 내용 및 제공일자를 명시하여 현재의 재화·용역의 내용을 게시한 곳에 그 제공일자 이전 7일부터 공지합니다.

③ "홈페이지"가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 "홈페이지"는 이로 인하여 이용자가 입은 손해를 배상합니다. 단, "홈페이지"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.


제5조(서비스의 중단)
① "홈페이지"는 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.

② 제1항에 의한 서비스 중단의 경우에는 "홈페이지"는 제8조에 정한 방법으로 이용자에게 통지합니다.

③ "홈페이지"는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단 "홈페이지"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.


제6조(회원가입)
① 이용자는 "홈페이지"가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.

② "홈페이지"는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "홈페이지"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 "홈페이지"의 기술상 현저히 지장이 있다고 판단되는 경우

③ 회원가입계약의 성립 시기는 "홈페이지"의 승낙이 회원에게 도달한 시점으로 합니다.

④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "홈페이지"에 대하여 그 변경사항을 알려야 합니다.


제7조(회원 탈퇴 및 자격 상실 등)
① 회원은 "홈페이지"에 언제든지 탈퇴를 요청할 수 있으며 "홈페이지"는 즉시 회원탈퇴를 처리합니다.

② 회원이 다음 각 호의 사유에 해당하는 경우, "홈페이지"는 회원자격을 제한 및 정지시킬 수 있습니다.
1. 가입 신청 시에 허위 내용을 등록한 경우
2. "홈페이지"를 이용하여 구입한 재화·용역 등의 대금, 기타 "홈페이지"가용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
3. 다른 사람의 "홈페이지" 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우
4. "홈페이지"를 이용하여 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우

③ "홈페이지"가 회원 자격을 제한·정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 "홈페이지"는 회원자격을 상실시킬 수 있습니다.

④ "홈페이지"가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.


제8조(회원에 대한 통지)
① "홈페이지"가 회원에 대한 통지를 하는 경우, 회원이 "홈페이지"에 제출한 전자우편 주소로 할 수 있습니다.

② "홈페이지"는 불특정다수 회원에 대한 통지의 경우 1주일이상 "홈페이지" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다.


제9조(구매신청)
"홈페이지"가용자는 "홈페이지"상에서 이하의 방법에 의하여 구매를 신청합니다.
1. 성명, 비밀번호, 전화번호, 핸드폰번호, 주소, E-MAIL 입력
2. 재화 또는 용역의 선택
3. 결제방법의 선택
4. 이 약관에 동의한다는 표시(예, 마우스 클릭)


제10조 (계약의 성립)
① "홈페이지"는 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하지 않는 한 승낙합니다.
1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
3. 기타 구매신청에 승낙하는 것이 "홈페이지" 기술상 현저히 지장이 있다고 판단하는 경우

② "홈페이지"의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.


제11조(지급방법)
홈페이지"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 하나로 할 수 있습니다.
1. 계좌이체
2. 신용카드결제
3. 온라인무통장입금
4. 전자화폐에 의한 결제
5. 수령 시 대금지급 등


제12조(수신확인통지·구매신청 변경 및 취소)
① "홈페이지"는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.

② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다.

③ "홈페이지"는 배송 전 이용자의 구매신청 변경 및 취소 요청이 있는 때에는 지체 없이 그 요청에 따라 처리합니다.


제13조(배송)
"홈페이지"는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 "홈페이지"의 고의·과실로 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상합니다.


제14조(환급, 반품 및 교환)
① "홈페이지"는 이용자가 구매 신청한 재화 또는 용역이 품절 등의 사유로 재화의 인도 또는 용역의 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 사전에 재화 또는 용역의 대금을 받은 경우에는 대금을 받은 날부터 3일 이내에, 그렇지 않은 경우에는 그 사유발생일로부터 3일 이내에 계약해제 및 환급절차를 취합니다.

② 다음 각 호의 경우에는 "홈페이지"는 배송된 재화일지라도 재화를 반품 받은 다음 영업일 이내에 이용자의 요구에 따라 즉시 환급, 반품 및 교환 조치를 합니다. 다만 그 요구기한은 배송된 날로부터 20일 이내로 합니다.
1. 배송된 재화가 주문내용과 상이하거나 "홈페이지"가 제공한 정보와 상이할 경우
2. 배송된 재화가 파손, 손상되었거나 오염되었을 경우
3. 재화가 광고에 표시된 배송기간보다 늦게 배송된 경우
4. 방문판매 등에 관한 법률 제18조에 의하여 광고에 표시하여야 할 사항을 표시하지 아니한 상태에서 이용자의 청약이 이루어진 경우


제15조(개인정보보호)
① "홈페이지"는 이용자의 정보 수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다.
다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
1. 희망ID(회원의 경우)
2. 비밀번호(회원의 경우)
3. 이름
4. 별명
5. E-MAIL
6. 주소
7. 전화번호
8. 휴대번호
9. 메일링서비스
10. SMS 수신여부

② "홈페이지"가 이용자의 개인 식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.

③ 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 "홈페이지"가 집니다. 다만, 다음의 경우에는 예외로 합니다.
1. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우
2. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우

④ "홈페이지"가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공 받는자, 제공목적 및 제공할 정보의 내용)등 정보통신망이용촉진 등에 관한 법률 제16조제3항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.

⑤ 이용자는 언제든지 "홈페이지"가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 "홈페이지"는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "홈페이지"는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.

⑥ "홈페이지"는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.

⑦ "홈페이지" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.


제16조("홈페이지"의 의무)
① "홈페이지은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는 데 최선을 다하여야 합니다.

② "홈페이지"는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.

③ "홈페이지"가 상품이나 용역에 대하여 「표시·광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.

④ "홈페이지"는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.


제17조( 회원의 ID 및 비밀번호에 대한 의무)
① 제15조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.

② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안 됩니다.

③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "홈페이지"에 통보하고 "홈페이지"의 안내가 있는 경우에는 그에 따라야 합니다.


제18조(이용자의 의무)
이용자는 다음 행위를 하여서는 안 됩니다.
1. 신청 또는 변경 시 허위내용의 등록
2. "홈페이지"에 게시된 정보의 변경
3. "홈페이지"가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시
4. "홈페이지" 기타 제3자의 저작권 등 지적재산권에 대한 침해
5. "홈페이지" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
6. 외설 또는 폭력적인 메시지·화상·음성 기타 공서양속에 반하는 정보를 홈페이지에 공개 또는 게시하는 행위


제19조(연결"홈페이지"와 피연결"홈페이지" 간의 관계)
① 상위 "홈페이지"와 하위 "홈페이지"가 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 "홈페이지"(웹 사이트)라고 하고 후자를 피연결 "홈페이지"(웹사이트)라고 합니다.

② 연결 "홈페이지"는 피연결 "홈페이지"가 독자적으로 제공하는 재화·용역에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결 "홈페이지"의 사이트에서 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.


제20조(저작권의 귀속 및 이용제한)
① "홈페이지"가 작성한 저작물에 대한 저작권 기타 지적재산권은 "홈페이지"에 귀속합니다.

② 이용자는 "홈페이지"를 이용함으로써 얻은 정보를 "홈페이지"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다.


제21조(분쟁해결)
① "홈페이지"는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치·운영합니다.

② "홈페이지"는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.

③ "홈페이지"와 이용자간에 발생한 분쟁은 전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.


제22조(재판권 및 준거법)
① "홈페이지"와 이용자간에 발생한 전자거래 분쟁에 관한 소송은 민사소송법상의 관할법원에 제기합니다.

② "홈페이지"와 이용자간에 제기된 전자거래 소송에는 한국법을 적용합니다.
</textarea>
														</div>
														<div class="col-xs-12">
															<div class="checkbox pull-right">
																<label for="join_user_agree"> <input
																	type="checkbox" name="join_user_agree"
																	id="join_user_agree1" value="1" /> 약관에 동의합니다.
																</label>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header">
													<button class="btn btn-block collapsed"
														data-toggle="collapse" data-target="#faq2">
														<div class="tab3 js-tab">
															<ul>
																<li id="li_info_1" class="on">개인(신용)정보 조회 동의서</li>
															</ul>
														</div>
													</button>
												</div>
												<div id="faq2" class="collapse" data-parent="#accordion">
													<div class="card-body">
														<div class="col-xs-12">
															<textarea class="form-control" readonly rows="10"
																cols="100">[㈜하나은행 ]귀중
  [귀 행]과의 여신(금융)거래와 관련하여 [귀 행]이 본인의 개인(신용)정보를 수집·이용하거나, 제3자에게 제공하고자 하는 경우에는 「신용정보의 이용 및 보호에 관한 법률」 제15조 제2항, 제32조 제1항, 같은 법 시행령 제34조의2 제4항 및, 「개인(신용)정보 보호법」 제15조 제1항 제1호, 제17조 제1항 제1호, 제24조 제1항 제1호, 제24조의2 제1항에 따라 본인의 동의가 필요합니다.
* 여신 (금융)거래라 함은 은행업무(여신), 겸영업무(파생상품매매 등), 부수업무(보증, 팩토링 등)와 관련된 거래를 의미합니다.

* 필수사항에 대한 동의만으로 계약 체결이 가능합니다.
제2조(정의)
① "홈페이지"란 사업자가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버홈페이지을 운영하는 사업자의 의미로도 사용합니다.

② "이용자"란 "홈페이지"에 접속하여 이 약관에 따라 "홈페이지"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ "회원"이라 함은 "홈페이지"에 개인정보를 제공하여 회원등록을 한 자로서, "홈페이지"의 정보를 지속적으로 제공받으며, "홈페이지"가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

④ "비회원"이라 함은 회원에 가입하지 않고 "홈페이지"가 제공하는 서비스를 이용하는 자를 말합니다.


제3조 (약관의 명시와 개정)
① "홈페이지"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 사이트의 초기 서비스화면(전면)에 게시합니다.

② "홈페이지"는 약관의 규제 등에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 방문판매 등에 관한법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.

③ "홈페이지"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 홈페이지의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.

④ "홈페이지"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 "홈페이지"에 송신하여 "홈페이지"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑤ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 정부가 제정한 전자거래소비자보호지침 및 관계법령 또는 상관례에 따릅니다.


제4조(서비스의 제공 및 변경)
① "홈페이지"는 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 "홈페이지"가 정하는 업무

② "홈페이지"는 재화의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화·용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화·용역의 내용 및 제공일자를 명시하여 현재의 재화·용역의 내용을 게시한 곳에 그 제공일자 이전 7일부터 공지합니다.

③ "홈페이지"가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 "홈페이지"는 이로 인하여 이용자가 입은 손해를 배상합니다. 단, "홈페이지"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.


제5조(서비스의 중단)
① "홈페이지"는 컴퓨터 등 정보통신설비의 보수점검·교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.

② 제1항에 의한 서비스 중단의 경우에는 "홈페이지"는 제8조에 정한 방법으로 이용자에게 통지합니다.

③ "홈페이지"는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단 "홈페이지"에 고의 또는 과실이 없는 경우에는 그러하지 아니합니다.


제6조(회원가입)
① 이용자는 "홈페이지"가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.

② "홈페이지"는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 회원으로 등록합니다.
1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "홈페이지"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 "홈페이지"의 기술상 현저히 지장이 있다고 판단되는 경우

③ 회원가입계약의 성립 시기는 "홈페이지"의 승낙이 회원에게 도달한 시점으로 합니다.

④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "홈페이지"에 대하여 그 변경사항을 알려야 합니다.


제7조(회원 탈퇴 및 자격 상실 등)
① 회원은 "홈페이지"에 언제든지 탈퇴를 요청할 수 있으며 "홈페이지"는 즉시 회원탈퇴를 처리합니다.

② 회원이 다음 각 호의 사유에 해당하는 경우, "홈페이지"는 회원자격을 제한 및 정지시킬 수 있습니다.
1. 가입 신청 시에 허위 내용을 등록한 경우
2. "홈페이지"를 이용하여 구입한 재화·용역 등의 대금, 기타 "홈페이지"가용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
3. 다른 사람의 "홈페이지" 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우
4. "홈페이지"를 이용하여 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우

③ "홈페이지"가 회원 자격을 제한·정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 "홈페이지"는 회원자격을 상실시킬 수 있습니다.

④ "홈페이지"가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.


제8조(회원에 대한 통지)
① "홈페이지"가 회원에 대한 통지를 하는 경우, 회원이 "홈페이지"에 제출한 전자우편 주소로 할 수 있습니다.

② "홈페이지"는 불특정다수 회원에 대한 통지의 경우 1주일이상 "홈페이지" 게시판에 게시함으로서 개별 통지에 갈음할 수 있습니다.


제9조(구매신청)
"홈페이지"가용자는 "홈페이지"상에서 이하의 방법에 의하여 구매를 신청합니다.
1. 성명, 비밀번호, 전화번호, 핸드폰번호, 주소, E-MAIL 입력
2. 재화 또는 용역의 선택
3. 결제방법의 선택
4. 이 약관에 동의한다는 표시(예, 마우스 클릭)


제10조 (계약의 성립)
① "홈페이지"는 제9조와 같은 구매신청에 대하여 다음 각 호에 해당하지 않는 한 승낙합니다.
1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
3. 기타 구매신청에 승낙하는 것이 "홈페이지" 기술상 현저히 지장이 있다고 판단하는 경우

② "홈페이지"의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.


제11조(지급방법)
홈페이지"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 하나로 할 수 있습니다.
1. 계좌이체
2. 신용카드결제
3. 온라인무통장입금
4. 전자화폐에 의한 결제
5. 수령 시 대금지급 등


제12조(수신확인통지·구매신청 변경 및 취소)
① "홈페이지"는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.

② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있습니다.

③ "홈페이지"는 배송 전 이용자의 구매신청 변경 및 취소 요청이 있는 때에는 지체 없이 그 요청에 따라 처리합니다.


제13조(배송)
"홈페이지"는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 "홈페이지"의 고의·과실로 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상합니다.


제14조(환급, 반품 및 교환)
① "홈페이지"는 이용자가 구매 신청한 재화 또는 용역이 품절 등의 사유로 재화의 인도 또는 용역의 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고, 사전에 재화 또는 용역의 대금을 받은 경우에는 대금을 받은 날부터 3일 이내에, 그렇지 않은 경우에는 그 사유발생일로부터 3일 이내에 계약해제 및 환급절차를 취합니다.

② 다음 각 호의 경우에는 "홈페이지"는 배송된 재화일지라도 재화를 반품 받은 다음 영업일 이내에 이용자의 요구에 따라 즉시 환급, 반품 및 교환 조치를 합니다. 다만 그 요구기한은 배송된 날로부터 20일 이내로 합니다.
1. 배송된 재화가 주문내용과 상이하거나 "홈페이지"가 제공한 정보와 상이할 경우
2. 배송된 재화가 파손, 손상되었거나 오염되었을 경우
3. 재화가 광고에 표시된 배송기간보다 늦게 배송된 경우
4. 방문판매 등에 관한 법률 제18조에 의하여 광고에 표시하여야 할 사항을 표시하지 아니한 상태에서 이용자의 청약이 이루어진 경우


제15조(개인정보보호)
① "홈페이지"는 이용자의 정보 수집시 구매계약 이행에 필요한 최소한의 정보를 수집합니다.
다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
1. 희망ID(회원의 경우)
2. 비밀번호(회원의 경우)
3. 이름
4. 별명
5. E-MAIL
6. 주소
7. 전화번호
8. 휴대번호
9. 메일링서비스
10. SMS 수신여부

② "홈페이지"가 이용자의 개인 식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.

③ 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 "홈페이지"가 집니다. 다만, 다음의 경우에는 예외로 합니다.
1. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우
2. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우

④ "홈페이지"가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공 받는자, 제공목적 및 제공할 정보의 내용)등 정보통신망이용촉진 등에 관한 법률 제16조제3항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.

⑤ 이용자는 언제든지 "홈페이지"가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 "홈페이지"는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "홈페이지"는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.

⑥ "홈페이지"는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.

⑦ "홈페이지" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.


제16조("홈페이지"의 의무)
① "홈페이지은 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화·용역을 제공하는 데 최선을 다하여야 합니다.

② "홈페이지"는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.

③ "홈페이지"가 상품이나 용역에 대하여 「표시·광고의 공정화에 관한 법률」 제3조 소정의 부당한 표시·광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.

④ "홈페이지"는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.


제17조( 회원의 ID 및 비밀번호에 대한 의무)
① 제15조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.

② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안 됩니다.

③ 회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "홈페이지"에 통보하고 "홈페이지"의 안내가 있는 경우에는 그에 따라야 합니다.


제18조(이용자의 의무)
이용자는 다음 행위를 하여서는 안 됩니다.
1. 신청 또는 변경 시 허위내용의 등록
2. "홈페이지"에 게시된 정보의 변경
3. "홈페이지"가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시
4. "홈페이지" 기타 제3자의 저작권 등 지적재산권에 대한 침해
5. "홈페이지" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
6. 외설 또는 폭력적인 메시지·화상·음성 기타 공서양속에 반하는 정보를 홈페이지에 공개 또는 게시하는 행위


제19조(연결"홈페이지"와 피연결"홈페이지" 간의 관계)
① 상위 "홈페이지"와 하위 "홈페이지"가 하이퍼링크(예: 하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨)방식 등으로 연결된 경우, 전자를 연결 "홈페이지"(웹 사이트)라고 하고 후자를 피연결 "홈페이지"(웹사이트)라고 합니다.

② 연결 "홈페이지"는 피연결 "홈페이지"가 독자적으로 제공하는 재화·용역에 의하여 이용자와 행하는 거래에 대해서 보증 책임을 지지 않는다는 뜻을 연결 "홈페이지"의 사이트에서 명시한 경우에는 그 거래에 대한 보증 책임을 지지 않습니다.


제20조(저작권의 귀속 및 이용제한)
① "홈페이지"가 작성한 저작물에 대한 저작권 기타 지적재산권은 "홈페이지"에 귀속합니다.

② 이용자는 "홈페이지"를 이용함으로써 얻은 정보를 "홈페이지"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다.


제21조(분쟁해결)
① "홈페이지"는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치·운영합니다.

② "홈페이지"는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다.

③ "홈페이지"와 이용자간에 발생한 분쟁은 전자거래기본법 제28조 및 동 시행령 제15조에 의하여 설치된 전자거래분쟁조정위원회의 조정에 따를 수 있습니다.


제22조(재판권 및 준거법)
① "홈페이지"와 이용자간에 발생한 전자거래 분쟁에 관한 소송은 민사소송법상의 관할법원에 제기합니다.

② "홈페이지"와 이용자간에 제기된 전자거래 소송에는 한국법을 적용합니다.
</textarea>
														</div>
														<div class="col-xs-12">
															<div class="checkbox pull-right">
																<label for="join_user_agree"> <input
																	type="checkbox" name="join_user_agree"
																	id="join_user_agree2" value="1" /> 약관에 동의합니다.
																</label>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
								<!-- Step 2 -->
								<h5>사업자 등록번호 조회</h5>
								<section>
									<div class="col-sm-12 pt-3">
										<div class="card">
											<div class="card-body">
												<div class="table-responsive">
													<table class="table">
														<tbody>
															<tr style="line-height: 32px;">
																<td>성명</td>
																<td><input type="text" name="name"
																	class="form-control" value="엄재철" readonly></td>
																<td>주민등록번호</td>
																<td><input type="text" name="jumin"
																	class="form-control" value="931123-*******" readonly>
																</td>
															</tr>
															<tr>
																<td>사업자번호</td>
																<td><input type="text" name=""
																	class="form-control review regi" value=""
																	placeholder="사업자등록증을 첨부해주세요">
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</section>
								<!-- Step 3 -->
								<h5>개인정보 입력</h5>
								<section>
									<div class="col-sm-12 pt-3">
										<div class="card">

											<div class="card-body">
												<div class="table-responsive">
													<table class="table">
														<tbody>
															<tr>
																<td>전화번호</td>
																<td><input type="tel" name="admin_passwd1"
																	class="form-control" maxlength="13" value=""></td>
																<td>휴대폰 번호</td>
																<td><input type="tel" name="admin_passwd2"
																	class="form-control" maxlength="13" value=""></td>
															</tr>
															<tr>
																<td>이메일 주소</td>
																<td><input type="tel" name="tel"
																	class="form-control" value=""></td>
															</tr>
															<tr>
																<td>주소</td>
																<td colspan="3">
																	<input class="address1 form-control" type="text" id="addr1" name="addr1" placeholder="찾기 버튼으로 주소 등록" tabindex="9" readonly>
																</td>
																<td>
																	<button type="button" class="btn btn-cpink p-0"
																	onclick="modifyAddress()" id="delevery_modify"
																	style="border: 1px solid #008485;color:#008485;height: 40px;
																	border-radius: 5px;min-width: 120px;">
																	찾기</button>
																	</td>
																	<input type="hidden" id="sample2_extraAddress" placeholder="참고항목" readonly>
																	<div id="layer" style="display: none; position: fixed; overflow: hidden;
																		z-index: 99; -webkit-overflow-scrolling: touch;">
																	<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
																		id="btnCloseLayer"
																		style="cursor: pointer; position: absolute; right: -3px;
																		 top: -3px; z-index:2"
																		onclick="closeDaumPostcode()" alt="닫기 버튼">
																	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
																	<script>
																			// 우편번호 찾기 화면을 넣을 element
																			var element_layer = document.getElementById('layer');
											
																			function closeDaumPostcode() {
																				// iframe을 넣은 element를 안보이게 한다.
																				element_layer.style.display = 'none';
																			}

																			function modifyAddress() {
																				new daum.Postcode(
																						{
																							oncomplete : function(data) {
																							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
										
																							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
																							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
																							var addr = ''; // 주소 변수
																							var extraAddr = ''; // 참고항목 변수

																							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
																							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
																								addr = data.roadAddress;
																							} else { // 사용자가 지번 주소를 선택했을 경우(J)
																								addr = data.jibunAddress;
																							}

																							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
																							if (data.userSelectedType === 'R') {
																								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
																								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
																								if (data.bname !== ''
																										&& /[동|로|가]$/g
																												.test(data.bname)) {
																									extraAddr += data.bname;
																								}
																							// 건물명이 있고, 공동주택일 경우 추가한다.
																							if (data.buildingName !== ''
																									&& data.apartment === 'Y') {
																								extraAddr += (extraAddr !== '' ? ', '
																										+ data.buildingName
																										: data.buildingName);
																							}
																							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
																							if (extraAddr !== '') {
																								extraAddr = ' ('
																										+ extraAddr
																										+ ')';
																							}
																							// 조합된 참고항목을 해당 필드에 넣는다.
																							document.getElementById("sample2_extraAddress").value = extraAddr;

																							} else {
																								document.getElementById("sample2_extraAddress").value = '';
																							}

																							// 우편번호와 주소 정보를 해당 필드에 넣는다.
																							$("#storeAddress1").val(data.zonecode);
																							$("#storeAddress2").val(addr);

												

													$.ajax({
														url : "/addressModify",
														data : {
																address1 : data.zonecode,
																address2 : addr
														},
														type : "post",
														success : function() {
														//$(".address1").text(addr);
														$(".address1").val(addr);
														address1 = data.zonecode;
														},
														fail : function() {
															alert("실패");
														}
													})
													// 추가

													// 커서를 상세주소 필드로 이동한다.
													/* document.getElementById("deleveryAddress3").focus(); */

													$("#deleveryAddress3").focus();
													// iframe을 넣은 element를 안보이게 한다.
													// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
													element_layer.style.display = 'none';

												},
												width : '100%',
												height : '100%',
												maxSuggestItems : 5
											}).embed(element_layer);

									// iframe을 넣은 element를 보이게 한다.
									element_layer.style.display = 'block';

									// iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
									initLayerPosition();
								}

								// 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
								// resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
								// 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
								function initLayerPosition() {
									var width = 300; //우편번호서비스가 들어갈 element의 width
									var height = 400; //우편번호서비스가 들어갈 element의 height
									var borderWidth = 1; //샘플에서 사용하는 border의 두께

									// 위에서 선언한 값들을 실제 element에 넣는다.
									element_layer.style.width = width + 'px';
									element_layer.style.height = height + 'px';
									element_layer.style.border = borderWidth
											+ 'px solid';
									// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계다.
									element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
											+ 'px';
									element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
											+ 'px';
								}
							</script>
																	
																
															</tr>
														</tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</section>
							</form>
						</div>
					</div>
				</div>
			<div class="footer-wrap pd-20 mb-20 card-box">
				<div class="Footer__GlobalFooter-owh5jd-7 fKrPjG">
					<a href="/" class="Footer__Logo-owh5jd-8 eoMxtc"> <img
						src="/sbo/main/src/images/logo.jpg" alt="하나 상생 플랫폼"></a>
					<div class="Footer__FooterInfo-owh5jd-9 ptTZd">
						<div class="Footer__GlobalLinks-owh5jd-11 ewsZOv">
							<a href="#" style="text-decoration: none; color: #494f54;">회사소개</a>
							<span>|</span> <a href="#"
								style="text-decoration: none; color: #494f54;">하나 상생 플랫폼</a> <span>|</span>
							<a href="#" style="text-decoration: none; color: #494f54;">이용약관</a>
							<span>|</span> <a href="#"
								style="text-decoration: none; color: #494f54;">서비스운영원칙</a> <span>|</span>
							<a href="#" style="text-decoration: none; color: #494f54;">전자금융거래이용약관</a>
							<span>|</span> <a href="#"
								style="text-decoration: none; color: #494f54;">개인정보처리방침</a>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>
	</div>

	<!-- js -->
	<script src="/sbo/main/vendors/scripts/core.js"></script>
	<script src="/sbo/main/vendors/scripts/script.min.js"></script>
	<script src="/sbo/main/vendors/scripts/process.js"></script>
	<script src="/sbo/main/vendors/scripts/layout-settings.js"></script>
	<script src="/sbo/main/src/plugins/jquery-steps/jquery.steps.js"></script>
	<script src="/sbo/main/vendors/scripts/steps-setting.js"></script>

	<!-- OCR 처리 -->
	<%@ include file="/WEB-INF/view/modal/modal_review.jsp"%>
	<script type="text/javascript" src="/js/util/util.js"></script>
	<script type="text/javascript" src="/js/order/orderList.js"></script>

	<script type="text/javascript">
			$(document).ready(function(){
				var idx = $(".ulrole>li>a");
				idx.eq(0).text("이전").addClass('prev');
				idx.eq(1).text("다음").addClass('Next'); 
				idx.eq(2).text("신청하기").addClass('Submit');
/* 				$(".Next").click(function(){
					var checked = $('#join_user_agree1').is(':checked');
					
					if(checked){
						$('input:checkbox').prop('checked',true);						
					}else{
						alert('쳌흐ㅐ주세요');
					}
				}); */
				
				$(".Submit").click(function() {
					swal({
						title : "신청이 완료되었습니다",
	    				closeOnClickOutside : false,
	    				buttons:"확인"
	    				
					}).then((result) =>{
						location.href="/loanstore";
					});
						
				});
	
			});
		</script>

</body>
</html>
