<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

			<main>
				<div class="container-fluid">
					<h1 class="mt-4">매출분석</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="salesAnalysis">매출 분석</a></li>
					</ol>
					<div class="card mb-4">
						<div class="card-body"></div>
					</div>



					<div class="row">
						<div class="col-lg-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area mr-1"></i> 결제 건수
								</div>
								<div class="card-body">
									<canvas id="myAreaChart" width="100%" height="30"></canvas>
								</div>
								<div class="card-footer small text-muted">Updated
									yesterday at 11:59 PM</div>
							</div>
						</div>

						<div class="col-lg-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-area mr-1"></i> 마케팅 채널별 유입수 및 유입당 결제율
								</div>
								<div class="card-body">
									<canvas id="myBarChart2" width="100%" height="30"></canvas>
								</div>
								<div class="card-footer small text-muted">Updated
									yesterday at 11:59 PM</div>
							</div>
						</div>
					</div>




					<div class="row">
						<div class="col-lg-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-bar mr-1"></i> 결제 금액
								</div>
								<div class="card-body">
									<canvas id="myBarChart" width="100%" height="50"></canvas>
								</div>
								<div class="card-footer small text-muted">Updated
									yesterday at 11:59 PM</div>
							</div>
						</div>



						<div class="col-lg-6">
							<div class="card mb-4">
								<div class="card-header">
									<i class="fas fa-chart-pie mr-1"></i> 성별/나이별 유입수 및 유입당 결제율
								</div>
								<div class="card-body">
									<canvas id="myPieChart" width="100%" height="50"></canvas>
								</div>
								<div class="card-footer small text-muted">Updated
									yesterday at 11:59 PM</div>
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

<!-- 	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" -->
<!-- 		crossorigin="anonymous"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/demo/chart-area-demo.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/demo/chart-bar-demo.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/demo/chart-pie-demo.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/chart-bar-demo.js"></script>
</body>
</html>
