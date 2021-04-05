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
                <div class="container-fluid">
                <h1 align="left"><b>관리자> M.A.T 게시판> 글 상세</b></h1>
                                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <div class="container">
			<section id="container">

				<form name="readForm" role="form" method="post" enctype="multipart/form-data">
					<input type="hidden" id="bno" name="bno" value="${read.bno}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
					<input type="hidden" id="FILE_NO" name="FILE_NO" value=""> 
				</form>
				<form name="wrt">
				<div class="form-group">
					<label for="title" class="col-sm-2 control-label"><b>제목</b></label>
					<input style="width: 500px;" type="text" id="title" name="title" class="form-control" value="${read.title}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label for="content" class="col-sm-2 control-label"><b>내용</b></label>
					<textarea style="width: 500px; height: 300px;" id="content" name="content" class="form-control" readonly="readonly"><c:out value="${read.content}" /></textarea>
				</div>
				<div class="form-group">
					<label for="writer" class="col-sm-2 control-label"><b>작성자</b></label>
					<input style="width: 500px;" type="text" id="writer" name="writer" class="form-control" value="${read.writer}"  readonly="readonly"/>
				</div>
				<div class="form-group">
					<label for="regdate" class="col-sm-2 control-label"><b>작성날짜</b></label>
					<fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd HH:mm" />	
				</div>
				<hr>
				<span>파일 목록</span>
				<div class="form-group" style="border: 1px solid #dbdbdb;">
					<c:forEach var="file" items="${file}">
						<c:if test="${file.DEL_GB == 'N'}">
							<a href="" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE} KB)<br>
						</c:if>
					</c:forEach>
				</div>			
				</form>
				<hr>
				<div>
					<button type="button" class="delete_btn btn btn-danger">삭제</button>
					<button type="button" class="list_btn btn btn-primary">목록</button>	
				</div>
	
				
				<br>
				
				<!-- 댓글 -->
				<div id="reply">
					<ol class="replyList">
						
						<c:forEach items="${replyList}" var="replyList">
										<li>
											<p>
											작성자 : ${replyList.writer}<br>
											작성 날짜 :  <fmt:formatDate value="${replyList.regdate}" pattern="yyyy-MM-dd HH:mm"/><br>
											내용 : ${replyList.content}
											</p>
											<c:if test="${replyList.del_gb == 'N'}">
												<p style="font-size: 30px;">삭제여부 :
												<b style="color: blue;">${replyList.del_gb}</b></p>
											</c:if>
											<c:if test="${replyList.del_gb == 'Y'}">
												<p style="font-size: 30px;">삭제여부 :
												<b style="color: red;">${replyList.del_gb}</b></p>
											</c:if>
											<div>
												<button type="button" class="replyDeleteBtn btn btn-danger" data-rno="${replyList.rno}">삭제</button>
											</div>
											<br>
										</li>
						</c:forEach>
					</ol>
				</div>
			</section>
			<hr />
		</div>
		</div>
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
	<script type="text/javascript">
		
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 삭제
			$(".delete_btn").on("click", function(){
				var deleteYN = confirm("관리자 권한으로 삭제합니다.\n\n진행 하시겠습니까?");
				/* var file = '<c:out value="${file}"/>'; */
/* 				if(sessionlogin != document.wrt.writer.value){	
					alert("작성자가 아닌 이상 삭제가 불가능합니다.");
					 return;	
				} */
				if(deleteYN == true){
					formObj.attr("action", "/puppy13/board/delete.do");
					formObj.attr("method", "post");
					formObj.submit();
				}
			})
			
			// 목록
			$(".list_btn").on("click", function(){
				
				location.href = "/puppy13/board/admin_board.do?page=${scri.page}"
						      +"&perPageNum=${scri.perPageNum}"
						      +"&searchType=${scri.searchType}&keyword=${scri.keyword}";
			})
			
			$(".replyWriteBtn").on("click", function(){
				var formObj = $("form[name='replyForm']");
				formObj.attr("action", "/puppy13/board/replyWrite.do");
				formObj.submit();
			});

			//댓글 삭제 View
			$(".replyDeleteBtn").on("click", function(){
				location.href = "/puppy13/board/admin_replyDeleteView.do?bno=${read.bno}"
					+ "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}"
					+ "&rno="+$(this).attr("data-rno");
			});
		})

		
		//파일 다운로드
		function fn_fileDown(fileNo){
			
			var formObj = $("form[name='readForm']");
			$("#FILE_NO").attr("value", fileNo);
			formObj.attr("action", "/puppy13/board/fileDown.do");
			formObj.submit();
			
		}
		
	</script>
</body>

</html>