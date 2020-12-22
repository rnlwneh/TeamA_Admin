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
					<h1 class="mt-4">셰프신청</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
						<li class="breadcrumb-item"><a href="chiefManage">셰프관리</a></li>
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
										<p class="navbar-text">신청</p>
										<div class="pull-right">
											<div class="btn-group">
												<button type="button"
													class="btn btn-sm btn-default navbar-btn">
													<i class="ti-angle-left"></i>
												</button>
												<button type="button"
													class="btn btn-sm btn-default navbar-btn">
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
            <ul class="list-group mail-list">
              <li class="list-group-item">
                <a href="chiefDetail">
                  <span class="show">
                  
                  
                  
                  
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">나는야</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="chiefDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.26</small>
                                        <strong class="text-uppercase">뮹</strong>
                                    </span>
      
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="chiefDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">ㅇㅇ</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="chiefDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">ㅁㅁ</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="chiefDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">ㅁㅁ</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="chiefDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">ㅁㅁ</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
            </ul>
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
</body>
</html>
