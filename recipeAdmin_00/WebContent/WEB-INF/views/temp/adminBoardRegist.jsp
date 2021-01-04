<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


	<main>
		<div class="container-fluid">
			<h1 class="mt-4">신고된 글 관리</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
				<li class="breadcrumb-item"><a href="adminBoardRegist">신고된
						글 관리</a></li>
			</ol>
			<div class="card mb-4">
				<div class="card-body">
					신고된 게시글 목록입니다
					<!--                                 <a target="_blank" href="https://datatables.net/">official DataTables documentation</a> -->

				</div>
			</div>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> 신고된 게시글
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th></th>
									<th>작성자</th>
									<th>신고자</th>
									<th>게시글 카데고리</th>
									<th>게시글 제목</th>
									<th>신고 내용</th>
									<th>해당 게시물 누적 신고 횟수</th>
									<th>신고 날짜</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><input type='checkbox'></td>
									<td><a href=''>쓰레기</a></td>
									<td><a href=''>청소부</a></td>
									<td>나만의 레시피</td>
									<td><a href=''>똥맛 쿠키 만드는법</a></td>
									<td>비위가 상하네요</td>
									<td>132</td>
									<td>20-11-21</td>
								</tr>

							</tbody>
						</table>
						<div float='right'>
							<input type='button' value='선택된 게시물 삭제'>
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
