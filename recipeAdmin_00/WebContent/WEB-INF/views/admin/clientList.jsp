<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<h1 class="mt-4">거래처목록</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item active"><a href="tables">거래처목록</a></li>
					</ol>

					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 거래처목록
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<div align='right'>
<!-- 									<input type='button' id='deleteBtn' value='선택상품삭제'>&nbsp -->
									<input type='button' id='addClientList' value='거래처추가'>
								</div>
								<div>&nbsp</div>
								<div class="table-responsive">
									<table class="table table-bordered">
										<tr>
											<th>거래처명</th>
											<th>거래처 담당자</th>
											<th>담당자 번호</th>
											<th>발주요일</th>
											<th>납품요일</th>
										</tr>
										
										<c:forEach items="${trdList }" var="trdList">
											<tr style="cursor: pointer" id='detailTrdList$'>
												<td>${trdList.trd_list_name }</td>
												<input type='hidden' id='trdListNo' value='${trdList.trd_list_no }'>
												<td>${trdList.trd_list_mng_name }</td>
												<td>${trdList.trd_list_mng_phone }</td>
												<td>${trdList.trd_list_orderdate }</td>
												<td>${trdList.trd_list_receivedate }</td>
											</tr>
										</c:forEach>
										
									</table>
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

	
	<script>
		$('[id^=detailTrdList]').click(function(){
			var idx = $('[id^=detailTrdList]').index($(this));
			var trdListNo = $('[id=trdListNo]').eq(idx).val();
			//alert(trdListNo)
			location.href='clientDetail?trd_list_no='+trdListNo;
		})
		$('#addClientList').click(function(){
			
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
		src="${pageContext.request.contextPath}/resources/assets/demo/datatables-demo.js"></script>

