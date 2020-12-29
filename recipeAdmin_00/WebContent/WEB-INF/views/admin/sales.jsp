<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

			<main>
				<div class="container-fluid">
					<h1 class="mt-4">매출현황</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="sales">매출 현황</a></li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							<!--                                 Chart.js is a third party plugin that is used to generate the charts in this template. The charts below have been customized - for further customization options, please visit the official -->
							<!--                                 <a target="_blank" href="https://www.chartjs.org/docs/latest/">Chart.js documentation</a> -->

						</div>
					</div>


					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="" width="100%" border='1'
								cellspacing="0">
								<thead>
									<tr>
										<td>조회 날짜
										<td><select>
												<c:forEach var="item" begin="1" end="12" step="1">
													<option value='${item }'>${item }월</option>
												</c:forEach>
										</select> <select>
												<c:forEach var="item" begin="1" end="31" step="1">
													<option value='${item }'>${item }일</option>
												</c:forEach>
										</select>
									</tr>

									<tr>
										<td>조회 구분
										<td><input type='radio' value='일단위구분' name='123'>일단위구분
											<input type='radio' value='주단위구분' name='123'>주단위구분 <input
											type='radio' value='월단위구분' name='123'>월단위구분
									</tr>
								</thead>
							</table>
						</div>
					</div>


					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="" width="100%"
								cellspacing="0">
								<thead>

									<tr>
										<th>시간</th>
										<th>매출액</th>
										<th>매출누계</th>
										<th>주문횟수</th>
										<th>주문누계</th>
										<th>주문평균금액</th>
										<th>시간</th>
										<th>매출액</th>
										<th>매출누계</th>
										<th>주문횟수</th>
										<th>주문누계</th>
										<th>주문평균금액</th>
									</tr>
								</thead>

								<tbody>
									<c:forEach var="item" begin="0" end="11" step="1"
										varStatus="status">
										<tr>
											<td>${item }
											<td>
											<td>
											<td>
											<td>
											<td>
											<td>${item +12}
											<td>
											<td>
											<td>
											<td>
											<td>
										</tr>
									</c:forEach>
								</tbody>

								<tr>
									<td colspan="12">전일 대비율 : xx %
								</tr>



							</table>
						</div>
					</div>




					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area mr-1"></i> 시간별 매출
						</div>
						<div class="card-body">
							<canvas id="myBarChart" width="100%" height="30"></canvas>
						</div>
<!-- 						<div class="card-footer small text-muted">Updated yesterday -->
<!-- 							at 11:59 PM</div> -->
<!-- 					</div> -->

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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/demo/chart-bar-demo.js"></script>

</body>
</html>
