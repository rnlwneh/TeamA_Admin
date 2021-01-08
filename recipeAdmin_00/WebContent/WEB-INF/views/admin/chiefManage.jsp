<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <h1 class="mt-4">클라스관리</h1>
                        <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="indexA">Necipe</a></li>
                         <li class="breadcrumb-item"><a href="chiefManage">클라스관리</a></li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                클라스 목록
                            </div>
                            <div class="card-body">
                        
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
										</tr>
									</thead>
									<c:forEach items="${cList}" var="cList">
										<thead>
											<tr>
												<td>${cList.class_no}</td>
												<td width="15%">
													<a href='classListDetail?class_no=${cList.class_no}'>
														<div align="center">
															<img src="${pageContext.request.contextPath}/resources/image/${cList.class_info_pic}" width="100px" >
															
														</div>
													</a>
												</td>
												<td>${cList.class_title}</td>
										
												<td><a
													href='<c:url value='chiefDetail?mem_no=${cList.mem_no }'/>'
													class="text-dark">${cList.mem_id }</a></td>
												<td>${cList.class_period}</td>
											</tr>
										</thead>
									</c:forEach>
				
								</table>



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

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/demo/datatables-demo.js"></script>

