<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <head>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자 로그인</title>
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">로그인</h3></div>
                                    <div class="card-body">
                                        <form name='loginForm' action='loginCheck' method='POST'>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">이메일</label>
                                                <input name='ad_email' class="form-control py-4" id="inputEmailAddress" type="email" placeholder="이메일 주소" />
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">비밀번호</label>
                                                <input name='ad_pwd' class="form-control py-4" id="inputPassword" type="password" placeholder="비밀번호" />
                                            </div>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <font color='red'>${msg }</font>
                                                </div>
                                            </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
<!--                                                 <a class="small" href="password.html">비밀번호를 잊어버리셨나요?</a> -->
                                                <input type='button' id='loginBtn' value='로그인' class="btn btn-primary">
                                            </div>
                                        </form>
                                    </div>
<!--                                     <div class="card-footer text-center"> -->
<!--                                         <div class="small"><a href="register.html">가입하기</a></div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
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
        
        
        <script>
        
        	$(document).ready(function(){
        		$('#loginBtn').click(function(){
        			var ad_email = $('#inputEmailAddress').val();
        			var ad_pwd = $('#inputPassword').val();
        			if(ad_email.trim()==''){
        				alert('이메일을 입력하세요')
        				$('#inputEmailAddress').focus();
        				return;
        			}else if(ad_pwd.trim()==''){
        				alert('비밀번호를 입력하세요')
        				$('#inputPassword').focus();
        				return;
        			}
        			document.loginForm.submit();
        		})
        	})
        
        </script>
        
        
<!--         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
    </body>
</html>
