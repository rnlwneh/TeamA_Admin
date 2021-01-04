<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자 추가</title>
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="bg-primary">
<% request.setCharacterEncoding("UTF-8"); %>

	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">관리자 추가하기</h3>
								</div>
								<div class="card-body">
									<form name='addAdmin' action='addAdmin'>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputFirstName">이름</label> <input
														name="ad_name" class="form-control py-4"
														id="inputFirstName" type="text" placeholder="이름" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputLastName">전화번호</label>
													<input name="ad_phone" class="form-control py-4"
														id="inputPhone" type="text" placeholder="-를 빼고 입력하세요" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputEmailAddress">이메일</label>
											<input name="ad_email" class="form-control py-4"
												id="inputEmailAddress" type="email"
												aria-describedby="emailHelp" placeholder="이메일주소" />
										</div>
										<div class="form-row">
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputPassword">비밀번호</label>
													<input name='ad_pwd' class="form-control py-4" id="inputPassword"
														type="password" placeholder="8~15글자" />
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label class="small mb-1" for="inputConfirmPassword">비밀번호
														확인</label> <input class="form-control py-4"
														id="inputConfirmPassword" type="password"
														placeholder="8~15글자" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="small mb-1" for="ability">권한</label>
											<div>
<!-- 												<label for='author1'><input name='author' class="author" id="author1" type="checkbox" value='사이트관리' />사이트관리</label> -->
												<label for='author2'><input name='author' class="author" id="author2" type="checkbox" value='스토어관리' />스토어관리</label>&emsp;
												<label for='author3'><input name='author' class="author" id="author3" type="checkbox" value='회원관리' />회원관리</label>
											</div>
										</div>
										<div class="form-group mt-4 mb-0">
											<a class="btn btn-primary btn-block" id='addSubmit'>추가하기</a>
										</div>
									</form>
								</div>
								<!--                                     <div class="card-footer text-center"> -->
								<!--                                         <div class="small"><a href="login.html">Have an account? Go to login</a></div> -->
								<!--                                     </div> -->
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>
<!-- 		<div id="layoutAuthentication_footer"> -->
<!-- 			<footer class="py-4 bg-light mt-auto"> -->
<!-- 				<div class="container-fluid"> -->
<!-- 					<div -->
<!-- 						class="d-flex align-items-center justify-content-between small"> -->
<!-- 						<div class="text-muted">Copyright &copy; Your Website 2020</div> -->
<!-- 						<div> -->
<!-- 							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms -->
<!-- 								&amp; Conditions</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</footer> -->
<!-- 		</div> -->
	</div>
	
	<script>
		$(document).ready(function(){
			
			$('#addSubmit').click(function(){
				var ad_name = $('#inputFirstName').val().trim();
 				var ad_pwd = $('#inputPassword').val().trim();
 				var ad_phone = $('#inputPhone').val().trim();
				var ad_pwdConfirm = $('#inputConfirmPassword').val().trim();
				var ad_email = $('#inputEmailAddress').val().trim();
				var ad_author= "";
				$("input[name='author']:checked").each(function(){
					ad_author = ad_author + "," + $(this).val();
				})
				ad_author = ad_author.substr(1,).trim();

				var nameRegExp = /^[가-힣]{2,7}$/;
				var phoneRegExp = /^[0-9]{10,11}$/;
				var emailRegExp = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
				var passRegExp = /^[a-zA-Z0-9`~!@#$%^&*()-_=+*]{8,15}$/;
				
				if(ad_name==''){
					$('#inputFirstName').focus();
					alert("이름을 입력하지 않았습니다");
					return;
				}else if(nameRegExp.test(ad_name) == false){
					$('#inputFirstName').val('');
					$('#inputFirstName').focus();
					alert("올바른 한글 이름을 2글자 이상 7글자 이하로 입력해주세요");
					return;
				}else if(ad_phone==''){
					$('#inputPhone').focus();
					alert("핸드폰 번호를 입력해 주세요");
					return;
				}else if(phoneRegExp.test(ad_phone) == false){
					$('#inputPhone').val('')
					$('#inputPhone').focus();
					alert("올바른 핸드폰번호를 숫자만 입력해주세요");
					return;
				}else if(ad_email==''){
					$('#inputEmailAddress').focus();
					alert('이메일을 입력하지 않았습니다');
					return;
				}else if(emailRegExp.test(ad_email) == false){
					$('#inputEmailAddress').val('');
					$('#inputEmailAddress').focus();
					alert("올바른 이메일 형식을 입력해주세요");
					return;					
				}else if(ad_pwd==''){
					$('#inputPassword').focus();
					alert('비밀번호를 입력하지 않았습니다');
					return;
				}else if(passRegExp.test(ad_pwd) == false){
					$('#inputPassword').val('');
					$('#inputConfirmPassword').val('');
					$('#inputPassword').focus();
					alert("비밀번호는 8~15글자로 입력해주세요");					
				}else if(!(ad_pwd==ad_pwdConfirm)){
					$('#inputConfirmPassword').val('');
					$('#inputConfirmPassword').focus();
					alert("비밀번호와 비밀번호확인이 일치하지 않습니다");
					return;
				}else if(ad_author==''){
					alert("관리 권한을 하나이상 설정해 주세요")
					return;
				}
				
				$.ajax({
					url : "addAdmin"
					,type : "POST"
					,data : {
						ad_name:ad_name
						,ad_pwd:ad_pwd
						,ad_phone:ad_phone
						,ad_email:ad_email
						,ad_author:ad_author
					}
					,success : function(){
						if(confirm("관리자 목록을 보러 가시겠습니까? 아니오를 누르면 메인으로 이동합니다")){
							location.href="adminList"
						}else{
							location.href="indexA"
						}
					}
					,error : function(err){
						alert(err);
					}
				});		//$.ajax({
			});		//$('#addSubmit').click(function(){
		});		//$(document).ready(function(){
	</script>
	
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
</body>
</html>
