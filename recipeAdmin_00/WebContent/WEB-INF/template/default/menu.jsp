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
							</div> ����
						</a>

						<c:set var="author" value="${ad_author }" />

						<c:if test="${fn:contains(author, '��������')}">
							<div class="sb-sidenav-menu-heading">����� ����</div>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='sales'><font size='2' color='gray'>���� ��Ȳ</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='clientList'><font size='2' color='gray'>�ŷ�ó���</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='storeGoodsList'><font size='2' color='gray'>�����
										��ǰ ����</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='memberOrderList'><font size='2' color='gray'>��
										�ֹ� ����</font></a>
							</nav>
						</c:if>

						<c:if test="${fn:contains(author, 'ȸ������')}">
							<div class="sb-sidenav-menu-heading">ȸ������</div>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='newChief'><font size='2' color='gray'>���� ��û
										����</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='memberList'><font size='2' color='gray'>ȸ������</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='newClass'><font size='2' color='gray'>Ŭ��������</font></a>
							</nav>
						</c:if>
						
						<c:if test="${fn:contains(author, '������')}">
							<div class="sb-sidenav-menu-heading">������</div>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='adminList'><font size='2' color='gray'>������
										���</font></a>
							</nav>
							<nav class="sb-sidenav-menu-nested nav">
								<a href='register'><font size='2' color='gray'>������
										�߰��ϱ�</font></a>
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

		<!-- ������� -->
