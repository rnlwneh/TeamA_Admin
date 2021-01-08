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
	
	
<script type="text/javascript">
	$(function() {
		var chkObj = document.getElementsByName("RowCheck");
		var rowCnt = chkObj.length;

		$("input[name='allCheck']").click(function() {
			var chk_listArr = $("input[name='RowCheck']");
			for (var i = 0; i < chk_listArr.length; i++) {
				chk_listArr[i].checked = this.checked;
			}
		});
		$("input[name='RowCheck']").click(function() {
			if ($("input[name='RowCheck']:checked").length == rowCnt) {
				$("input[name='allCheck']")[0].checked = true;
			} else {
				$("input[name='allCheck']")[0].checked = false;
			}
		});
	});
	function upgradeValue() {
		var url = "upgrade"; // Controller로 보내고자 하는 URL 
		var valueArr = new Array();
		var list = $("input[name='RowCheck']");
		for (var i = 0; i < list.length; i++) {
			if (list[i].checked) { //선택되어 있으면 배열에 값을 저장함
				valueArr.push(list[i].value);
			}
		}
		if (valueArr.length == 0) {
			alert("선택된 글이 없습니다.");
		} else {
			var chk = confirm("셰프로 업그레이드 하시겠습니까?");
			$.ajax({
				url : url,
				type : 'POST', // GET or POST 방식
				traditional : true,
				data : {
					valueArr : valueArr
				// 보내고자 하는 data 변수 설정
				},
				success : function(jdata) {
					if (jdata = 1) {
						alert("등업 성공");
						location.replace("newChief")
					} else {
						alert("등업 실패");
					}
				}
			});
		}
	}
</script>
</head>


<main>
	<div class="container-fluid">
		<h1 class="mt-4">셰프신청</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="indexA">Necipe</a></li>
			<li class="breadcrumb-item"><a href="newChief">셰프관리</a></li>
		</ol>

		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> 신청 목록
			</div>
			<div class="card-body">

				<div class="table-responsive">



					<!-- main content -->
					<section class="main-content bg-white ">

						<header class="header navbar clearfix bb bg-default pl0">

							<div class="pull-right">
								<div class="btn-group">
									<button type="button" class="btn btn-sm btn-default navbar-btn">
										<i class="ti-angle-left"></i>
									</button>
									<button type="button" class="btn btn-sm btn-default navbar-btn">
										<i class="ti-angle-right"></i>
									</button>
								</div>

								<button type="button" class="btn btn-sm btn-color navbar-btn">
									<i class="ti-settings"></i>
								</button>
							</div>
						</header>

						<!-- content wrapper -->
						<div class="content-wrap bl">




							<div class="wrapper no-p">

								<form name="userForm">
									<div class="table-responsive">
										<div align='right'>
											<input type='button' id='upgradeBtn' value='선택회원승인'
												class="btn btn-outline-info" onclick="upgradeValue();">&nbsp

										</div>
										<br>



										<table class="table table-bordered" id="" width="100%"
											cellspacing="0">
											<thead>
												<tr>
													<td align='center' style="vertical-align: middle" scope="col"><input style="vertical-align: middle" id="allCheck" type="checkbox" name="allCheck"/></td>
													<th scope="col">아이디</th>
													<th scope="col">이메일</th>

													<th scope="col">멤버아이디</th>
													<th scope="col">신청일자</th>

												</tr>
											</thead>
											<c:forEach items="${cAply}" var="cAply">
												<thead>
													<tr>


														<td align='center' style="vertical-align: middle"
															class="checkbox"><input type='checkbox'
															id='RowCheck' name="RowCheck" value="${cAply.mem_email}">
														</td>
														<td class="text_ct">${cAply.mem_id}</td>

														<td class="text_ct">${cAply.mem_email}</td>

														<td class="text_ct"><a
															href='<c:url value='memberDetail?mem_no=${cAply.mem_no }'/>'
															class="text-dark">${cAply.mem_id }</a></td>
														<td class="text_ct">${cAply.chef_regdate}</td>

													</tr>
												</thead>
											</c:forEach>

										</table>


									</div>

								</form>
							</div>
						</div>
					</section>


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

<script
	src="${pageContext.request.contextPath}/resources/vendor/chosen_v1.4.0/chosen.jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/fuelux/pillbox.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/fuelux/spinner.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery.placeholder.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/vendor/fastclick/lib/fastclick.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery_appear/jquery.appear.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.js"></script>





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
</body>
</html>
