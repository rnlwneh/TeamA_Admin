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
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							관리자 목록
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
											<th></th>
											<th>관리자명</th>
											<th>이메일</th>
											<th>관리 권한</th>
											<th>연락처</th>
											<th>최근 로그인 시간</th>
											<th>최근 로그아웃 시간</th>
											<th>등록 날짜</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items='${adminList }' var='adminList'
											varStatus='status'>
											<tr>
												<td><input type='checkbox' id='adminCheck'> <input
													type='hidden' value='${adminList.ad_no }'></td>
												<td><a href='adminLogDetail?ad_no=${adminList.ad_no }'>${adminList.ad_name }</a></td>
												<td>${adminList.ad_email }</td>
												<td>${adminList.ad_author }</td>
												<td>${adminList.ad_phone }</td>
												<td>${adminList.ad_logintime }</td>
												<td>${adminList.ad_logouttime }</td>
												<td>${adminList.ad_regdate }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div float='right'>
									<input id='delBtn' type='button' value='선택된 관리자 권한삭제'>
								</div>
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
        
        	$(document).ready(function(){
        		$('#delBtn').click(function(){
        			if(confirm("선택된 관리자를 삭제하시겠습니까?")){
        				var adminNo = "";
            			$('#adminCheck:checked').each(function(){
            				adminNo = adminNo +","+$(this).next().val();
            			})
            			adminNo = adminNo.substr(1,);
            			location.href='deleteAdmin?adminNo='+adminNo
        			}else{
        				return;
        			}
        		})
        	})
        
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
