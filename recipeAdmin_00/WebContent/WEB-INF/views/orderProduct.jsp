<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
    	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>발주</title>
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
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
									<a href='orderProduct'><font size='2' color='white'>발주하기</font></a>
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
									<a href='newChief'><font size='2' color='gray'>셰프 신청 관리</font></a>
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
                        <h1 class="mt-4">발주하기</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
                            <li class="breadcrumb-item"><a href="orderProduct">발주하기</a></li>       
                        </ol>
                    </div>
                    
                    <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                발주상품
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                        
                                        	<tr>
                                        		<th>상품이름
                                        		<th>상품사진
                                        		<th>상품가격
                                        		<th>상품수량
                                        	</tr>
                                        
                                        </thead>
                                        
                                        <tbody>
                                        	<c:forEach var="item" begin="1" end="12" step="1">
                               					<tr>
                               						<td><a href='productInfo'>aa${item }</a>
                               						<td>~~
                               						<td>${(item*2-4)*item }원
                               						<td>
                               					</tr>
                               				</c:forEach>
                                        </tbody>
                                        
                                    </table>
                                </div>
                            </div>
                    </div>
                    

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                        	<tr>
                                        		<th>상품 이름
                                        		<th colspan="7">aa11
                                        	</tr>
                                        	<tr>
                                        		<td>구분\날짜
                                        		<td>11/20
                                        		<td>11/21
                                        		<td>11/22
                                        		<td>11/23
                                        		<td>11/24
                                        		<td>11/25
                                        		<td>11/26
                                        	</tr>
                                        </thead>
                                        <tbody>
                                        	<tr>
                                        		<td>발주량
                                        		<td>10
                                        		<td>
                                        		<td>
                                        		<td>
                                        		<td>
                                        		<td>
                                        		<td>
                                        	</tr>
                                        	
                                        	<tr>
                                        		<td>입고량
                                        		<td>
                                        		<td>10
                                        		<td>
                                        		<td>
                                        		<td>
                                        		<td>
                                        		<td>
                                        	</tr>
                                        	
                                        	<tr>
                                        		<td>판매량
                                        		<td>1
                                        		<td>2
                                        		<td>3
                                        		<td>
                                        		<td>1
                                        		<td>
                                        		<td>3
                                        	</tr>
                                        	
                                        	<tr>
                                        		<td>폐기량
                                        		<td>
                                        		<td>
                                        		<td>
                                        		<td>
                                        		<td>1
                                        		<td>
                                        		<td>
                                        	</tr>
                                        	
                                        	<tr>
                                        		<td>재고
                                        		<td>6
                                        		<td>14
                                        		<td>11
                                        		<td>
                                        		<td>9
                                        		<td>
                                        		<td>6
                                        	</tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                  
                    
                 
                       
                </main>
           
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/datatables-demo.js"></script>
    </body>
</html>
