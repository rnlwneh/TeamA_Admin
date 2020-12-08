<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <head>
    	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>스케줄 달력</title>
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
        
        <style type="text/css">
			.cal_top{
			    text-align: center;
			    font-size: 30px;
			}
			.cal{
			    text-align: center;    
			}
			table.calendar{
			    border: 1px solid black;
			    text-align: left;
			}
			table.calendar td{
			    vertical-align: top;
			    border: 1px solid #dddddd;
			    width: 200px;
			}
			table.detSche{
			    border: 1px solid black;
			    text-align: left;
			}
			table.detSche td{
				vertical-align: top;
			    border: 1px solid black;
			    width: 200px;
			}
		</style>
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
									<a href='adminSchedule2'><font size='2' color='white'>달력</font></a>
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
                        <h1 class="mt-4">일정관리</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
                            <li class="breadcrumb-item"><a href="adminSchedule2">달력</a></li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Primary Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">상세보기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Warning Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">상세보기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Success Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">상세보기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">상세보기</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        	<div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                            	<th>중요도</th>
                                                <th>날짜</th>
                                                <th>일정</th>
                                                <th>상세내용</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                            	<td>
                                            		<select>
						                        		<option value='primary'>primary</option>
						                        		<option value='warning'>warning</option>
						                        		<option value='success'>success</option>
						                        		<option value='danger'>danger</option>
						                        	</select>
                                            	</td>
                                                <td>
                                                	<select>
				                          				<c:forEach var="item" begin="2015" end="2020" step="1">
				                          					<option value='${item }'>${item }년</option>
				                          				</c:forEach>
				                          			</select>    		
				                          			<select>
				                          				<c:forEach var="item" begin="1" end="12" step="1">
				                          					<option value='${item }'>${item }월</option>
				                          				</c:forEach>
				                          			</select>
				                          			<select>
				                          				<c:forEach var="item" begin="1" end="31" step="1">
				                          					<option value='${item }'>${item }일</option>
				                          				</c:forEach>
				                          			</select>
				                          			<select>
				                          				<c:forEach var="item" begin="0" end="23" step="1">
				                          					<option value='${item }'>${item }시</option>
				                          				</c:forEach>
				                          			</select>
                                                </td>
                                                <td>
                                                	<input type='text'>
                                                </td>
                                                <td>
                                                	<input type='text'>
                                                </td>
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                    <div align='right'><input type='button' value='등록하기'></div>
                                </div>
                            </div>
                        
	                    
	                    
	                    
	                    
	                    <div>&nbsp</div>
	                    
	                    <div class='detailSchedule'></div>
	                    
	                    <div>&nbsp</div>
	                    
                        <div class="card mb-4">
                            <div class="card-body">
  
							    <div class="xxx"></div>
							    
							 
								<script>
									function print_calender( className, year, month ){
							
										year = parseInt(year,10);
										month = parseInt(month,10);
									
										var lastMonth_lastDay = new Date(year, month-1, 0).getDay();
										var lastMonth_lastDate =  new Date(year, month-1, 0).getDate();
										var thisMonth_firstDay = new Date(year, month-1, 1).getDay();
										var thisMonth_lastDate = new Date(year, month, 0).getDate();
										var lastMonth_startDate = lastMonth_lastDate - lastMonth_lastDay;
																	
										var month2 = ""
							
										if(month < 10){
											month2 = "0"+month;
										}else{
											month2 = month+"";
										}
							
										var arr = []
										arr.push("<table class='calendar' cellpadding=4>")
										arr.push( "<div class='cal_top'>" )
										arr.push(" 		<span class='last' style='cursor:pointer'>&lt;&lt; </span>")
										arr.push("		" + year + "년 " + month2 + "월 ")
										arr.push("		<span class='next' style='cursor:pointer'>&gt;&gt;</span>")
										arr.push("</div>")
										arr.push("<tr><th>일<th>월<th>화<th>수<th>목<th>금<th>토")
							
										var thisMonth_date = 1;
										var nextMonth_date = 1;
							
										for(var i = 0; i < 6; i++){
											arr.push("<tr height='100'>");
							
											for(var j = 0; j <=6; j++){
												//일요일 빨간색, 토요일 파란색, 나머지 회색
												if(j == 6){
													arr.push("<td bgcolor=skyblue>");
												}else if(j == 0){
													arr.push("<td bgcolor=pink>");
												}else{
													arr.push("<td>");
												}
							
												//첫주 출력
												if( i == 0 && thisMonth_firstDay <= j ){
													arr.push("<div>" + thisMonth_date + "</div>");
													arr.push("<div class='cal_schedule'></div>");
													thisMonth_date++;
												}
												//둘째주 부터 이번달 마지막일 까지 출력
												else if(i != 0 && thisMonth_date <= thisMonth_lastDate){
													arr.push("<div>" + thisMonth_date + "</div>");
													arr.push("<div class='cal_schedule'></div>");
													thisMonth_date++;
												}
											}
											//마지막 날짜를 찍고 한주가 끝났으면 끝
											if(thisMonth_date > thisMonth_lastDate){ break; }
										}
										arr.push("</table>")
							
										$("."+className).html( arr.join("") );
									}	//function print_calender( className, year, month ){
							
							
							
									function lastClick(){
										$(document).ready( function() {
											$(".last").click( function(){
												if(month == 1){
													year--;
													month = 12;
												}else{
													month--;
												}
												print_calender("xxx", year, month);
												$('.cal_schedule:eq(5)').html("<a href='#'><font color='blue'>●</font><font color='black'>primary 일정</font></a>")
									            $('.cal_schedule:eq(11)').html("<a href='#'><font color='yellow'>●</font><font color='black'>warning 일정</font></a>")
									            $('.cal_schedule:eq(20)').html("<a href='#'><font color='green'>●</font><font color='black'>success 일정</font></a>")
									            $('.cal_schedule:eq(15)').html("<a href='#'><font color='red'>●</font><font color='black'>danger 일정</font></a>")
												lastClick();
												nextClick();
											})
										})
									}//function lastClick(){
							
							
									function nextClick(){
										$(document).ready( function() {
											$(".next").click( function(){
												if(month == 12){
													year++;
													month = 1;
												}else{
													month++;
												}
												print_calender("xxx", year, month);
												$('.cal_schedule:eq(5)').html("<a href='#'><font color='blue'>●</font><font color='black'>primary 일정</font></a>")
									            $('.cal_schedule:eq(11)').html("<a href='#'><font color='yellow'>●</font><font color='black'>warning 일정</font></a>")
									            $('.cal_schedule:eq(20)').html("<a href='#'><font color='green'>●</font><font color='black'>success 일정</font></a>")
									            $('.cal_schedule:eq(15)').html("<a href='#'><font color='red'>●</font><font color='black'>danger 일정</font></a>")
												nextClick();
												lastClick();
											})
										})
									}//function nextClick(){
							
									lastClick();
									nextClick();

								
									var today = new Date();
									var year = today.getFullYear();
									var month = today.getMonth() + 1;
							
									print_calender( "xxx", year, month );
									
									
									$('.cal_schedule:eq(5)').html("<a href='#'><font color='blue'>●</font><font color='black'>primary 일정</font></a>")
						            $('.cal_schedule:eq(11)').html("<a href='#'><font color='yellow'>●</font><font color='black'>warning 일정</font></a>")
						            $('.cal_schedule:eq(20)').html("<a href='#'><font color='green'>●</font><font color='black'>success 일정</font></a>")
						            $('.cal_schedule:eq(15)').html("<a href='#'><font color='red'>●</font><font color='black'>danger 일정</font></a>")
									
									$('.cal_schedule:eq(5)').click(function(){
										var detailSchHtml = "";
										detailSchHtml += "<div class='card-body'>";
										detailSchHtml += "		<div class='table-responsive'>";
										detailSchHtml += "			<table class='table table-bordered' id='' width='100%' cellspacing='0'>";
										detailSchHtml += "				<thead>";
										detailSchHtml += "					<tr><th>일정<th>일시<th>상세내용<th>중요도";
										detailSchHtml += "				</thead>";
										detailSchHtml += "				<tbody>";
										detailSchHtml += "					<tr><td><font color='blue'>●</font><font color='black'>primary 일정</font><td>OO월 OO일 OO시<td>내용~~~";
										detailSchHtml += "						<td><select>";
										detailSchHtml += "							<option value='primary'>primary</option>";
										detailSchHtml += "							<option value='warning'>warning</option>";
										detailSchHtml += "							<option value='success'>success</option>";
										detailSchHtml += "							<option value='danger'>danger</option>";
										detailSchHtml += "						</select>";
										detailSchHtml += "						&nbsp<input type='button' value='변경'>";
										detailSchHtml += "						&nbsp<input type='button' value='삭제'>";
										detailSchHtml += "				</tbody>";
										detailSchHtml += "			</table>";
										detailSchHtml += "		</div>";
										detailSchHtml += "</div>";
		             
										$('.detailSchedule').html(detailSchHtml)
									})
                             
							
								</script>
                                
                            </div>
                            
                        </div>
                        
                        <div>&nbsp</div>
                        <div>&nbsp</div>
                       
                        
                        
                        
<!--                         <div style="height: 100vh"></div> -->
<!--                         <div class="card mb-4"><div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div></div> -->
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
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/datatables-demo.js"></script>
    </body>
</html>
