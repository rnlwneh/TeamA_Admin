<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

	<head>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>

		<script src="https://d3js.org/d3.v3.min.js"></script>     		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
		
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
						<div id="myBarChart"></div>
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

//datepicker 한글변환
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


function salesAjaxF(searchDate){
	$.ajax({
		url:"searchDate?searchDate="+searchDate
		,success:function(searchDateList){
			var totSales = 0;
			var totOrdCnt = 0;
			var list=['매출액'];
			var list2=['주문수'];
			for(var i=0;i<searchDateList.length;i++){
				var hh = searchDateList[i]['str_ord_date'].substr(11,2);
				var sales = searchDateList[i]['cost_sum'];
				var ordCnt = searchDateList[i]['ord_cnt'];
				list.push(sales)
				list2.push(ordCnt)
				totSales = totSales + parseInt(sales,10);
				totOrdCnt = totOrdCnt + parseInt(ordCnt,10);
				var avgSales = "0"
				if(parseInt(ordCnt,10)!=0){
					avgSales = (parseInt(sales,10)/parseInt(ordCnt,10)).toString();
				}
				
				$('#sales'+hh).text(commaNum(sales)+"원");
				$('#ordCnt'+hh).text(commaNum(ordCnt)+"회");
				$('#totSales'+hh).text(commaNum(totSales+"")+"원");
				$('#totOrdCnt'+hh).text(commaNum(totOrdCnt+"")+"회");
				$('#avgSales'+hh).text(commaNum(avgSales)+"원");
			}		//for(var i=0;i<searchDateList.length;i++){
			//alert(list)
			
			//그래프
			var chart = c3.generate({
			    bindto: '#myBarChart',
			    data: {
			      columns: [
			       	list,
			        list2
			      ],
			      axes: {
			    	매출액: 'y2'
			      },
			      types: {
			    	매출액: 'bar'
			      }
			    },
			    axis: {
			      y: {
			        label: {
			          text: '주문횟수(회)',
			          position: 'outer-middle'
			        },
			        tick: {
			          format: d3.format(",회") // ADD
			        }
			      },
			      y2: {
			        show: true,
			        label: {
			          text: '매출액(원)',
			          position: 'outer-middle'
			        },
			        tick: {
			          format: d3.format(",원") // ADD
			        }
			      }
			    }
			});		//var chart = c3.generate({
	
		}		//,success:function(searchDateList){
		,error : function(request,status,error){
			$('#errr').html("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
		}
	})		//$.ajax({
}		//function salesAjaxF(){
	

	
//전역변수 선언
var today = new Date();
var year = today.getFullYear();
var month = today.getMonth() + 1;
var date = today.getDate()

$(document).ready(function(){
	if(parseInt(month) < 10){
		month = "0"+month;
	}
	if(parseInt(date) < 10){
		date = "0"+date;
	}
	$('#searchDate').val(year+"-"+month+"-"+date)
	var todayDate = $('#searchDate').val();
	//오늘 날짜로 실행
	salesAjaxF(todayDate);
	$('#searchBtn').click(function(){
		$('[id^=sales]').text('');
		$('[id^=ordCnt]').text('');
		$('[id^=totSales]').text('');
		$('[id^=totOrdCnt]').text('');
		$('[id^=avgSales]').text('');
		var searchDate = $('#searchDate').val().trim();
		//alert(searchDate);
		//검색날짜로 실행
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

</body>
</html>
