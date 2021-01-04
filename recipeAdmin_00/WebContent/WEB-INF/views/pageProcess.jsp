<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<div style="display: block; text-align: center;">	
		<!-- 이전페이지  <  -->	
		<c:if test="${paging.startPage != 1 }">
			
			<a href="memberList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&searchType=${paging.searchType}&keyword=${paging.keyword}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b> <%--현제 페이지 일경우 링크 해제  --%>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<%-- 다른페이지 링크  --%>
				
					<a href="memberList?nowPage=${p }&cntPerPage=${paging.cntPerPage}&searchType=${paging.searchType}&keyword=${paging.keyword}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<!--  다음페이지 > -->
		<c:if test="${paging.endPage != paging.lastPage}">
			
			<a href="memberList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&searchType=${paging.searchType}&keyword=${paging.keyword}">&gt;</a>
		</c:if>
	</div>