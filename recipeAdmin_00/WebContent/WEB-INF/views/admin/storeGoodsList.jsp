<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    
    <head>
    	<style>
    		 table.searchTable {
			    width: 400px;
			    margin:auto;
			  }
    	</style>
    </head>
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">스토어 상품 관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Necipe</a></li>
						<li class="breadcrumb-item"><a href="storeGoodsList">스토어
								상품 관리</a></li>
					</ol>
<!-- 					<div class="card mb-4"> -->
						<table class="table table-bordered" id="" width="100%"
									cellspacing="0">
									<thead>
										<tr align='center'>
											<th>전체 상품</th>
											<th>판매중인 상품</th>
											<th>품절된 상품</th>
											<th>등록보류 상품</th>
										</tr>
									</thead>
									<tbody>
										<tr align='center'>
											<td>${storeInfo.totcnt }개</td>
											<td>${storeInfo.sellcnt }개</td>
											<td>${storeInfo.soldout }개</td>
											<td>${storeInfo.wait }개</td>
										</tr>
									</tbody>
								</table>
								<div>&nbsp</div>
<!-- 					</div> -->
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 상품 현황
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<div align='right'>
									<input type='button' id='deleteBtn' value='선택상품삭제'>&nbsp
									<input type='button' id='addStoreGoods' value='상품추가'>
								</div>
								<div>&nbsp</div>
								<table class='searchTable'>
									<tr>
										<td colspan="2" align='center'>
											상품상태&nbsp&nbsp:&nbsp&nbsp
												<select id='searchStatus'>
													<option value=''>전체상품
													<option value='0'>판매보류 상품
													<option value='1'>판매중인 상품
													<option value='2'>품절된 상품
												</select>
											&nbsp&nbsp업체명&nbsp&nbsp:&nbsp&nbsp
												<select id='searchTrdList'>
														<option value=''>모든업체
													<c:forEach items="${trdListName }" var='trdListName'>
														<option value='${trdListName.trd_list_no }'>${trdListName.trd_list_name }
													</c:forEach>
												</select>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div>&nbsp</div>
										</td>
									</tr>
									<tr>
										<td align='right'>
											상품명&nbsp&nbsp:
										</td>
										<td>
											<div class="input-group">
												&nbsp&nbsp<input type='text' class="form-control" id='searchProName'>&nbsp<button id='searchBtn' class="btn btn-primary" type="button">검색 <i class="fas fa-search"></i></button>
											</div>
										</td>
									</tr>
								</table>

								<div>&nbsp</div>
								<div align='center'>총 ${total }개의 검색 결과가 있습니다.</div>
								
								<div>&nbsp</div>
								<table class="table table-bordered" id="goodsList" width="100%" cellspacing="0">
									<thead>
										<tr align='center'>
											<th></th>
											<th>상품</th>
											<th>업체명</th>
											<th>재고</th>
											<th>원가</th>
											<th>판매가</th>
											<th>상태</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${goodsList }" var='goodsList'>
											<tr>
												<td align='center' style="vertical-align:middle"><input type='checkbox' id='proCheck'><input type='hidden' value='${goodsList.str_pro_no }'></td>
												<td width="15%">
													<a href='storeGoodsDetail?str_pro_no=${goodsList.str_pro_no }'>
														<div align="center">
															<img src="${pageContext.request.contextPath}/resources/image/${goodsList.str_pro_image}" width="100px" >
															<div align="center">${goodsList.str_pro_name }</div>
														</div>
													</a>
												</td>
												<td align='center' style="vertical-align:middle;"><a href='clientDetail?trd_list_no=${goodsList.trd_list_no }'>${goodsList.tradeListDTO.trd_list_name }</a></td>
												<td align='center' style="vertical-align:middle;" id='goodsCnt'>${goodsList.str_pro_remind }</td>
												<td align='center' style="vertical-align:middle;" id='goodsPrime'>${goodsList.str_pro_primecost }</td>
												<td align='center' style="vertical-align:middle;" id='goodsSales'>${goodsList.str_pro_salescost }</td>
												<td align='center' style="vertical-align:middle;">
													<c:set var="show" value="${goodsList.str_pro_show }" />
													<c:set var="remind" value="${goodsList.str_pro_remind }" />
													<c:choose>
														<c:when test="${remind eq 0 }">
															품절
														</c:when>
														<c:when test="${show eq 0 }">
															판매보류
														</c:when>
														<c:when test="${show eq 1 }">
															판매중
														</c:when>
														<c:otherwise>
															
														</c:otherwise>
													</c:choose>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div><%@include file="../strProPageProcess.jsp"%></div>
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

	<div id='errr'></div>
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
			
			$('[id^=goodsCnt]').each(function(){
				$(this).text(commaNum($(this).text())+"개")
			})
			$('[id^=goodsPrime]').each(function(){
				$(this).text(commaNum($(this).text())+"원")
			})
			$('[id^=goodsSales]').each(function(){
				$(this).text(commaNum($(this).text())+"원")
			})
			
			$('#addStoreGoods').click(function(){
				location.href='addStoreGoods'
			})
			
			$('#deleteBtn').click(function(){
				if(confirm("정말 삭제하시겠습니까?")){
					var no = "";
					$('#proCheck:checked').each(function(){
						no = no+","+$(this).next().val();
					})
					no = no.substr(1,);
					$.ajax({
						url:"deleteProduct"
						,data:{no:no}
						,success:function(){
							alert("삭제가 완료되었습니다.")
							location.href="storeGoodsList"
						}
						,error : function(request,status,error){
							$('#errr').html("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
						}
					})
				}
			})
			
			$('#searchBtn').click(function(){
				var searchProName = $('#searchProName').val().trim();
				var searchTrdList = $('#searchTrdList').val();
				var searchStatus = $('#searchStatus').val();
				var url = "storeGoodsList?searchProName="+searchProName+"&searchTrdList="+searchTrdList+"&searchStatus="+searchStatus
				
				location.href=url;
			})
		})
		
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
