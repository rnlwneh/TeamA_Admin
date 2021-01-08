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
			<li class="breadcrumb-item"><a href="indexA">Necipe</a></li>
			<li class="breadcrumb-item"><a href="clientList">거래처목록</a></li>
			<li class="breadcrumb-item"><a href="clientDetail">거래처관리</a></li>

		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> ${trdDetail.trd_list_name }
			</div>
			<div class="card-body">


				


					<form role="form" class="parsley-form" data-parsley-validate>

						<div class="row">
							<div class="col-lg-6">
								<div class="form-group"><br>
									<label>거래처명</label> <input class="form-control" type="text"
										placeholder="${trdDetail.trd_list_name }">
								</div>
								<div class="form-group">
									<label>담당자</label> <input class="form-control" type="text"
										placeholder="${trdDetail.trd_list_mng_name }">
								</div>
								<div class="form-group">
									<label>담당자 번호</label> <input class="form-control" type="text"
										placeholder="${trdDetail.trd_list_mng_phone }">
								</div>
								<div class="form-group">
									<label>거래시작일</label> <input class="form-control" type="text"
										placeholder="${trdDetail.trd_list_orderdate }">
								</div>



							</div>


							<div class="col-lg-6">

								<section class="panel no-b">
									<div class="panel-heading no-b">
										<h5>Top5 거래품</h5>
									</div>

									<div class="panel-body">

										<table class="table no-m">
											<thead>
												<tr>
													<th>상품명</th>
													<th>판매수량</th>
													<th>판매수익</th>
													<th>수익지분</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${trdDetailInfo }" var="trdDetailInfo">
													<tr>
														<td><a href='storeGoodsDetail?str_pro_no=${trdDetailInfo.str_pro_no }'>${trdDetailInfo.str_pro_name }</a></td>
														<td id="salesCnt">${trdDetailInfo.sum_cnt }</td>
														<td id="salesCost">${trdDetailInfo.sum_cnt*trdDetailInfo.str_pro_primecost }</td>
														<td>${trdDetailInfo.sum_cnt*trdDetailInfo.str_pro_primecost*100/trdTotSell }%
															<div class="progress progress-sm no-m">
																<div class="progress-bar progress-bar-success"
																	role="progressbar" aria-valuemin="0"
																	aria-valuemax="100" style="width: ${trdDetailInfo.sum_cnt*trdDetailInfo.str_pro_primecost*100/trdTotSell }%"></div>
															</div>
														</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</section>
							</div>
						</div>
					</form>
			</div>
		</div>
	</div>
	<br>
<!-- 	<div class="col-md-12"> -->
<!-- 		<div class="demo-button"> -->
<!-- 			<div align='center'> -->
<!-- 				<button type="button" class="btn btn-danger" style="width: 45%;" -->
<!-- 					onclick="location.href='clientList'">정지하기</button>&emsp;&emsp;&emsp;&emsp;&emsp; -->
<!-- 				<button style="width: 45%;" type="button" class="btn btn-success" -->
<!-- 					onclick="location.href='clientList'">Save</button> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
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

<script>
	
	//숫자 3개마다 ,를 집어넣음 num:숫자문자
	function commaNum( num ){
		var arr = [];
		var numStr = ""
		for(var i = num.length-1; i >= 0; i = i-3){
			if(i > 2){
				arr.push( num.substr(i-2, 3) )
			}
			else{
				arr.push( num.substr(0,i+1) )
			}
		}
		arr.reverse();
		numStr =  arr.join(",");
		return numStr;
	}
	
	$(document).ready(function(){
		$('[id^=salesCnt]').each(function(){
			$(this).text(commaNum($(this).text())+"개");
		})
		$('[id^=salesCost]').each(function(){
			$(this).text(commaNum($(this).text())+"원");
		})
	})
	
</script>


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
<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
<script
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
	crossorigin="anonymous"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/demo/datatables-demo.js"></script>

