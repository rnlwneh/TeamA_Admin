<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>셰프 신청 관리</title>
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
            <style>
      table {
        width: 100%;
      }
      table, th, td {
        border: 1px solid #bcbcbc;
      }
    </style>
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="indexA">Recipe</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#">목록 숨기기<i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
<!--                 <div class="input-group"> -->
<!--                     <input class="form-control" type="text" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" /> -->
<!--                     <div class="input-group-append"> -->
<!--                         <button class="btn btn-primary" type="button"><i class="fas fa-search"></i></button> -->
<!--                     </div> -->
<!--                 </div> -->
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
<!--                         <a class="dropdown-item" href="#">Settings</a> -->
<!--                         <a class="dropdown-item" href="#">Activity Log</a> -->
<!--                         <div class="dropdown-divider"></div> -->
                        <a class="dropdown-item" href="login">로그아웃</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
<!--                             <div class="sb-sidenav-menu-heading">Core</div> -->
                            <a class="nav-link" href="indexA">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                메인
                            </a>
                            
                            
                            
                            <div class="sb-sidenav-menu-heading">일정 관리</div>
                            	<nav class="sb-sidenav-menu-nested nav">
									<a href='adminSchedule2'><font size='2' color='gray'>달력</font></a>
                           		</nav>
                            
                            
                            
                            
                            <div class="sb-sidenav-menu-heading">사이트 관리</div>
                            	<nav class="sb-sidenav-menu-nested nav">
									<a href='adminBoardRegist'><font size='2' color='gray'>신고된 글 관리</font></a>
                           		</nav>
                           		<nav class="sb-sidenav-menu-nested nav">
									<a href=''><font size='2' color='gray'>사이트 카테고리 관리</font></a>
                           		</nav>
                            
                            
                            
                            
                            
                            <div class="sb-sidenav-menu-heading">스토어 관리</div>
                            	<nav class="sb-sidenav-menu-nested nav">
									<a href='orderProduct'><font size='2' color='gray'>발주하기</font></a>
                           		</nav>
                            	<nav class="sb-sidenav-menu-nested nav">
									<a href='orderList'><font size='2' color='gray'>발주조회</font></a>
                           		</nav>
                        		<nav class="sb-sidenav-menu-nested nav">
									<a href='sales'><font size='2' color='gray'>매출 현황</font></a>
                           		</nav>
                           		<nav class="sb-sidenav-menu-nested nav">
									<a href='salesAnalysis'><font size='2' color='gray'>매출 분석</font></a>
                           		</nav>
                           		<nav class="sb-sidenav-menu-nested nav">
                           			<a href='clientList'><font size='2' color='gray'>거래처목록</font></a>
                                </nav>
                           		<nav class="sb-sidenav-menu-nested nav">
									<a href=''><font size='2' color='gray'>스토어 재고 현황</font></a>
                           		</nav>
                           		<nav class="sb-sidenav-menu-nested nav">
									<a href='storeGoodsList'><font size='2' color='gray'>스토어 상품 관리</font></a>
                           		</nav>
                           		<nav class="sb-sidenav-menu-nested nav">
									<a href='memberOrderList'><font size='2' color='gray'>고객 주문 관리</font></a>
                           		</nav>
                           
                           
                           
                            <div class="sb-sidenav-menu-heading">회원관리</div>
                            	<nav class="sb-sidenav-menu-nested nav">
									<a href='newChief'><font size='2' color='white'>셰프 신청 관리</font></a>
                           		</nav>
                           		 <nav class="sb-sidenav-menu-nested nav">
                           			<a href='tables'><font size='2' color='gray'>회원관리</font></a>
                                 </nav>
                                 <nav class="sb-sidenav-menu-nested nav">
                           			<a href='chiefManage'><font size='2' color='gray'>셰프관리</font></a>
                                 </nav>
                           		
                            
                            <div class="sb-sidenav-menu-heading">관리자</div>
                            	<nav class="sb-sidenav-menu-nested nav">
									<a href='adminList'><font size='2' color='gray'>관리자 목록</font></a>
                           		</nav>
                            	<nav class="sb-sidenav-menu-nested nav">
									<a href='register'><font size='2' color='gray'>관리자 추가하기</font></a>
                           		</nav>
                            
                            
                            
                            
                            
                            
                        </div>
                    </div>
<!--                     <div class="sb-sidenav-footer"> -->
<!--                         <div class="small">Logged in as:</div> -->
<!--                         Start Bootstrap -->
<!--                     </div> -->
                </nav>
            </div>
            
            <!-- 공통사항 -->
            
            
            
            
            
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">셰프신청</h1>
                        <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
                         <li class="breadcrumb-item"><a href="chiefManage">셰프관리</a></li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                신청 목록
                            </div>
                            <div class="card-body">
                        
                                <div class="table-responsive">
                                   
                                   
                                   
                                 <!-- main content -->
      <section class="main-content bg-white ">

        <header class="header navbar clearfix bb bg-default pl0">
          <p class="navbar-text">신청</p>
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

          <!-- inner content wrapper -->
          <div class="wrapper no-p">
            <ul class="list-group mail-list">
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                  
                  
                  
                  
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">나는야</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.26</small>
                                        <strong class="text-uppercase">뮹</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~.</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.28</small>
                                        <strong class="text-uppercase">꾸가가</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">먀먀마ㅏ아</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">캬캬캬</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">ㄹㅁ절ㄴ</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">밥</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">ㅇㅇ</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">ㅁㅁ</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">ㅁㅁ</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
              <li class="list-group-item">
                <a href="memberDetail">
                  <span class="show">
                                        <small class="pull-right">2020.11.22</small>
                                        <strong class="text-uppercase">ㅁㅁ</strong>
                                    </span>
                  <p>신청합니다. 셰프등업해주세여~</p>
                </a>
              </li>
            </ul>
          </div>
          <!-- /inner content wrapper -->

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
            </div>
        </div>
        
        <script src="${pageContext.request.contextPath}/resources/vendor/jquery/dist/jquery.js"></script>  
          <script src="${pageContext.request.contextPath}/resources/vendor/chosen_v1.4.0/chosen.jquery.min.js"></script>
 	 	  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
          <script src="${pageContext.request.contextPath}/resources/vendor/fuelux/pillbox.js"></script>
		  <script src="${pageContext.request.contextPath}/resources/vendor/fuelux/spinner.js"></script>
          <script src="${pageContext.request.contextPath}/resources/scripts/form-custom.js"></script>
            <script src="${pageContext.request.contextPath}/resources/vendor/jquery.placeholder.js"></script>
           <script src="${pageContext.request.contextPath}/resources/vendor/switchery/dist/switchery.js"></script>
            <script src="${pageContext.request.contextPath}/resources/vendor/fastclick/lib/fastclick.js"></script>
            <script src="${pageContext.request.contextPath}/resources/vendor/jquery_appear/jquery.appear.js"></script>
              <script src="${pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.js"></script>
          
          
        
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/demo/datatables-demo.js"></script>
    </body>
</html>
