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
                        <h1 class="mt-4">셰프관리</h1>
                        <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
                         <li class="breadcrumb-item"><a href="chiefManage">셰프관리</a></li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                셰프 목록
                            </div>
                            <div class="card-body">
                        
                                <div class="table-responsive">
                                   
                                   
                                   
                                   
                                   
                                        
                 <script>
                 
                 
                 
             	var students =[];
            	for( var i=1; i<=200; i++ ){
            		students.push(		
            			{ s_no:i
            			, s_name: "오찡"+i
            			,address:"서울시 어쩌고"
            			,s_cnt:Math.round(Math.random())
            			
						}
            		);
         
            
            	}
            	
             	function randomItem(a) {
          		  return a[Math.floor(Math.random() * a.length)];
          		}
          	
        



            	document.write("<table border=1 cellspacing=0 cellpadding=5>");
            	document.write("<tr><th>번호<th>등급<th>닉네임<th>진행중인 클래스<th>처리<th>상세보기");
            	for(var i=0; i<students.length; i++){
        
            		var rank= new Array('미슐랭셰프', '아임셰프');
            	var bgcolor ="white";
				var detail = "상세보기";
				var chiefClass= new Array('양식','한식','베이킹','반찬'," ",' ','전통과자','하루집밥',' ');
				var	lo = "location.href='chiefDetail'";
            	document.write("<tr bgcolor="+bgcolor+">");
                document.write("<td>"+(students[i].s_no)); 	
              	document.write("<td>"+randomItem(rank));
            	//	document.write("<td>"+rank);
    
            	document.write("<td>"+(students[i].s_name));
            	document.write("<td>"+randomItem(chiefClass));
            	document.write("<td>"+(students[i].s_cnt));
            	document.write('<td><a href="chiefDetail">상세보기</a></td>');
            	}
            	document.write("</table>");


                         
                                 
                                   
                                   
                                   
                                   
                                </script>  
                                   
                                   
                                
                                 
                                   
                                   
                                   
                                   
                                   
                                   
                                   
                                   
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

