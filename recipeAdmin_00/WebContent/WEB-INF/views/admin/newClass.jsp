<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous"></script>

</head>
<body>

	<div class="container-fluid">
		<h1 class="mt-4">클래스관리</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="indexA">Necipe</a></li>
			<li class="breadcrumb-item"><a href="newClass">클래스관리</a></li>
		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> 클라스 목록
			</div>
			<div class="card-body">




				<div id="returnBT"
					style="margin-top: 10px; cursor: pointer; background-color: #aaa; width: 65px;">전체보기</div>




				<form class="newClassForm" action="newClassList" method="post"
					enctype="multipart/form-data">


					 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input
						type="radio" id="admin_app" name="admin_app" value="0"
						data-parsley-required="true" data-parsley-trigger="change"
						checked="checked">승인대기 클라스
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input type="radio"
						id="admin_app" name="admin_app" value="1"
						data-parsley-required="true" data-parsley-trigger="change">승인된
						클라스 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <input type="radio"
						id="admin_app" name="admin_app" value="2"
						data-parsley-required="true" data-parsley-trigger="change">반려된
						클라스 &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
						<button type="submit" class="selectBT">
							<span class="selectBT"></span>보기
						</button>


					



					<div class="table-responsive">
						<table class="table table-bordered" id="" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>번호</th>
									<th>이미지</th>
									<th>클라스명</th>
									<th>멤버아이디</th>
									<th>기간</th>
									<th>처리</th>
								</tr>
							</thead>


							<c:forEach items="${newList}" var="newList">
								<thead>
									<tr>
										<td>${newList.class_no}</td>
										<td width="10%"><a
											href='class_write?class_no=${newList.class_no}'>
												<div align="center">
													<img
														src="${pageContext.request.contextPath}/resources/image/FoodImg/${newList.class_thumbnail}"
														width="100px">

												</div>
										</a></td>



										<td>${newList.class_title}</td>



										<td><a
											href='<c:url value='chiefDetail?mem_no=${newList.mem_no }'/>'
											class="text-dark">${newList.member.mem_id}</a></td>
										<td>${newList.class_period}일</td>
										<td><c:if test="${newList.admin_app == '0'}">승인대기</c:if>
											<c:if test="${newList.admin_app == '1'}">승인</c:if>
											<c:if test="${newList.admin_app == '2'}">보류</c:if></td>


									</tr>
								</thead>
							</c:forEach>



							<c:forEach items="${aplList}" var="aplList">
								<thead>
									<tr>
										<td>${aplList.class_no}</td>
										<td width="10%"><a
											href='class_write?class_no=${aplList.class_no}'>
												<div align="center">
													<img
														src="${pageContext.request.contextPath}/resources/image/FoodImg/${aplList.class_thumbnail}"
														width="100px">

												</div>
										</a></td>



										<td>${aplList.class_title}</td>



										<td><a
											href='<c:url value='chiefDetail?mem_no=${aplList.mem_no }'/>'
											class="text-dark">${aplList.member.mem_id}</a></td>
										<td>${aplList.class_period}일</td>
											<td><c:if test="${aplList.admin_app == '0'}">승인대기</c:if>
											<c:if test="${aplList.admin_app == '1'}">승인</c:if>
											<c:if test="${aplList.admin_app == '2'}">보류</c:if></td>


									</tr>
								</thead>
							</c:forEach>



						</table>

					</div>
				</form>


			</div>
		</div>
	</div>
</body>
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
	$(document).ready(function() {

		$('#returnBT').click(function() {
			location.href = 'newClass';
		})

	});
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
<script
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"
	crossorigin="anonymous"></script>
<script
	src="${pageContext.request.contextPath}/resources/assets/demo/datatables-demo.js"></script>

