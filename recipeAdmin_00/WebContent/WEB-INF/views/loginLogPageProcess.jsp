<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<div></div>
<div style="display: block; text-align: center;">	
	<!-- 이전페이지  <  -->	
	<c:if test="${paging.nowPage != 1 }">
		
		<a href="adminLogDetail?ad_no=${sessionScope.ad_no }&nowPage=${paging.nowPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;&lt;</a>
	</c:if>
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
		<c:choose>
			<c:when test="${p == paging.nowPage }">
				<b>${p }</b> <%--현제 페이지 일경우 링크 해제  --%>
			</c:when>
			<c:when test="${p != paging.nowPage }">
				<%-- 다른페이지 링크  --%>
			
				<a href="adminLogDetail?ad_no=${sessionScope.ad_no }&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
			</c:when>
		</c:choose>
	</c:forEach>
	<!--  다음페이지 > -->
	<c:if test="${paging.nowPage != paging.endPage and paging.endPage ne 0 }">
		
		<a href="adminLogDetail?ad_no=${sessionScope.ad_no }&nowPage=${paging.nowPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;&gt;</a>
	</c:if>
</div>