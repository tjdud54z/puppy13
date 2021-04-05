<%@ page language="java" contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>나의 반려견 사랑</title>
    <link href="<%=request.getContextPath()%>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/puppy13/home.do">
                <div class="sidebar-brand-icon rotate-n-15">
                    <img alt="이미지 없음." src="<%=request.getContextPath()%>/resources/image/pat.png" width="50" height="50">
                </div>
                <div class="sidebar-brand-text mx-3">M.A.T</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                <br>
                <p>동물을 사랑하는 사람들의 모임.<br>
                    우리 M.A.T에서 나의 반려견을 자<br>
                    랑하고 나만의 꿀팁을 공유하자!<br><br>
                    반려견의 친구 M.A.T !!
                </p><br><br>
                <img class="sidebar-brand-icon rotate-n-90" src="<%=request.getContextPath()%>/resources/image/puppy3.gif" width="140" height="160"><br><br>
            </div>
            <li class="nav-item">
                <a class="nav-link collapsed" href="/puppy13/board/list.do" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>게시판</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" onclick="loginck_usermypage()" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>마이 페이지</span>
                </a>
            </li>
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Search -->
                    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>

                    </form>

                    <ul class="navbar-nav ml-auto">
                        <c:choose>
                            <c:when test="${sessionScope.id != null}">
                                <li class="nav-item dropdown no-arrow mx-1">
                                    <a class="nav-link dropdown-toggle" href="/puppy13/logout.do" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">로그아웃
                                    </a>
                                </li>
                                <div class="topbar-divider d-none d-sm-block"></div>
                                <li class="nav-item dropdown no-arrow">
                                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                                        <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                                            ${name}(${id})님 접속중
                                        </span>
                                    </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="nav-item dropdown no-arrow mx-1">
                                    <a class="nav-link dropdown-toggle" href="/puppy13/login.do" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">로그인
                                    </a>
                                    <!-- Dropdown - Messages -->
                                </li>

                            </c:otherwise>
                        </c:choose>
                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <h1 align="left">M.A.T 게시판> 글 상세> 댓글 삭제</h1>
                <div class="container-fluid" align="center">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <div class="container">
						<section id="container">
				<form name="updateForm" role="form" method="post" action="/puppy13/board/admin_replyDelete.do">
					<input type="hidden" name="bno" value="${replyDelete.bno}" readonly="readonly"/>
					<input type="hidden" id="rno" name="rno" value="${replyDelete.rno}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
						
					<div>
						<p>댓글을 삭제 하시겠습니까?</p>
						<button type="submit" class="btn btn-danger">예, 삭제합니다.</button>
						<button type="button" class="cancel_btn btn btn-info">아니오, 삭제하지 않습니다.</button>
					</div>
				</form>
			</section>

						<a class="btn btn-default" href="/puppy13/board/list.do">목록</a>
						<a class="btn btn-default" href="/puppy13/board/writeView.do">글 작성</a>

					</div>
				</form>
			</section>
			</div>
                    </div>

                    <!-- Footer -->
                    <footer class="sticky-footer bg-white">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; Your Website 2020</span>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>


            <!-- Bootstrap core JavaScript-->
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="js/sb-admin-2.min.js"></script>

            <!-- Page level plugins -->
            <script src="vendor/chart.js/Chart.min.js"></script>

            <!-- Page level custom scripts -->
            <script src="js/demo/chart-area-demo.js"></script>
            <script src="js/demo/chart-pie-demo.js"></script>
						<script src="http://code.jquery.com/jquery-latest.min.js"></script>
						<script>

							$(document).ready(function(){
									var formObj = $("form[name='updateForm']");
									
									$(".cancel_btn").on("click", function(){
										location.href = "/puppy13/board/admin_readView.do?bno=${replyDelete.bno}"
											   + "&page=${scri.page}"
											   + "&perPageNum=${scri.perPageNum}"
											   + "&searchType=${scri.searchType}"
											   + "&keyword=${scri.keyword}";
									})
									
								})
								
						</script>

</body>

</html>