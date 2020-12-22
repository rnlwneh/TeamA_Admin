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
					<h1 class="mt-4">거래처관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="clientList">거래처목록</a></li>
						<li class="breadcrumb-item"><a href="clientDetail">거래처관리</a></li>

					</ol>

					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> {이름}거래처
						</div>
						<div class="card-body">


							<section class="panel">


								<form role="form" class="parsley-form" data-parsley-validate>

									<div class="row">
										<div class="col-lg-12">

											<div class="form-group">
												<label>거래처번호</label> <input class="form-control" type="text"
													placeholder="1" disabled="">

											</div>



											<div class="form-group">
												<label>거래처명</label> <input class="form-control" type="text"
													placeholder="싱싱과일" disabled="">

											</div>

											<div class="form-group">
												<label>거래시작연도</label> <input class="form-control"
													type="text" placeholder="2010.03.23" disabled="">

											</div>



										</div>



										<div class="col-lg-12">

											<section class="panel no-b">
												<div class="panel-heading no-b">
													<h5>Top5 거래품</h5>
												</div>

												<div class="panel-body">

													<table class="table no-m">
														<thead>
															<tr>
																<th class="col-md-2">상품명</th>
																<th class="col-md-2">수량</th>
																<th class="col-md-2">돈</th>
																<th class="col-md-2">%</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td><span class="pd-l-sm"></span>사과</td>
																<td>200</td>
																<td>573000</td>
																<td>
																	<div class="progress progress-sm no-m">
																		<div class="progress-bar progress-bar-success"
																			role="progressbar" aria-valuenow="40"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: 40%">
																			<span class="sr-only">40% Complete (success)</span>
																		</div>
																	</div>
																</td>
															</tr>
															<tr>
																<td><span class="pd-l-sm"></span>배</td>
																<td>78</td>
																<td>1,1380</td>
																<td>
																	<div class="progress progress-sm no-m">
																		<div class="progress-bar progress-bar-danger"
																			role="progressbar" aria-valuenow="23"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: 23%">
																			<span class="sr-only">23% Complete (success)</span>
																		</div>
																	</div>
																</td>
															</tr>
															<tr>
																<td><span class="pd-l-sm"></span>복숭아</td>
																<td>89</td>
																<td>488000</td>
																<td>
																	<div class="progress progress-sm no-m">
																		<div class="progress-bar" role="progressbar"
																			aria-valuenow="78" aria-valuemin="0"
																			aria-valuemax="100" style="width: 78%">
																			<span class="sr-only">78% Complete (success)</span>
																		</div>
																	</div>
																</td>
															</tr>
															<tr>
																<td><span class="pd-l-sm"></span>포도</td>
																<td>100</td>
																<td>1,29000</td>
																<td>
																	<div
																		class="progress progress-sm progress-striped active no-m">
																		<div class="progress-bar progress-bar-success"
																			role="progressbar" aria-valuenow="56"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: 56%">
																			<span class="sr-only">56% Complete (success)</span>
																		</div>
																	</div>
																</td>
															</tr>
															<tr>
																<td><span class="pd-l-sm"></span>귤</td>
																<td>50</td>
																<td>47800</td>
																<td>
																	<div class="progress progress-sm progress-striped no-m">
																		<div class="progress-bar progress-bar-warning"
																			role="progressbar" aria-valuenow="49"
																			aria-valuemin="0" aria-valuemax="100"
																			style="width: 49%">
																			<span class="sr-only">49% Complete (success)</span>
																		</div>
																	</div>
																</td>
															</tr>

														</tbody>
													</table>
												</div>
											</section>

										</div>







										<br>

									</div>
								</form>








								<div class="col-sm-12 mb25">
									<h5>
										Flot <b>Charts</b> - Line
									</h5>
									<div>
										<div id="line-chart" class="chart"
											style="padding: 0px; position: relative;">
											<canvas class="flot-base" width="913" height="300"
												style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 609px; height: 200px;">
</canvas>
											<div class="flot-text"
												style="position: absolute; inset: 0px; font-size: smaller; color: rgb(84, 84, 84);">
												<div class="flot-x-axis flot-x1-axis xAxis x1Axis"
													style="position: relative; inset: 0px; display: block;">
													<div class="flot-tick-label tickLabel"
														style="position: absolute; max-width: 110px; top: 184px; left: 14px; text-align: center;">0</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; max-width: 110px; top: 184px; left: 87px; text-align: center;">2</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; max-width: 110px; top: 184px; left: 160px; text-align: center;">4</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; max-width: 110px; top: 184px; left: 233px; text-align: center;">6</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; max-width: 110px; top: 184px; left: 306px; text-align: center;">8</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; max-width: 110px; top: 184px; left: 376px; text-align: center;">10</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; max-width: 110px; top: 184px; left: 449px; text-align: center;">12</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; max-width: 110px; top: 184px; left: 522px; text-align: center;">14</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; max-width: 110px; top: 184px; left: 595px; text-align: center;">16</div>
												</div>
												<div class="flot-y-axis flot-y1-axis yAxis y1Axis"
													style="position: absolute; inset: 0px; display: block;">
													<div class="flot-tick-label tickLabel"
														style="position: absolute; top: 171px; left: 6px; text-align: right;">0</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; top: 128px; left: 6px; text-align: right;">5</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; top: 86px; left: 0px; text-align: right;">10</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; top: 43px; left: 0px; text-align: right;">15</div>
													<div class="flot-tick-label tickLabel"
														style="position: absolute; top: 0px; left: 0px; text-align: right;">20</div>
												</div>
											</div>
											<canvas class="flot-overlay" width="913" height="300"
												style="direction: ltr; position: relative; left: 0px; top: 0px; width: 609px; height: 200px;">
</canvas>
										</div>
									</div>






								</div>



							</section>
							<br>
							<div class="col-md-12">
								<div class="demo-button">
									<label></label>
									<div>
										<button type="button" class="btn btn-danger"
											style="width: 45%;" onclick="location.href='clientList'">정지하기</button>
										<button style="width: 45%;" type="button"
											class="btn btn-success" onclick="location.href='clientList'">Save</button>
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
	<script
		src="${pageContext.request.contextPath}/resources/vendor/slimScroll/jquery.slimscroll.js"></script>




	<script
		src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.categories.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.time.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/flot.orderbars/js/jquery.flot.orderBars.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/flot/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery.sparkline.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery.easy-pie-chart/dist/jquery.easypiechart.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/raphael/raphael-min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/morris.js/morris.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/Chart.js/Chart.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.js"></script>






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

