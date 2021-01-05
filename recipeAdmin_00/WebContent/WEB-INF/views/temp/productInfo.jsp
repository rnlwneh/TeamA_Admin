<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
<style>
table {
	width: 100%;
}

table, th, td {
	border: 1px solid #bcbcbc;
}
</style>
</head>

			<main>
				<div class="container-fluid">
					<h1 class="mt-4">상품발주하기</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="orderProduct">발주하기</a></li>
						<li class="breadcrumb-item"><a href="productInfo">상품상세보기</a></li>
					</ol>

					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 상품명
						</div>
						<div class="card-body">


							<section class="panel">


								<form role="form" class="parsley-form" data-parsley-validate>

									<div class="row">
										<div class="col-md-6">




											<div class="form-group">
												<label>상품사진</label>


												<div
													class="col-lg-3 col-md-4 col-sm-6 col-xs-12 switch-item legal">
													<section class="panel">
														<div class="thumb">
															<img class="img-responsive" alt="Responsive image"
																src="${pageContext.request.contextPath}/resources/image/기업로고01.gif" />
														</div>

													</section>
												</div>
											</div>













											<div class="form-group">
												<label>상품번호</label> <input class="form-control" type="text"
													placeholder="1" disabled="">

											</div>


											<div class="form-group">
												<label>상품명</label> <input class="form-control" type="text"
													placeholder="aa1" disabled="">

											</div>


											<div class="form-group">
												<label>거래처번호</label> <input class="form-control" type="text"
													placeholder="1" disabled="">

											</div>


											<div class="form-group">
												<label>거래처명</label> <input class="form-control" type="text"
													placeholder="싱싱야채" disabled="">

											</div>

											<div class="form-group">
												<label>재고</label> <input class="form-control" type="text"
													placeholder="10" disabled="">

											</div>



											<div class="form-group">
												<label>현주문량</label> <input class="form-control" type="text"
													placeholder="2" disabled="">

											</div>

										</div>

										<div class="col-md-6">

											<div class="form-group">
												<label>발주날짜</label> <input class="form-control" type="text"
													placeholder="sysdate" disabled="">

											</div>

											<div class="form-group">
												<label>도착날짜</label> <input class="form-control" type="text"
													placeholder="sysdate+3" disabled="">

											</div>



											<div class="form-group">
												<label>수량</label>
												<div>
													<input type="text" class="form-control" name="count"
														data-parsley-required="true" data-parsley-trigger="change"
														placeholder="-개">
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
											style="width: 45%;" onclick="location.href='orderProduct'">뒤로가기</button>
										<button style="width: 45%;" type="button"
											class="btn btn-success"
											onclick="location.href='orderProduct'">Save</button>
									</div>
								</div>
							</div>

						</div>





					</div>
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

