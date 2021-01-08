<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<head>
	<style>
		textarea {
			resize:none;
			width:90%;
		}
	</style>
</head>
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">상품 정보</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="indexA">Necipe</a></li>
						<li class="breadcrumb-item"><a href="storeGoodsList">스토어
								상품 관리</a></li>
						<li class="breadcrumb-item"><a href="">상품 정보</a></li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">
							<!--                                 DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the -->
							<!--                                 <a target="_blank" href="https://datatables.net/">official DataTables documentation</a> -->
							<!--                                 . -->
						</div>
					</div>
					<form name='strInfo' action='updateStoreGoods' method='post' enctype='multipart/form-data'>
						<div align='right'style = "padding: 0 0 25px 0;">
							<input type='button' id='updateGoods' value='변경하기'>
						</div>
						<div class="row" margin='20px'>
							<div class="col-xl-6">
								<div class="card mb-4">
									<div class="card-header">
										상품 기본 정보
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-bordered" id="" width="100%" cellspacing="0">
												<tr>
													<th>상품이름</th>
													<th>
														<input type='text' name='str_pro_name' value='${goodsDetail.str_pro_name }'>
														<input type='hidden' name='str_pro_no' value='${goodsDetail.str_pro_no }'>
													</th>
												</tr>
												<tr>
													<th>거래처</th>
													<th>
														<input type='hidden' id='trdListNo' value='${goodsDetail.trd_list_no }'>
														<select name='trd_list_no' id='trd_list_no'>
															<c:forEach items="${trdListName }" var='trdListName'>
																<option value='${trdListName.trd_list_no }'>${trdListName.trd_list_name }
															</c:forEach>
														</select>
													</th>
												</tr>
												<tr>
													<th>재고량</th>
													<th><input type='text' name='str_pro_remind' style = "text-align:right;" value='${goodsDetail.str_pro_remind }'>개</th>
												</tr>
												<tr>
													<th>원가</th>
													<th><input type='text' name='str_pro_primecost' style = "text-align:right;" value='${goodsDetail.str_pro_primecost }'>원</th>
												</tr>
												<tr>
													<th>판매가</th>
													<th><input  type='text' name='str_pro_salescost' style = "text-align:right;" value='${goodsDetail.str_pro_salescost }'>원</th>
												</tr>
												<tr>
													<th>썸네일 이미지</th>
													<th>
														<input type='file' id='img' name='file'>
														<input type='hidden' name='pre_str_pro_image' value='${goodsDetail.str_pro_image }'>
													</th>
												</tr>
												<tr>
													<th>썸네일 미리보기</th>
													<th><div align='center' class="select_img"><img width='200' src="${pageContext.request.contextPath}/resources/image/${goodsDetail.str_pro_image }" /></div></th>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-xl-6">
								<div class="card mb-4">
									<div class="card-header">
										상품 상세 정보
									</div>
									<div class="card-body">
										<table class="table table-bordered" id="" width="100%" cellspacing="0">
											<tr>
												<th>상세 이미지</th>
												<th>
													<input type='file' id='img2' name='detailFile'>
													<input type='hidden' name='pre_str_pro_detail_image' value='${goodsDetail.str_pro_detail_image }'>
												</th>
											</tr>
											<tr>
												<th>이미지 미리보기</th>
												<th><div align='center' class="select_img2"><img width='200' src="${pageContext.request.contextPath}/resources/detailImage/${goodsDetail.str_pro_detail_image }" /></div></th>
											</tr>
											<tr>
												<th>상품 설명</th>
												<th><textarea id='' name='str_pro_content' rows='6'>${goodsDetail.str_pro_content }</textarea></th>
											</tr>
											<tr>
												<th>상품상태</th>
												<th>
													<input type='hidden' id='strProShow' value='${goodsDetail.str_pro_show }'>
													<select name='str_pro_show' id='str_pro_show'>
														<option value='1'>판매등록
														<option value='0'>판매보류
													</select>
												</th>
										</table>	
									</div>
								</div>
							</div>
						</div>
					</form>
					<div>&nbsp</div>
					<div>&nbsp</div>
				</div>
			</main>
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
	
	<script>
		$(document).ready(function(){
			
			var trdListNo = $('#trdListNo').val();
			$("#trd_list_no option[value='"+trdListNo+"']").attr("selected", true);
			
			var strProShow = $('#strProShow').val();
			$("#str_pro_show option[value='"+strProShow+"']").attr("selected", true);
			
			$("#img").change(function(){
				if(this.files && this.files[0]) {
					var reader = new FileReader;
					reader.onload = function(data) {
						$(".select_img img").attr("src", data.target.result).width(200);        
					}
					reader.readAsDataURL(this.files[0]);
				}
			});
			
			$("#img2").change(function(){
				if(this.files && this.files[0]) {
					var reader = new FileReader;
					reader.onload = function(data) {
						$(".select_img2 img").attr("src", data.target.result).width(200);        
					}
					reader.readAsDataURL(this.files[0]);
				}
			});
			
			$('#updateGoods').click(function(){
				if(confirm("변경내용을 저장하시겠습니까?")){
					document.strInfo.submit();
				}
			})
			
		})
	</script>
	
	
	
<!-- 	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" -->
<!-- 		crossorigin="anonymous"></script> -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/js/datatables-demo.js"></script>


