<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="tables" value="/tables"></c:url>

<script>
	$(document).on('click', '#btnSearch', function(e) {
		e.preventDefault();
		var url = "${tables}";
		url = url + "?searchType=" + $('#searchType').val();
		url = url + "&keyword=" + $('#keyword').val();
		location.href =encodeURI( url);
		console.log(url);
	})
</script>




</head>

			<main>
				<div class="container-fluid">
					<h1 class="mt-4">회원관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item active"><a href="tables">회원관리</a></li>
					</ol>

					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 회원관리
						</div>


						<div class="card-body">

							<!-- search{s} -->

							<div  class="row justify-content-center">

								<div style="padding-right: 10px">

									<select name="searchType"
										id="searchType">

										<option value="mem_id">아이디</option>

									
										<option value="mem_email">이메일</option>

										<option value="mem_grade_no">등급</option>

									</select>

								</div>

								<div  style="padding-right: 10px">

									<input type="text" 
										name="keyword" id="keyword" value="${paging.keyword}">

								</div>

								<div>

									<button name="btnSearch"
										id="btnSearch">검색</button>

								</div>

							</div>

							<!-- search{e} -->









							<div class="table-responsive">



								<table class="table table-bordered" id="" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>번호</th>
											<th>등급</th>
											<th>아이디</th>
											<th>이메일</th>
											<th>가입일</th>
										</tr>
									</thead>
									<c:forEach items="${list}" var="board">
										<thead>
											<tr>
												<td>${board.mem_no}</td>
												<td>${board.mem_grade_no}</td>
												<td><a
													href='<c:url value='memberDetail?mem_no=${board.mem_no }'/>'
													class="text-dark">${board.mem_id }</a></td>
												<td>${board.mem_email}</td>
												<td>${board.mem_regdate}</td>

											</tr>
										</thead>
									</c:forEach>
									<tfoot>
										<tr>
											<td colspan="5" id="pageTd">
												<%-- page 처리  --%> <%@include file="../pageProcess.jsp"%>
											</td>
										</tr>
									</tfoot>
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














