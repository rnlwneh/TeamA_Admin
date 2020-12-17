<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <head>
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>상품 관리</title>
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet" />
<link
	href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"
	rel="stylesheet" crossorigin="anonymous" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
	crossorigin="anonymous"></script>
	<style type="text/css">
		textarea {
	        width: 90%;
	        height: 200px;
	        resize:none;
	    }
	</style>
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
								<a href='storeGoodsList'><font size='2' color='white'>스토어
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
					<h1 class="mt-4">스토어 상품 추가</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="storeGoodsList">스토어
								상품 관리</a></li>
						<li class="breadcrumb-item"><a href="addStoreGoods">스토어 상품 추가</a></li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							<!--                                 DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the -->
							<!--                                 <a target="_blank" href="https://datatables.net/">official DataTables documentation</a> -->
							<!--                                 . -->
						</div>
					</div>
					<div class="row">
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									상품 기본 정보
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-bordered" id="" width="100%" cellspacing="0">
											<tr>
												<th>상품이름</th>
												<th><input type='text'></th>
											</tr>
											<tr>
												<th>거래처</th>
												<th>
													<select>
														<option value=''>-거래처 선택-
														<c:forEach items="${trdListName }" var='trdListName'>
															<option value='${trdListName.trd_list_name }'>${trdListName.trd_list_name }
														</c:forEach>
													</select>
												</th>
											</tr>
											<tr>
												<th>재고량</th>
												<th><input type='text'></th>
											</tr>
											<tr>
												<th>원가</th>
												<th><input type='text'></th>
											</tr>
											<tr>
												<th>판매가</th>
												<th><input type='text'></th>
											</tr>
											<tr>
												<th>썸네일 이미지</th>
												<th><input type='file' id='img'></th>
											</tr>
											<tr>
												<th>썸네일 미리보기</th>
												<th><div align='center' class="select_img"><img src="" /></div></th>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-xl-6">
							<div class="card mb-4">
								<div class="card-header">
									상품 상세 정보
								</div>
								<div class="card-body">
									<table class="table table-bordered" id="" width="100%" cellspacing="0">
										<tr>
											<th>상세 이미지</th>
											<th><input type='file' id='img2'>
										</tr>
										<tr>
											<th>이미지 미리보기</th>
											<th><div align='center' class="select_img2"><img src="" /></div></th>
										</tr>
										<tr>
											<th>상품 설명</th>
											<th><textarea id='' name=''></textarea></th>
										</tr>
									</table>	
								</div>
							</div>
						</div>
					</div>
					<div align='right'><input type='button' value='저장'></div>
				</div>
			</main>
<!-- 			<footer class="py-4 bg-light mt-auto"> -->
<!-- 				<div class="container-fluid"> -->
<!-- 					<div -->
<!-- 						class="d-flex align-items-center justify-content-between small"> -->
<!-- 						<div class="text-muted">Copyright &copy; Your Website 2020</div> -->
<!-- 						<div> -->
<!-- 							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms -->
<!-- 								&amp; Conditions</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</footer> -->
		</div>
	</div>
	
	<script>
		$("#img").change(function(){
			if(this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$(".select_img img").attr("src", data.target.result).width(200);        
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
		
		$("#img2").change(function(){
			if(this.files && this.files[0]) {
				var reader = new FileReader;
				reader.onload = function(data) {
					$(".select_img2 img").attr("src", data.target.result).width(200);        
				}
				reader.readAsDataURL(this.files[0]);
			}
		});
	</script>
	
	
	
<!-- 	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" -->
<!-- 		crossorigin="anonymous"></script> -->
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
