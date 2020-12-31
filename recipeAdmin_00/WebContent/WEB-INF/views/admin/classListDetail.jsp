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
</head>

<main>
	<div class="container-fluid">
		<h1 class="mt-4">클라스</h1>




		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table mr-1"></i> 클라스 이름{닉넴}
			</div>

			<div class="card-body">


				<section class="panel">

					<div class="panel-body">
						<form role="form" class="parsley-form" data-parsley-validate>

							<div class="row">
								<div class="col-md-6">


									<div style="width: 10%;">
								
											<div class="thumb">
												<img class="img-responsive" alt="Responsive image"
													src="${pageContext.request.contextPath}/resources/image/FoodImg/${classDetail.class_thumbnail}"/>
											</div>
											
									
									</div>








									<div class="form-group">
										<label>클라스번호</label>
										<div>
											<input type="text" class="form-control" name="class_no"
												data-parsley-required="true" data-parsley-trigger="change"
												placeholder=""
												${ classDetail.class_no }"" value="${ classDetail.class_no }">
										</div>
									</div>



									<div class="form-group">
										<label>클라스명</label>
										<div>
											<input type="text" class="form-control" name="class_title"
												data-parsley-required="true" data-parsley-trigger="change"
												placeholder="${ classDetail.class_title }"
												value="${ classDetail.class_title }">
										</div>
									</div>



									<div class="form-group">
										<label>담당회원번호</label>
										<div>
											<input type="text" class="form-control" name="mem_no"
												data-parsley-required="true" data-parsley-trigger="change"
												placeholder="${ classDetail.mem_no }"
												value="${ classDetail.mem_no }">
										</div>
									</div>





									<div class="form-group">
										<label>내용</label>
										<div>
											<input type="text" class="form-control" name="class_content"
												data-parsley-required="true" data-parsley-trigger="change"
												placeholder="${ classDetail.class_content }"
												value="${ classDetail.class_content }">
										</div>
									</div>



									<div class="form-group">
										<label>가격</label>
										<div>
											<input type="text" class="form-control" name="class_price"
												data-parsley-type="email" data-parsley-required="true"
												data-parsley-trigger="change"
												placeholder="${ classDetail.class_price }"
												value="${ classDetail.class_price }">
										</div>

									</div>




								</div>




								<div class="col-md-6">

									<div class="form-group">
										<label>kind_tag_no</label>
										<div>
											<input type="text" class="form-control" name="kind_tag_no"
												data-parsley-type="email" data-parsley-required="true"
												data-parsley-trigger="change"
												placeholder="${ classDetail.kind_tag_no }"
												value="${ classDetail.kind_tag_no }">
										</div>

									</div>





									<section class="panel">


										<strong>클라스승인</strong>
										<div class="alert alert-success">

											<div class="checkbox mr5">
												<label> <input type="checkbox">승인
												</label>
											</div>


										</div>
									</section>


									<br>

								</div>

							</div>
						</form>
					</div>



				</section>
				<div class="col-md-12">
					<div class="demo-button">
						<label></label>
						<div>
							<button type="button" class="btn btn-danger" style="width: 45%;"
								onclick="location.href='chiefManage'">뒤로가기</button>
							<button style="width: 45%;" type="button" class="btn btn-success"
								onclick="location.href='chiefManage'">Save</button>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>

</main>

</div>

</div>


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
	src="${pageContext.request.contextPath}/resources/vendor/jquery/dist/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/chosen_v1.4.0/chosen.jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/fuelux/pillbox.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/fuelux/spinner.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/scripts/form-custom.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery.placeholder.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/switchery/dist/switchery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/fastclick/lib/fastclick.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery_appear/jquery.appear.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.js"></script>





<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	crossorigin="anonymous"></script>
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

