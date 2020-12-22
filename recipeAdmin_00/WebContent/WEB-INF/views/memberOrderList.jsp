<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>고객 주문 관리</title>
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<a class="navbar-brand" href="indexA">Recipe</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle" href="#">
			목록 숨기기<i class="fas fa-bars"></i>
		</button>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<!--                 <div class="input-group"> -->
			<!--                     <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" /> -->
			<!--                     <div class="input-group-append"> -->
			<!--                         <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button> -->
			<!--                     </div> -->
			<!--                 </div> -->
		</form>
		<!-- Navbar-->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="userDropdown" href="#"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<!--                         <a class="dropdown-item" href="#">Settings</a> -->
					<!--                         <a class="dropdown-item" href="#">Activity Log</a> -->
					<!--                         <div class="dropdown-divider"></div> -->
					<a class="dropdown-item" href="ad_logout">로그아웃</a>
				</div></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<!--                             <div class="sb-sidenav-menu-heading">Core</div> -->
						<a class="nav-link" href="indexA">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 메인
						</a>



						<div class="sb-sidenav-menu-heading">일정 관리</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a href='adminSchedule2'><font size='2' color='gray'>달력</font></a>
						</nav>

						<c:set var="author" value="${ad_author }" />

						<c:if test="${fn:contains(author, '사이트관리')}">

							<div class="sb-sidenav-menu-heading">사이트 관리</div>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='adminBoardRegist'><font size='2' color='gray'>신고된
										글 관리</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href=''><font size='2' color='gray'>사이트 카테고리 관리</font></a>
							</nav>

						</c:if>

						<c:if test="${fn:contains(author, '스토어관리')}">

							<div class="sb-sidenav-menu-heading">스토어 관리</div>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='orderProduct'><font size='2' color='gray'>발주하기</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='orderList'><font size='2' color='gray'>발주조회</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='sales'><font size='2' color='gray'>매출 현황</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='salesAnalysis'><font size='2' color='gray'>매출
										분석</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='clientList'><font size='2' color='gray'>거래처목록</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href=''><font size='2' color='gray'>스토어 재고 현황</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='storeGoodsList'><font size='2' color='gray'>스토어
										상품 관리</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='memberOrderList'><font size='2' color='white'>고객
										주문 관리</font></a>
							</nav>

						</c:if>

						<c:if test="${fn:contains(author, '회원관리')}">

							<div class="sb-sidenav-menu-heading">회원관리</div>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='newChief'><font size='2' color='gray'>셰프 신청
										관리</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='tables'><font size='2' color='gray'>회원관리</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='chiefManage'><font size='2' color='gray'>셰프관리</font></a>
							</nav>

						</c:if>

						<div class="sb-sidenav-menu-heading">관리자</div>
						<nav class="sb-sidenav-menu-nested nav">
							<a href='adminList'><font size='2' color='gray'>관리자 목록</font></a>
						</nav>
						<nav class="sb-sidenav-menu-nested nav">
							<a href='register'><font size='2' color='gray'>관리자
									추가하기</font></a>
						</nav>






					</div>
				</div>
				<!--                     <div class="sb-sidenav-footer"> -->
				<!--                         <div class="small">Logged in as:</div> -->
				<!--                         Start Bootstrap -->
				<!--                     </div> -->
			</nav>
		</div>

		<!-- 공통사항 -->


		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">고객배송정보</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="memberOrderList">고객주문관리</a></li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							<!--                                 DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the -->
							<!--                                 <a target="_blank" href="https://datatables.net/">official DataTables documentation</a> -->

						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 배송정보
						</div>
						<table class="table table-bordered" id="" width="100%"
							cellspacing="0">
							<tr>
								<td align='center'>배송상태</td>
								<td>
									<label for='status'><input type='radio' id='status' name='aa' value='전체'>전체</label>&nbsp&nbsp
									<label for='status2'><input type='radio' id='status2' name='aa' value='결제확인중'>결제확인중</label> &nbsp&nbsp
									<label for='status3'><input type='radio' id='status3' name='aa' value='배송중'>배송중</label> &nbsp&nbsp
									<label for='status4'><input type='radio' id='status4' name='aa' value='배송완료'>배송완료</label> &nbsp&nbsp
									<label for='status5'><input type='radio' id='status5' name='aa' value='주문취소'>주문취소</label> 
								</td>
							</tr>
							<tr>
								<td align='center'>회원명</td>
								<td><input type='text'></td>
							</tr>
							<tr>
								<td align='center'>상품명</td>
								<td><input type='text'></td>
							</tr>
							<tr>
								<td align='center'>결제수단</td>
								<td><input type='text'></td>
							</tr>
						</table>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>배송번호</th>
											<th>회원명</th>
											<th>상품사진</th>
											<th>상품명</th>
											<th>상품수량</th>
											<th>상품가격</th>
											<th>결제수단</th>
											<th>배송지</th>
											<th>배송상태</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>098765467643</td>
											<td>ㅎㅇ</td>
											<td></td>
											<td>맛있는고기</td>
											<td>2</td>
											<td>18000원</td>
											<td>카드</td>
											<td>서울시 가디</td>
											<td>결제확인중</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</main>
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2020</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/datatables-demo.js"></script>
</body>
</html>
