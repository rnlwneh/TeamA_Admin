<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<div></div>
<div style="display: block; text-align: center;">	
	<!-- 이전페이지  <  -->	
	<c:if test="${paging.nowPage != 1 }">
		
		<a href="memberOrderList?nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}&startSearchDate=${paging.startSearchDate}&endSearchDate=${paging.endSearchDate}&mem_name=${paging.mem_name}&str_pro_name=${paging.str_pro_name}">&lt;&lt;</a>
	</c:if>
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
		<c:choose>
			<c:when test="${p == paging.nowPage }">
				<b>${p }</b> <%--현제 페이지 일경우 링크 해제  --%>
			</c:when>
			<c:when test="${p != paging.nowPage }">
				<%-- 다른페이지 링크  --%>
			
				<a href="memberOrderList?nowPage=${p }&cntPerPage=${paging.cntPerPage}&startSearchDate=${paging.startSearchDate}&endSearchDate=${paging.endSearchDate}&mem_name=${paging.mem_name}&str_pro_name=${paging.str_pro_name}">${p }</a>
			</c:when>
		</c:choose>
	</c:forEach>
	<!--  다음페이지 > -->
	<c:if test="${paging.nowPage != paging.endPage and paging.endPage ne 0 }">
		
		<a href="memberOrderList?nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}&startSearchDate=${paging.startSearchDate}&endSearchDate=${paging.endSearchDate}&mem_name=${paging.mem_name}&str_pro_name=${paging.str_pro_name}">&gt;&gt;</a>
	</c:if>
</div>