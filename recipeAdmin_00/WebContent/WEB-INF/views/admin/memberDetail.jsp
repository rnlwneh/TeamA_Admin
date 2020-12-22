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
<title>회원 정보</title>
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet" />
<style>
table {
	width: 100%;
}

table, th, td {
	border: 1px solid #bcbcbc;
}
</style>
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
								<a href='memberOrderList'><font size='2' color='gray'>고객
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
								<a href='tables'><font size='2' color='white'>회원관리</font></a>
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
					<h1 class="mt-4">회원관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="tables">회원관리</a></li>
						<li class="breadcrumb-item active"><a href="memberDetail">회원상세보기</a></li>
					</ol>

					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 회원정보{닉넴}
						</div>
						<div class="card-body">


							<section class="panel">


								<form role="form" class="parsley-form" data-parsley-validate>

									<div class="row">
										<div class="col-md-6">

											<div class="form-group">
												<label>닉네임</label>
												<div>
													<input type="text" class="form-control" name="Nickname"
														data-parsley-required="true" data-parsley-trigger="change"
														placeholder="Nickname">
												</div>
											</div>

											<div class="form-group">
												<label>등급</label>
												<div>
													<select data-placeholder="rank" style="width: 100%;"
														class="form-control">

														<option selected>방구석요리사</option>
														<option>미슐랭셰프</option>
														<option>아임셰프</option>
														<option>내마을요리사</option>
														<option>방구석요리사</option>
														<option>김볶밥가능</option>
														<option>내베프전자레인지</option>


													</select>


												</div>
											</div>

											<div class="form-group">
												<label>주소</label>
												<div>
													<input type="text" class="form-control" name="date"
														data-parsley-required="true" data-parsley-trigger="change"
														placeholder="서울시 어쩌고">
												</div>
											</div>

											<div class="form-group">
												<label>가입연도</label> <input class="form-control" type="text"
													placeholder="2020.01.23" disabled="">

											</div>

											<div class="form-group">
												<label>누적신고횟수</label> <input class="form-control"
													type="text" placeholder="6" disabled="">

											</div>

											<div class="form-group">
												<label>정지횟수</label> <input class="form-control" type="text"
													placeholder="0" disabled="">

											</div>

										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label>Email</label>
												<div>
													<input type="text" class="form-control" name="email"
														data-parsley-type="email" data-parsley-required="true"
														data-parsley-trigger="change"
														placeholder="hello@naver.com">
												</div>

											</div>




											<div class="form-group">
												<label>상태</label>
												<div>
													<input type="text" class="form-control" name="Nickname"
														data-parsley-required="true" data-parsley-trigger="change"
														placeholder="평온">
												</div>
											</div>

										</div>

										<br>

									</div>
								</form>












							</section>
							<br>
							<div class="col-md-12">
								<div class="demo-button">
									<label></label>
									<div>
										<button type="button" class="btn btn-danger"
											style="width: 45%;" onclick="location.href='tables'">정지하기</button>
										<button style="width: 45%;" type="button"
											class="btn btn-success" onclick="location.href='tables'">Save</button>
									</div>
								</div>
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

	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/dist/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/chosen_v1.4.0/chosen.jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/fuelux/pillbox.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/fuelux/spinner.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/scripts/form-custom.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery.placeholder.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/switchery/dist/switchery.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/fastclick/lib/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery_appear/jquery.appear.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.js"></script>





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
		src="${pageContext.request.contextPath}/resources/assets/demo/datatables-demo.js"></script>
</body>
</html>