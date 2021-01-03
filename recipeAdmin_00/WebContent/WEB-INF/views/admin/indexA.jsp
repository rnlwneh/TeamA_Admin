<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <head>    
		<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>
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
			textarea {
		        width: 90%;
		        height: 80px;
		        resize:none;
		    }
		    table#scheTable td,th{
		    	text-align: center;
		    	vertical-align: middle;
		    }
		</style>
    </head>
    
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">${ad_name } 님의 일정</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="indexA">Recipe</a></li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Primary Card</div>
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <a class="small text-white stretched-link" href="#">상세보기</a> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Warning Card</div>
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <a class="small text-white stretched-link" href="#">상세보기</a> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Success Card</div>
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <a class="small text-white stretched-link" href="#">상세보기</a> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Danger Card</div>
<!--                                     <div class="card-footer d-flex align-items-center justify-content-between"> -->
<!--                                         <a class="small text-white stretched-link" href="#">상세보기</a> -->
<!--                                         <div class="small text-white"><i class="fas fa-angle-right"></i></div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                        </div>
                        
                         <div class='detailSchedule'></div>
	                    
	                    <div>&nbsp</div>
	                    
                        <div class="card mb-4">
                            <div class="card-body">
  
							    <div class="xxx"></div>
                                
                            </div>
                            
                        </div>
                        	<div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="scheTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                            	<th>중요도</th>
                                                <th>날짜</th>
                                                <th>일정</th>
                                                <th>상세내용</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<input type='hidden' id='ad_no' value='${ad_no }'/>
                                            <tr>
                                            	<td>
                                            		<select id='ad_sche_imp'>
						                        		<option value='primary'>primary</option>
						                        		<option value='warning'>warning</option>
						                        		<option value='success'>success</option>
						                        		<option value='danger'>danger</option>
						                        	</select>
                                            	</td>
                                                <td>
                                                	<input type='text' id='scheDay'>
				                          			<select id='scheHour'>
				                          				<c:forEach var="item" begin="0" end="23" step="1">
				                          					<option value='${item }'>${item }시</option>
				                          				</c:forEach>
				                          			</select>
                                                </td>
                                                <td>
                                                	<input id='ad_sche_title' type='text'>
                                                </td>
                                                <td>
                                                	<textarea id='ad_sche_detail' cols='30' rows='3'></textarea>
                                                </td>
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                    <div align='right'><input id='saveSche' type='button' value='등록하기'></div>
                                </div>
                            </div>
                        
	                    
	                    <div id='errr'></div>
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

        
        
