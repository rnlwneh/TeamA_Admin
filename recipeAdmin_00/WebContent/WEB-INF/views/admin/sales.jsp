<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

	<head>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    	<style>
    		 table.searchTable {
			    width: 400px;
			    margin:auto;
			  }
    	</style>
    </head>

			<main>
				<div class="container-fluid">
					<h1 class="mt-4">매출현황</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="sales">매출 현황</a></li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							일매출 현황
						</div>
					</div>
				</div>


					<table class='searchTable'>
						<tr>
							<td align='right'>
								조회날짜&nbsp&nbsp:
							</td>
							<td>
								<div class="input-group">
									&nbsp&nbsp<input type='text' class="form-control" id='searchDate'>&nbsp<button id='searchBtn' class="btn btn-primary" type="button">검색 <i class="fas fa-search"></i></button>
								</div>
							</td>
						</tr>
					</table>


					<div class="card-body">
						<div class="row">
							<div class="col-lg-6">
								<table class="table table-bordered" id="" width="100%"
									cellspacing="0">
									<thead>
										<tr align='center'>
											<th>시간</th>
											<th>매출액</th>
											<th>매출누계</th>
											<th>주문횟수</th>
											<th>주문누계</th>
											<th>주문평균금액</th>
										</tr>
									</thead>
	
									<tbody>
										<c:forEach var="hh" begin="0" end="11" step="1">
											<c:if test="${hh < 10}">
												<tr align='right'>
													<td align='center'>0${hh }시
													<td id='sales0${hh }'>
													<td id='totSales0${hh }'>
													<td id='ordCnt0${hh }'>
													<td id='totOrdCnt0${hh }'>
													<td id='avgSales0${hh }'>
												</tr>
											</c:if>
											<c:if test="${hh >= 10}">
												<tr align='right'>
													<td align='center'>${hh }시
													<td id='sales${hh }'>
													<td id='totSales${hh }'>
													<td id='ordCnt${hh }'>
													<td id='totOrdCnt${hh }'>
													<td id='avgSales${hh }'>
												</tr>
											</c:if>
										</c:forEach>
									</tbody>
								</table>
							</div>
							
							<div class="col-lg-6">
								<table class="table table-bordered" id="" width="100%"
									cellspacing="0">
									<thead>
										<tr align='center'>
											<th>시간</th>
											<th>매출액</th>
											<th>매출누계</th>
											<th>주문횟수</th>
											<th>주문누계</th>
											<th>주문평균금액</th>
										</tr>
									</thead>
	
									<tbody>
										<c:forEach var="hh" begin="12" end="23" step="1">
											<tr align='right'>
												<td align='center'>${hh }시
												<td id='sales${hh }'>
												<td id='totSales${hh }'>
												<td id='ordCnt${hh }'>
												<td id='totOrdCnt${hh }'>
												<td id='avgSales${hh }'>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
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
			<div id='errr'></div>
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
$(function() {
  $( "#searchDate" ).datepicker({
    dateFormat: 'yy-mm-dd',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    dayNames: ['일','월','화','수','목','금','토'],
    dayNamesShort: ['일','월','화','수','목','금','토'],
    dayNamesMin: ['일','월','화','수','목','금','토'],
    showMonthAfterYear: true,
    yearSuffix: '년'
  });
});

//전역변수 선언
var today = new Date();
var year = today.getFullYear();
var month = today.getMonth() + 1;
var date = today.getDate()
var hour = today.getHours()

function salesAjaxF(searchDate){
	$.ajax({
		url:"searchDate?searchDate="+searchDate
		,success:function(searchDateList){
			$('[id^=sales]').text('');
			$('[id^=ordCnt]').text('');
			$('[id^=totSales]').text('');
			$('[id^=totOrdCnt]').text('');
			$('[id^=avgSales]').text('');
			var totSales = 0;
			var totOrdCnt = 0;
			var tempCnt = 0;
			for(var i=0;i<searchDateList.length;i++){
				var cnt = tempCnt+"";
				if(tempCnt<10){
					cnt = 0+cnt;
				}
				var hh = searchDateList[i]['str_ord_date'].substr(11,2);
				var sales = searchDateList[i]['cost_sum'];
				var ordCnt = searchDateList[i]['ord_cnt'];
				totSales = totSales + parseInt(sales,10);
				totOrdCnt = totOrdCnt + parseInt(ordCnt,10);
				var avgSales = "0"
				if(parseInt(ordCnt,10)!=0){
					avgSales = (parseInt(sales,10)/parseInt(ordCnt,10)).toString();
				}
				
				if(cnt!=hh){
					var realCnt = parseInt(cnt);
					var between = parseInt(hh)-realCnt;
					if(cnt=='00'){
						for(var j=0; j<between; j++){
							var emptyHh = realCnt+j;
							if(emptyHh<10){
								emptyHh = "0"+emptyHh;
							}
							$('#sales'+emptyHh).text(0+"원");
							$('#ordCnt'+emptyHh).text(0+"회");
							$('#totSales'+emptyHh).text(0+"원");
							$('#totOrdCnt'+emptyHh).text(0+"회");
							$('#avgSales'+emptyHh).text(0+"원");
						}
					}else{
						for(var j=0; j<between;j++){
							var emptyHh = realCnt+j;
							if(emptyHh<10){
								emptyHh = "0"+emptyHh;
							}
							$('#sales'+emptyHh).text(0+"원");
							$('#ordCnt'+emptyHh).text(0+"회");
							if((parseInt(emptyHh,10)-1)>=10){
								$('#totSales'+emptyHh).text($('#totSales'+(parseInt(emptyHh,10)-1)).text());
								$('#totOrdCnt'+emptyHh).text($('#totOrdCnt'+(parseInt(emptyHh,10)-1)).text());
							}else{
								$('#totSales'+emptyHh).text($('#totSales0'+(parseInt(emptyHh,10)-1)).text());
								$('#totOrdCnt'+emptyHh).text($('#totOrdCnt0'+(parseInt(emptyHh,10)-1)).text());
							}
							$('#avgSales'+emptyHh).text(0+"원");
						}
					}
					tempCnt = parseInt(hh,10)
				}
				$('#sales'+hh).text(sales+"원");
				$('#ordCnt'+hh).text(ordCnt+"회");
				$('#totSales'+hh).text(totSales+"원");
				$('#totOrdCnt'+hh).text(totOrdCnt+"회");
				$('#avgSales'+hh).text(avgSales+"원");
				tempCnt++
			}		//for(var i=0;i<searchDateList.length;i++){
		}		//,success:function(searchDateList){
		,error : function(request,status,error){
			$('#errr').html("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
		}
	})		//$.ajax({
}		//function salesAjaxF(){

$(document).ready(function(){
	$('#searchDate').val(year+"-"+month+"-"+date)
	var todayDate = $('#searchDate').val();
	salesAjaxF(todayDate);
	$('#searchBtn').click(function(){
		var searchDate = $('#searchDate').val().trim();
		//alert(searchDate);
		salesAjaxF(searchDate);	
	})		
})		

</script>

<!-- 	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" -->
<!-- 		crossorigin="anonymous"></script> -->
	<script src="//code.jquery.com/jquery.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/demo/chart-bar-demo.js"></script>

</body>
</html>
