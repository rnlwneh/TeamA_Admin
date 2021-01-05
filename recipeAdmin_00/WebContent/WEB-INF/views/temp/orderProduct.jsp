<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

			<main>
				<div class="container-fluid">
					<h1 class="mt-4">발주하기</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="orderProduct">발주하기</a></li>
					</ol>
				</div>

				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table mr-1"></i> 발주상품
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>

									<tr>
										<th>상품이름
										<th>상품사진
										<th>상품가격
										<th>상품수량
									</tr>

								</thead>

								<tbody>
									<c:forEach var="item" begin="1" end="12" step="1">
										<tr>
											<td><a href='productInfo'>aa${item }</a>
											<td>~~
											<td>${(item*2-4)*item }원
											<td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
						</div>
					</div>
				</div>


				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>상품 이름
									<th colspan="7">aa11
								</tr>
								<tr>
									<td>구분\날짜
									<td>11/20
									<td>11/21
									<td>11/22
									<td>11/23
									<td>11/24
									<td>11/25
									<td>11/26
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>발주량
									<td>10
									<td>
									<td>
									<td>
									<td>
									<td>
									<td>
								</tr>

								<tr>
									<td>입고량
									<td>
									<td>10
									<td>
									<td>
									<td>
									<td>
									<td>
								</tr>

								<tr>
									<td>판매량
									<td>1
									<td>2
									<td>3
									<td>
									<td>1
									<td>
									<td>3
								</tr>

								<tr>
									<td>폐기량
									<td>
									<td>
									<td>
									<td>
									<td>1
									<td>
									<td>
								</tr>

								<tr>
									<td>재고
									<td>6
									<td>14
									<td>11
									<td>
									<td>9
									<td>
									<td>6
								</tr>
							</tbody>
						</table>
					</div>
				</div>




			</main>


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
