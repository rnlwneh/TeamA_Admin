<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

			<main>
				<div class="container-fluid">
					<h1 class="mt-4">관리자 목록</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Necipe</a></li>
						<li class="breadcrumb-item"><a href="adminList">관리자 목록</a></li>
						<li class="breadcrumb-item"><a href="adminList">관리자 로그내역</a></li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							관리자 로그인/로그아웃 내역
							<!--                                 <a target="_blank" href="https://datatables.net/">official DataTables documentation</a> -->

						</div>
					</div>
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table mr-1"></i> 관리자 목록
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="" width="100%"
									cellspacing="0">
									<thead>
										<tr>
											<th>일시</th>
											<th>상태</th>
											<th>결과</th>
											<th>아이피</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items='${adLogDetail }' var='adLogDetail'>
											<tr>
												<td>${adLogDetail.log_logtime }</td>
												<td>${adLogDetail.log_status }</td>
												<td>
													<c:if test="${adLogDetail.log_login_fl eq 'n'}">
														<font color='red'>실패</font>
													</c:if>
													<c:if test="${adLogDetail.log_login_fl eq 'y'}">
														성공
													</c:if>
												</td>
												<td>${adLogDetail.log_reip }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div><%@include file="../loginLogPageProcess.jsp"%></div>
							</div>
						</div>
					</div>
				</div>
			</main>
			<!--                 <footer class="py-4 bg-light mt-auto"> -->
			<!--                     <div class="container-fluid"> -->
			<!--                         <div class="d-flex align-items-center justify-content-between small"> -->
			<!--                             <div class="text-muted">Copyright &copy; Your Website 2020</div> -->
			<!--                             <div> -->
			<!--                                 <a href="#">Privacy Policy</a> -->
			<!--                                 &middot; -->
			<!--                                 <a href="#">Terms &amp; Conditions</a> -->
			<!--                             </div> -->
			<!--                         </div> -->
			<!--                     </div> -->
			<!--                 </footer> -->



	<script>
        

        
    </script>


	<!--         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script> -->
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
