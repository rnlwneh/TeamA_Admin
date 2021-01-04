<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

			<main>
				<div class="container-fluid">
					<h1 class="mt-4">발주조회</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="orderList">발주조회</a></li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							<!--                                 DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the -->
							<!--                                 <a target="_blank" href="https://datatables.net/">official DataTables documentation</a> -->
							<!--                                 . -->
						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 조회 날짜 <select>
								<c:forEach var="item" begin="2015" end="2020" step="1">
									<option value='${item }'>${item }년</option>
								</c:forEach>
							</select> <select>
								<c:forEach var="item" begin="1" end="12" step="1">
									<option value='${item }'>${item }월</option>
								</c:forEach>
							</select> <select>
								<c:forEach var="item" begin="1" end="31" step="1">
									<option value='${item }'>${item }일</option>
								</c:forEach>
							</select> <input type='button' value='조회'>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="" width="100%"
									cellspacing="0">

									<thead>
										<tr>
											<th>상품이름</th>
											<th>상품사진</th>
											<th>납품업체명</th>
											<th>원가</th>
											<th>매매가</th>
											<th>상품수량</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>고기</td>
											<td></td>
											<td>이마트</td>
											<td>1500</td>
											<td>2500</td>
											<td>50</td>
										</tr>
									</tbody>

								</table>
							</div>


							<table class="" id="" width='200px' cellspacing="0">
								<tr>
									<td>총 상품수량</td>
									<td>zzz개</td>
								</tr>
								<tr>
									<td>총 원가</td>
									<td>xxxx원</td>
								</tr>
								<tr>
									<td>총 매매가</td>
									<td>yyyy원</td>
								</tr>
							</table>


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
