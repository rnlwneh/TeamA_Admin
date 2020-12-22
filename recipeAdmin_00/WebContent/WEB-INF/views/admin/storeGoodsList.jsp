<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">스토어 상품 관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="storeGoodsList">스토어
								상품 관리</a></li>
					</ol>
<!-- 					<div class="card mb-4"> -->
						<table class="table table-bordered" id="" width="100%"
									cellspacing="0">
									<thead>
										<tr align='center'>
											<th>판매등록 상품</th>
											<th>판매중인 상품</th>
											<th>품절된 상품</th>
											<th>안보이기 등록 상품</th>
										</tr>
									</thead>
									<tbody>
										<tr align='center'>
											<td>100개</td>
											<td>90개</td>
											<td>10개</td>
											<td>0개</td>
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
									<input type='button' id='addStoreGoods' value='상품추가'>
								</div>
								<div>&nbsp</div>
								
								<table class="table table-bordered" id="goodsList" width="100%" cellspacing="0">
									<thead>
										<tr align='center'>
											<th>상품</th>
											<th>업체명</th>
											<th>재고</th>
											<th>원가</th>
											<th>판매가</th>
										</tr>
									</thead>
									<tbody>
										<tr >
											<td width="15%">
												<a href='productInfo?str_pro_no='>
													<div align="center">
														<img src="${pageContext.request.contextPath}/resources/image/asd123.PNG" width="150px" >
														<div align="center">aaaaaa</div>
													</div>
													
												</a>
											</td>
											<td align='center' style="vertical-align:middle;"><a href='clientDetail?trd_list_no='>이마트</a></td>
											<td align='center' style="vertical-align:middle;">500개</td>
											<td align='center' style="vertical-align:middle;">5000원</td>
											<td align='center' style="vertical-align:middle;">10000원</td>
										</tr>
									</tbody>
								</table>
								
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
		$('#addStoreGoods').click(function(){
			location.href='addStoreGoods'
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
</body>
</html>
