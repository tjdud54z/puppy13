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
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/puppy13/index.do">
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
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><b style="color: black">현 페이지는 <b style="color: red">관리자</b> 전용 페이지입니다.</b>
                            </a>
                        </li>
                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid" align="center">
				<h1 align="left"><b>관리자> M.A.T 게시판</b></h1>
                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <div class="container">
                    
			<section id="container">
			
					<form role="form" method="get">
						
						<table class="table table-hover">
							<thead>
								<tr>
									<th>파일번호</th>
									<th>게시판번호</th>
									<th>파일이름</th>
									<th>파일크기</th>
									<th>파일날짜</th>
									<th>삭제여부</th>
									<th>삭제</th>
								</tr>
							</thead>
							
							<c:forEach items="${fileList}" var = "fileList">
								<tr>

										<td>${fileList.file_no}</td>
										<td>${fileList.bno}</td>
										<td>${fileList.org_file_name}</td>
										<%-- <td>${fileList.stored_file_name}</td> --%>
										<td>${fileList.file_size} KB</td>
										<td>${fileList.regdate}</td>
										<c:if test="${fileList.del_gb == 'N'}">
											<td style="color: blue"><b>${fileList.del_gb}</b></td>
										</c:if>
										<c:if test="${fileList.del_gb == 'Y'}">
											<td style="color: red"><b>${fileList.del_gb}</b></td>
										</c:if>
										<td><a href="/puppy13/board/FileDelete.do?file_no=${fileList.file_no}">삭제하기</a></td>
										
								</tr>
							</c:forEach>
						
					</table>
					&nbsp;&nbsp;
					<div class="search row" align="center">
						<div class="col-xs-2 col-sm-2">
							<select name="searchType" class="form-control">
								<option value="x"<c:out value="${scri.searchType == 'x' ? 'selected' : ''}"/>>삭제여부</option>
								<option value="num"<c:out value="${scri.searchType == 'num' ? 'selected' : ''}"/>>게시판번호</option>
							</select>
						</div>
						 
						<div class="col-xs-10">
							<div class="input-group">
								<input style="width: 800px;" type="text" name="keyword" id="keywordInput" value="${scri.keyword}" class="form-control"/>
								<span class="input-group-btn">
									&nbsp;&nbsp;<button id="searchBtn" type="button" class="btn btn-info">검색</button>	
								</span>
							</div>
						</div>
					</div>
					<br>
					
<%-- 					<div class="col-md-offset-3" align="center">

						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li><a href="FileSearch.do${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
								&nbsp;&nbsp;&nbsp;&nbsp;
							</c:if> 
							
							<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
								<li <c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
								<a href="FileSearch.do${pageMaker.makeSearch(idx)}">${idx}</a></li>
								&nbsp;&nbsp;&nbsp;&nbsp;
							</c:forEach>
							
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a href="FileSearch.do${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
								&nbsp;&nbsp;&nbsp;&nbsp;
							</c:if> 
						</ul>

						<a class="btn btn-default" href="/puppy13/board/list.do">목록</a>
						<a class="btn btn-default" onclick="loginck_brdwrite()">글 작성</a>

					</div> --%>
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
						
							 $(function(){
								 $('#searchBtn').click(function() {
									 self.location = "admin_File.do"
									 			   /* + '${pageMaker.makeQuery(1)}' */  
									 			   + "?searchType=" 
									 			   + $("select option:selected").val() 
									 			   + "&keyword=" 
									 			   + encodeURIComponent($('#keywordInput').val());
								 });
							 });
						</script>
</body>

</html>