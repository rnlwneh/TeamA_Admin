<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


			<main>
				<div class="container-fluid">
					<h1 class="mt-4">고객배송정보</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
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
						<table class="table table-bordered" id="" width="100%"
							cellspacing="0">
							<tr>
								<td align='center'>배송상태</td>
								<td>
									<label for='status'><input type='radio' id='status' name='aa' value='전체'>전체</label>&nbsp&nbsp
									<label for='status2'><input type='radio' id='status2' name='aa' value='결제확인중'>결제확인중</label> &nbsp&nbsp
									<label for='status3'><input type='radio' id='status3' name='aa' value='배송중'>배송중</label> &nbsp&nbsp
									<label for='status4'><input type='radio' id='status4' name='aa' value='배송완료'>배송완료</label> &nbsp&nbsp
									<label for='status5'><input type='radio' id='status5' name='aa' value='주문취소'>주문취소</label> 
								</td>
							</tr>
							<tr>
								<td align='center'>회원명</td>
								<td><input type='text'></td>
							</tr>
							<tr>
								<td align='center'>상품명</td>
								<td><input type='text'></td>
							</tr>
							<tr>
								<td align='center'>결제수단</td>
								<td><input type='text'></td>
							</tr>
						</table>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>배송번호</th>
											<th>회원명</th>
											<th>상품사진</th>
											<th>상품명</th>
											<th>상품수량</th>
											<th>상품가격</th>
											<th>결제수단</th>
											<th>배송지</th>
											<th>배송상태</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>098765467643</td>
											<td>ㅎㅇ</td>
											<td></td>
											<td>맛있는고기</td>
											<td>2</td>
											<td>18000원</td>
											<td>카드</td>
											<td>서울시 가디</td>
											<td>결제확인중</td>
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
		src="${pageContext.request.contextPath}/resources/js/datatables-demo.js"></script>
</body>
</html>
