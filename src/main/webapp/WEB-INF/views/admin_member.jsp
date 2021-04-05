<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>나의 반려견 사랑</title>
<link rel="shortcut icon" type="image⁄x-icon" href="resources/image/pat.png">
<link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/puppy13/index.do">
                <div class="sidebar-brand-icon rotate-n-15">
                 <img alt="이미지 없음." src="resources/image/pat.png" width="50" height="50">
                </div>
                <div class="sidebar-brand-text mx-3">M.A.T</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
            <p>동물을 사랑하는 사람들의 모임.<br>
                                  우리 M.A.T에서 나의 반려견을 자랑하고<br>
                                  나만의 꿀팁을 공유하자!<br><br>
                                  반려견의 친구 M.A.T !!
            </p><br><br>
            <img class="sidebar-brand-icon rotate-n-90" src="resources/image/puppy3.gif" width="140" height="160"><br><br>
            </div>
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="/puppy13/admin_member.do" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>회원관리</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="/puppy13/board/admin_board.do" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>게시판/댓글 관리</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="/puppy13/board/admin_File.do" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>이미지 파일 관리</span>
                </a>
            </li>
        </ul>
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
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><b style="color: black">현 페이지는 <b style="color: red">관리자</b> 전용 페이지입니다.</b>
                            </a>
                        </li>
                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1><b>관리자> 회원 관리</b></h1>
                    </div>

          	<table class="table table-bordered">
			<tr style="font-size:15px; background-color:lightblue ; text-align: center;">
				<td><strong>아이디</strong></td>
				<td><strong>비밀번호</strong></td>
				<td><strong>이름</strong></td>
				<td><strong>별명</strong></td>
				<td><strong>번호</strong></td>
				<td><strong>이메일</strong></td>
				<td><strong>가입일</strong></td>
				<td><strong>탈퇴여부</strong></td>
				<td><strong>회원삭제</strong></td>
			</tr>
			
	<c:choose>
<%-- 	<c:when test="${memsList == null}" > --%>
		<c:when test="${empty membersList}" >
			<tr align=center>
				<td colspan=7>
					<b>등록된 회원이 없습니다.</b>
				</td>
			</tr>
		</c:when>
<%-- 	<c:when test="${membersList != null}" > --%>
		<c:when test="${not empty membersList}" >
			<c:forEach  var="member" items="${membersList}" >
				<tr align="center">
					<td>${member.id}</td>
					<td>${member.password}</td>
					<td>${member.name}</td>    
					<td>${member.nickname}</td>
					<td>${member.phone}</td> 
					<td>${member.email}</td>     
					<td>${member.joindate}</td>
					<c:if test="${member.outuser == 'NO'}">
						<td>${member.outuser}</td>
					</c:if>
					<c:if test="${member.outuser == 'YES'}">
						<td style="color: red;"><b>${member.outuser}</b></td>
					</c:if>
					<td><a class="btn btn-danger btn-sm" href="/puppy13/User13/removeUser13.do?id=${member.id}">삭제</a></td>	
				</tr>
			</c:forEach>
		</c:when>
	</c:choose>
	</table>
	<br>
                    
            <!-- End of Main Content -->

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
</body>
</html>