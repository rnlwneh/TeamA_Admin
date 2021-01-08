<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

        <div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<!--                             <div class="sb-sidenav-menu-heading">Core</div> -->
						<a class="nav-link" href="indexA">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 메인
						</a>

						<c:set var="author" value="${ad_author }" />

						<c:if test="${fn:contains(author, '스토어관리')}">
							<div class="sb-sidenav-menu-heading">스토어 관리</div>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='sales'><font size='2' color='gray'>매출 현황</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='clientList'><font size='2' color='gray'>거래처목록</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='storeGoodsList'><font size='2' color='gray'>스토어
										상품 관리</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='memberOrderList'><font size='2' color='gray'>고객
										주문 관리</font></a>
							</nav>
						</c:if>

						<c:if test="${fn:contains(author, '회원관리')}">
							<div class="sb-sidenav-menu-heading">회원관리</div>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='newChief'><font size='2' color='gray'>셰프 신청
										관리</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='memberList'><font size='2' color='gray'>회원관리</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='newClass'><font size='2' color='gray'>클래스관리</font></a>
							</nav>
						</c:if>
						
						<c:if test="${fn:contains(author, '관리자')}">
							<div class="sb-sidenav-menu-heading">관리자</div>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='adminList'><font size='2' color='gray'>관리자
										목록</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='register'><font size='2' color='gray'>관리자
										추가하기</font></a>
							</nav>
						</c:if>
					</div>
				</div>
				<!--                     <div class="sb-sidenav-footer"> -->
				<!--                         <div class="small">Logged in as:</div> -->
				<!--                         Start Bootstrap -->
				<!--                     </div> -->
			</nav>
		</div>

		<!-- 공통사항 -->