<script>
        
  	//datepicker 한글변환
    $(function() {
      $( "#scheDay" ).datepicker({
        dateFormat: 'yy-mm-dd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
        dayNames: ['일','월','화','수','목','금','토'],
        dayNamesShort: ['일','월','화','수','목','금','토'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
      });
    });	
        
        
      	//달력 그리기============================================================
	function printCalender( className, year, month ){

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
		arr.push(" 		<span id='last' style='cursor:pointer'>&lt;&lt; </span>")
		arr.push("		" + year + "년 " + month2 + "월 ")
		arr.push("		<span id='next' style='cursor:pointer'>&gt;&gt;</span>")
		arr.push("</div>")
		arr.push("<tr><th>일<th>월<th>화<th>수<th>목<th>금<th>토")

		var thisMonth_date = 1;
		var nextMonth_date = 1;

		for(var i = 0; i < 6; i++){
			arr.push("<tr height='100'>");

			for(var j = 0; j <=6; j++){
				//일요일 빨간색, 토요일 파란색, 나머지 색x
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
					arr.push("<div class='cal_schedule2'></div>");
					thisMonth_date++;
				}
				//둘째주 부터 이번달 마지막일 까지 출력
				else if(i != 0 && thisMonth_date <= thisMonth_lastDate){
					arr.push("<div>" + thisMonth_date + "</div>");
					arr.push("<div class='cal_schedule'></div>");
					arr.push("<div class='cal_schedule2'></div>");
					thisMonth_date++;
				}
			}
			//마지막 날짜를 찍고 한주가 끝났으면 끝
			if(thisMonth_date > thisMonth_lastDate){ break; }
		}
		arr.push("</table>")
		
		//미리 만들어둔 div태그에 html코드 입력
		$("."+className).html( arr.join("") );
	}		//function print_calender( className, year, month ){
		
	//상세보기 함수========================================================================================
	function detailClick(className,scheduleList){
		$('.'+className).click(function(){
			var pkNo = $(this).find('#pkNo').val();
			var date = $('.'+className).index($(this))+1;
			var thisHour = $(this).text().substr(1,2);
			for(var i=0; i<scheduleList.length; i++){
				var ad_sche_date = scheduleList[i].ad_sche_date;
				var scheYear = ad_sche_date.substr(0,4);
				var scheMonth = ad_sche_date.substr(5,2);
				var scheDate = ad_sche_date.substr(8,2);
				if(scheDate.substr(0,1)==='0'){
					scheDate = scheDate.substr(1,);
				}
				var ad_sche_title = scheduleList[i].ad_sche_title;
				var scheHour = scheduleList[i].ad_sche_hour;
				var color = 'blue';
				if(scheduleList[i].ad_sche_imp==='warning'){
					color='yellow';
				}else if(scheduleList[i].ad_sche_imp==='success'){
					color='green';
				}else if(scheduleList[i].ad_sche_imp==='danger'){
					color='red'
				}
				var scheDetail = scheduleList[i].ad_sche_detail;
				var ad_sche_no = scheduleList[i].ad_sche_no;
				
				if(parseInt(pkNo)===ad_sche_no){
					if(scheDate.length==1){
						scheDate = "0"+scheDate;
					}
					var detailSchHtml = "";
					detailSchHtml += "<div class='card-body'>";
					detailSchHtml += "		<div class='table-responsive'>";
					detailSchHtml += "			<table class='table table-bordered' id='scheTable' width='100%' cellspacing='0'>";
					detailSchHtml += "				<thead>";
					detailSchHtml += "					<tr><th>일정<th>일시<th>상세내용<th>중요도";
					detailSchHtml += "				</thead>";
					detailSchHtml += "				<input id='ad_sche_no' type='hidden' value="+ad_sche_no+">";
					detailSchHtml += "				<tbody>";
					detailSchHtml += "					<tr><td><font size='5' color="+color+">●</font><font color='black'>"+scheHour+"시 "+ad_sche_title+"</font><td>"+scheMonth+"월 "+scheDate+"일 "+scheHour+"시 <td>"+scheDetail;
					detailSchHtml += "						<td><select id='ad_sche_imp'>";
					detailSchHtml += "							<option value="+scheduleList[i].ad_sche_imp+" selected disabled hidden>"+scheduleList[i].ad_sche_imp+"</option>";
					detailSchHtml += "							<option value='primary'>primary</option>";
					detailSchHtml += "							<option value='warning'>warning</option>";
					detailSchHtml += "							<option value='success'>success</option>";
					detailSchHtml += "							<option value='danger'>danger</option>";
					detailSchHtml += "						</select>";
					detailSchHtml += "				</tbody>";
					detailSchHtml += "			</table>";
					detailSchHtml += "			&nbsp<div align='right'><input type='button' id='updateSche' value='변경'>";
					detailSchHtml += "			&nbsp<input type='button' id='deleteSche' value='삭제'></div>";
					detailSchHtml += "		</div>";
					detailSchHtml += "</div>";
					var beforeHtml = $('.detailSchedule').html()
					$('.detailSchedule').html(detailSchHtml);
					if(beforeHtml===$('.detailSchedule').html()){
						$('.detailSchedule').html("")
					}
					//삭제버튼 누를시
					$('#deleteSche').click(function(){
						if(confirm("정말 삭제하시겠습니까?")){
							var scheNo = $('#ad_sche_no').val();
							$.ajax({
								url:"deleteSchedule?ad_sche_no="+scheNo
								,success : function(){
									var ad_no = $('#ad_no').val();
									alert("삭제가 완료되었습니다!");
									location.href="indexA";
								}
								,error : function(request,status,error){
									$('#errr').html("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
								}
							})
						}
					})		//$('#deleteSche').click(function(){
					
					//변경버튼 누를시
					$('#updateSche').click(function(){
						if(confirm("변경하시겠습니까?")){
							var scheNo = $('#ad_sche_no').val();
							var scheImp = $('#ad_sche_imp').val();
							$.ajax({
								url:"updateSchedule?ad_sche_no="+scheNo+"&ad_sche_imp="+scheImp
								,success : function(){
									var ad_no = $('#ad_no').val();
									alert("변경이 완료되었습니다!");
									location.href="indexA";
								}
								,error : function(request,status,error){
									$('#errr').html("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
								}
							})
						}
					})		//$('#updateSche').click(function(){
				}		//if(parseInt(pkNo)===ad_sche_no){
			}		//for(var i=0; i<scheduleList.length; i++){
		})		//$('.cal_schedule').click(function(){
	}		//function detailClick(){
		
	//일정적기 함수===================================================================================
	function scheduleWrite(scheduleList){
		for(var i=0; i<scheduleList.length; i++){
			//alert(scheduleList[i].ad_sche_date)
			var ad_sche_date = scheduleList[i].ad_sche_date;
			var scheYear = ad_sche_date.substr(0,4);
			var scheMonth = ad_sche_date.substr(5,2);
			var scheDate = ad_sche_date.substr(8,2);
			var scheHour = scheduleList[i].ad_sche_hour;
			var ad_sche_title = scheduleList[i].ad_sche_title;
			if(scheDate.substr(0,1)==='0'){
				scheDate = scheDate.substr(1,);
			}
			var color = 'blue';
			if(scheduleList[i].ad_sche_imp==='warning'){
				color='yellow';
			}else if(scheduleList[i].ad_sche_imp==='success'){
				color='green';
			}else if(scheduleList[i].ad_sche_imp==='danger'){
				color='red'
			}
			if(parseInt(scheYear)===year && parseInt(scheMonth)===month){
				if($('.cal_schedule').eq(scheDate-1).html().trim()===''){
					$('.cal_schedule').eq(scheDate-1).html("<input id='pkNo' type='hidden' value="+scheduleList[i].ad_sche_no+"><p style='cursor:pointer'><font size='5' color="+color+">●</font><font color='black'>"+scheHour+"시 "+ad_sche_title+"</font></p>")
				}else{
					$('.cal_schedule2').eq(scheDate-1).html("<input id='pkNo' type='hidden' value="+scheduleList[i].ad_sche_no+"><p style='cursor:pointer'><font size='5' color="+color+">●</font><font color='black'>"+scheHour+"시 "+ad_sche_title+"</font></p>")
				}
			}
		}		//for(var i=0; i<scheduleList.length; i++){
	}		//function scheduleWrite(scheduleList){
		
	//ajax를 통해 달력을 그린뒤 일정출력,상세보기========================================================
	function ajaxF(){
		//로그인한 관리자 일정만 뽑아오기위해
		var ad_no = $('#ad_no').val();
		//달력그리기
		printCalender( "xxx", year, month );
		$.ajax({
			url:"scheduleList"
			,success : function(scheduleList){
				//달력에 일정 적기
				scheduleWrite(scheduleList);					
				//일정 눌렀을 때 상세보기
				detailClick('cal_schedule',scheduleList);
				detailClick('cal_schedule2',scheduleList);
			}
			,error : function(request,status,error){
				$('#errr').html("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
			}
		})		//$.ajax({
	}		//function ajaxF(){
	
	//화살표 왼쪽오른쪽 누를때=========================================================================
	function lastNextClick(){
		$(document).ready(function(){
			$("#next").click(function(){
				if(month === 12){
					year++;
					month = 1;
				}else{
					month++;
				}
				ajaxF();
				lastNextClick();
			})
			$("#last").click(function(){
				if(month === 1){
					year--;
					month = 12;
				}else{
					month--;
				}
				ajaxF();
				lastNextClick();
			})
		})
	}
          //=================================================================================================
		
	//전역변수 선언 (오늘날짜 년/월)
	var today = new Date();
	var year = today.getFullYear();
	var month = today.getMonth() + 1;	
		
	$(document).ready(function(){
		//이번달 달력을 그린뒤 이번달 일정 출력
		ajaxF();
		
		//달력그린뒤 일정출력한 새로운body를 다시읽기위해 호출
		lastNextClick();
		
		//새일정 저장
		$('#saveSche').click(function(){
			var scheDay = $('#scheDay').val();
			var scheYear = scheDay.substr(0,4);
			var scheMonth = scheDay.substr(5,2);
			var scheDate = scheDay.substr(8,2);
			if(scheMonth<10){
				scheMonth = "0"+scheMonth;
			}if(scheDate<10){
				scheDate = "0"+scheDate;
			}
			
			var ad_no = $('#ad_no').val();
			var ad_sche_imp = $('#ad_sche_imp').val();
			var ad_sche_date = scheYear + "-" + scheMonth + "-" + scheDate;
			var ad_sche_title = $('#ad_sche_title').val().trim();
			var ad_sche_detail = $('#ad_sche_detail').val().trim();
			var ad_sche_hour = $('#scheHour').val();
			if(ad_sche_hour<10){
				ad_sche_hour = "0"+ad_sche_hour;
			}
			
			if(scheDay=='' || scheDay==null){
				alert('날짜를 입력하세요')
				return;
			}
			if(ad_sche_title=='' || ad_sche_title==null){
				alert('일정을 입력하세요')
				return;
			}
			if(ad_sche_detail=='' || ad_sche_detail==null){
				alert('상세내용을 입력하세요')
				return;
			}
			$.ajax({
				url : "addSchedule"
				,type : "POST"
				,data : {
					ad_no:ad_no
					,ad_sche_imp:ad_sche_imp
					,ad_sche_date:ad_sche_date
					,ad_sche_hour:ad_sche_hour
					,ad_sche_title:ad_sche_title
					,ad_sche_detail:ad_sche_detail
				}
				,success : function(){
					alert("일정이 추가되었습니다.")
					location.href="indexA"
				}
				,error : function(request,status,error){
					$('#errr').html("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)
				}
			})		//$.ajax({
		})		//$('#saveSche').click(function(){
	})		//$(document).ready(function(){									
	

</script>
        
        
        
        
        
        
        
<!--         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script> -->
		
		<script src="//code.jquery.com/jquery.min.js"></script>
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/datatables-demo.js"></script>
    </body>
</html>
