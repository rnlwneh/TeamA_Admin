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
                        <h1 class="mt-4">셰프</h1>
                              <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="indexA">Necipe</a></li>
                          <li class="breadcrumb-item"><a href="chiefManage">셰프관리</a></li>
                            <li class="breadcrumb-item active"><a href="chiefDetail">셰프상세페이지</a></li>
                        </ol>
                        
                         
         
                        <div class="card mb-4">
                        <div class="card-header">
                                <i class="fas fa-table mr-1"></i>
                                셰프{닉넴}
                            </div>
                        
                         <div class="card-body">
                
                           
                           <section class="panel">
        
              <div class="panel-body">
                <form role="form" class="parsley-form" data-parsley-validate>

                  <div class="row">
                    <div class="col-md-6">
                      
                      <div class="form-group">
                        <label>닉네임</label>
                        <div>
                          <input type="text" class="form-control" name="Nickname" data-parsley-required="true" data-parsley-trigger="change" placeholder="Nickname">
                        </div>
                      </div>

                     <div class="form-group">
                        <label>등급</label>
                        <div>
                         <select data-placeholder="rank" style="width:100%;" class="form-control">
                   
                          <option selected>미슐랭셰프</option>
                           <option>미슐랭셰프 </option>
							<option>아임셰프 </option>
							<option>내마을요리사 </option>
							<option>방구석요리사 </option>
							<option>김볶밥가능 </option>
							<option>내베프전자레인지 </option>
                     
					
						</select>     
                        </div>
                      </div>

                      <div class="form-group">
                        <label>주소</label>
                        <div>
                          <input type="text" class="form-control" name="date" data-parsley-required="true" data-parsley-trigger="change" placeholder="서울시 어쩌고">
                        </div>
                      </div>





                        <div class="form-group">
                        <label>가입연도</label>
                       
                          <input class="form-control" type="text" placeholder="2013.01.23" disabled="">
                      
                      </div>
                      
                      
  						<div class="form-group">
                        <label>Email</label>
                        <div>
                          <input type="text" class="form-control" name="email" data-parsley-type="email" data-parsley-required="true" data-parsley-trigger="change" placeholder="hello@naver.com">
                        </div>
                      
 						</div>
                     
                      
                       <div class="form-group">
                        <label>셰프인증</label>
                       
                          <input class="form-control" type="text" placeholder="승인" disabled="">
                      
                      </div>
                   
                     <div class="form-group">
                        <label>셰프인증일자</label>
                       
                          <input class="form-control" type="text" placeholder="2019.07.22" disabled="">
                      
                      </div>
                   
                       
                   
                   
 						
 						
                    </div>
                   
                   
                   
                   
                      <div class="col-md-6">
                   
                      <div class="form-group">
                        <label>자격증 과목</label>
                        <div>
                          <input type="text" class="form-control" data-parsley-type="email" data-parsley-required="true" data-parsley-trigger="change" placeholder="hello@naver.com">
                        </div>
                      
 						</div>
 						
 						
 						
 						
 						  <div class="form-group">
                        <label>자격증 첨부</label>
                       
 						
 						
 						
 				<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 switch-item legal">
                  <section class="panel">
                    <div class="thumb">
                      <img class="img-responsive" alt="Responsive image" src="${pageContext.request.contextPath}/resources/image/기업로고01.gif"/>
                    </div>
                    <div class="panel-body">
                      
                
                        <a href="javascript:;" class="show small">자세히보기</a>
                     
                    </div>
                  </section>
                </div>
                   </div>
                
 						
 				<section class="panel">
 			
                 
                    <strong>셰프자격승인</strong>
                  <div class="alert alert-success">
                  	
                      <div class="checkbox mr5">
                        <label>
                          <input type="checkbox">승인
                        </label>
                      </div>
                 
                
                  </div>
                </section>
 						
 				
                    <br>
                    
                   
               
                  </div>
                  
                </form>
          </div>
           
            

              </section>
                   <div class="col-md-12">
                     <div class="demo-button">
                        <label></label>
                        <div>
                          <button type="button" class="btn btn-danger" style="width:45%;"  onclick="location.href='chiefManage'" >정지하기</button> <button  style="width:45%;" type="button" class="btn btn-success"  onclick="location.href='chiefManage'">Save</button>
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

