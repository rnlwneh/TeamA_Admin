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
		    width: 580px;
		    margin:auto;
		  }
   	</style>
</head>


			<main>
				<div class="container-fluid">
					<h1 class="mt-4">고객배송정보</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Necipe</a></li>
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
						<div>&nbsp</div>
								<table class='searchTable'>
									<tr>
										<td colspan="2" align='center'>
											회원명&nbsp&nbsp:&nbsp&nbsp
												<input type='text' id='mem_name'>&nbsp&nbsp&nbsp&nbsp
											&nbsp&nbsp상품명&nbsp&nbsp:&nbsp&nbsp
												<input type='text' id='str_pro_name'>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div>&nbsp</div>
										</td>
									</tr>
									<tr>
										<td align='right'>
											조회기간&nbsp&nbsp:
										</td>
										<td>
											&nbsp&nbsp<input type='text' class="startSearchDate" id='startSearchDate'> 
											&nbsp~&nbsp <input type='text' class="" id='endSearchDate'>
											&nbsp<button id='searchBtn' class="btn btn-primary" type="button">검색 <i class="fas fa-search"></i></button>
										</td>
									</tr>
								</table>

								<div>&nbsp</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="" width="100%"
									cellspacing="0">
									<thead>
										<tr align='center'>
											<th>회원명</th>
											<th>주문상품</th>
											<th>상품수량</th>
											<th>상품가격</th>
											<th>배송지</th>
											<th>주문날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="storeOrderList" items="${storeOrderList }">
											<tr align='center'>
												<td style="vertical-align:middle;"><a href='memberDetail?mem_no=${storeOrderList.recipeMemberDTO.mem_no }'>${storeOrderList.recipeMemberDTO.mem_name }</a></td>
												<td width="15%">
													<a href='storeGoodsDetail?str_pro_no=${storeOrderList.storeProductDTO.str_pro_no }'>
														<div align="center">
															<img src="${pageContext.request.contextPath}/resources/image/${storeOrderList.storeProductDTO.str_pro_image}" width="100px" >
															<div align="center">${storeOrderList.storeProductDTO.str_pro_name }</div>
														</div>
													</a>
												</td>
												<td style="vertical-align:middle;" id='ordCnt'>${storeOrderList.str_ord_cnt }</td>
												<td style="vertical-align:middle;" id='ordCost'>${storeOrderList.str_ord_cnt * storeOrderList.storeProductDTO.str_pro_primecost }</td>
												<td style="vertical-align:middle;">${storeOrderList.str_ord_addr }</td>
												<td style="vertical-align:middle;">${storeOrderList.str_ord_date }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div><%@include file="../memberOrderListPageProcess.jsp"%></div>
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

<script>
//datepicker 한글변환
$(function() {
  $( "#startSearchDate, #endSearchDate" ).datepicker({
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

$(document).ready(function(){
	
	$('[id^=ordCnt]').each(function(){
		$(this).text(commaNum($(this).text())+"개")
	})
	
	$('[id^=ordCost]').each(function(){
		$(this).text(commaNum($(this).text())+"원")
	})
	
	$('#searchBtn').click(function(){
		var startSearchDate = $('#startSearchDate').val().trim();
		var endSearchDate = $('#endSearchDate').val().trim();
		var mem_name = $('#mem_name').val().trim();
		var str_pro_name = $('#str_pro_name').val().trim();
		//alert(startSearchDate+"/////"+endSearchDate+"/////"+mem_name+"/////"+str_pro_name);
		var url = "memberOrderList?startSearchDate="+startSearchDate+"&endSearchDate="+endSearchDate+"&mem_name="+mem_name+"&str_pro_name="+str_pro_name;
		location.href=url;	
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
