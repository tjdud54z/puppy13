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
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo" onclick="loginck_usermypage()">
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
                <div class="container-fluid">
                <h1 align="left">M.A.T 게시판> 글 상세</h1>
                                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <div class="container">
			<section id="container">
				<c:if test="${sessionScope.nickname ==  read.writer}">
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
					<button type="button" class="update_btn btn btn-warning">수정</button>
					<button type="button" class="delete_btn btn btn-danger">삭제</button>
					<button type="button" class="list_btn btn btn-primary">목록</button>	
				</div>
				</c:if>
				<c:if test="${sessionScope.nickname !=  read.writer}">
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
							<a href="#" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE} KB)<br>
						</c:if>
					</c:forEach>
				</div>			
				</form>
				
				</c:if>
				<br>
				
				<!-- 댓글 -->
				<div id="reply">
					<ol class="replyList">
						
						<c:forEach items="${replyList}" var="replyList">
							<c:choose>
								<c:when test="${replyList.del_gb eq 'N' }">
									<c:if test="${sessionScope.nickname eq  replyList.writer}">
										<li>
											<p>
											작성자 : ${replyList.writer}<br>
											작성 날짜 :  <fmt:formatDate value="${replyList.regdate}" pattern="yyyy-MM-dd HH:mm"/><br>
											**********************************
											</p>
											${replyList.content}
											<br><br>
											<div>
												<button type="button" class="replyUpdateBtn btn btn-warning" data-rno="${replyList.rno}">수정</button>
												<button type="button" class="replyDeleteBtn btn btn-danger" data-rno="${replyList.rno}">삭제</button>
											</div>
											<br>
										</li>
									</c:if>
									<c:if test="${sessionScope.nickname ne  replyList.writer}">
										<li>
											<p>
											작성자 : ${replyList.writer}<br>
											작성 날짜 :  <fmt:formatDate value="${replyList.regdate}" pattern="yyyy-MM-dd HH:mm"/><br>
											**********************************
											</p>
											${replyList.content}
											<br><br>
										</li>
									</c:if>
								</c:when>
							</c:choose>
						</c:forEach>
					</ol>
				</div>
				
				<form name="replyForm" method="post" class="form-horizontal">
					<input type="hidden" id="bno" name="bno" value="${read.bno}" />
					<input type="hidden" id="page" name="page" value="${scri.page}"> 
					<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
					<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
					<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}"> 
					<c:choose>                    
                    <c:when test="${sessionScope.id != null}">
					<div class="form-group">
						<label for="writer" class="col-sm-2 control-label"><b>댓글 작성자</b></label>
						<div class="col-sm-10">
							<input style="width: 500px;" type="text" id="writer" name="writer" class="form-control" value="${nickname}" readonly="readonly"/>
						</div>
					</div>
					
					<div class="form-group">
						<label for="content" class="col-sm-2 control-label"><b>댓글 내용</b></label>
						<div class="col-sm-10">
							<textarea style="width: 500px; height: 100px;" id="content" name="content" class="form-control"></textarea>
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="button" class="replyWriteBtn btn btn-success">작성</button>
						</div>
					</div>
					</c:when>
					<c:otherwise>
						<p>댓글은 로그인 후에 입력이 가능합니다.</p>
                    </c:otherwise>
                    </c:choose>
				</form>
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
			
			// 수정 
			$(".update_btn").on("click", function(){
				var sessionlogin = '<%=(String)session.getAttribute("nickname") %>';
				var deleteYN = confirm("수정하시겠습니까?");
/* 				if(sessionlogin != document.wrt.writer.value){	
					alert("작성자가 아닌 이상 수정이 불가능합니다.");
					 return;	
				} */
				if(deleteYN == true){
				formObj.attr("action", "/puppy13/board/updateView.do");
				formObj.attr("method", "get");
				formObj.submit();
				}
			})
			
			// 삭제
			$(".delete_btn").on("click", function(){
				var sessionlogin = '<%=(String)session.getAttribute("nickname") %>';
				var deleteYN = confirm
				(" ※ 삭제 전,아래 내용을 꼭 확인해주세요!!\n\n --수정을 통해 이미지파일을 꼭 삭제해주세요\n(완전한 삭제를 위함. 삭제를 안하시면 게시판 삭제 시 이미지 파일은 남아 있을 수 있습니다. (단, 그냥 삭제 하셔도 관리자가 직접 게시판 삭제여부 확인 후 이미지 파일을 지워 드립니다.))\n\n삭제하시겠습니까? ");
				/* var file = '<c:out value="${file}"/>'; */
/* 				if(sessionlogin != document.wrt.writer.value){	
					alert("작성자가 아닌 이상 삭제가 불가능합니다.");
					 return;	
				} */
				if(deleteYN == true){
					formObj.attr("action", "/puppy13/board/userdelboard.do");
					formObj.attr("method", "post");
					formObj.submit();
				}
			})
			
			// 목록
			$(".list_btn").on("click", function(){
				
				location.href = "/puppy13/board/list.do?page=${scri.page}"
						      +"&perPageNum=${scri.perPageNum}"
						      +"&searchType=${scri.searchType}&keyword=${scri.keyword}";
			})
			
			$(".replyWriteBtn").on("click", function(){
				var formObj = $("form[name='replyForm']");
				formObj.attr("action", "/puppy13/board/replyWrite.do");
				formObj.submit();
			});
			
			//댓글 수정 View
			$(".replyUpdateBtn").on("click", function(){
				location.href = "/puppy13/board/replyUpdateView.do?bno=${read.bno}"
								+ "&page=${scri.page}"
								+ "&perPageNum=${scri.perPageNum}"
								+ "&searchType=${scri.searchType}"
								+ "&keyword=${scri.keyword}"
								+ "&rno="+$(this).attr("data-rno");
			});
			
			//댓글 삭제 View
			$(".replyDeleteBtn").on("click", function(){
				location.href = "/puppy13/board/replyDeleteView.do?bno=${read.bno}"
					+ "&page=${scri.page}"
					+ "&perPageNum=${scri.perPageNum}"
					+ "&searchType=${scri.searchType}"
					+ "&keyword=${scri.keyword}"
					+ "&rno="+$(this).attr("data-rno");
			});
		})
		
		//마이페이지 유효성
		 function loginck_usermypage() {
				var sessionlogin = '<%=(String)session.getAttribute("id") %>';
				if(sessionlogin == "null"){	
					alert("로그인을 해야지 가능한 기능입니다.");
					location.href="/puppy13/login.do";	
				}else{	
					location.href("/puppy13/usermypage.do");
				}
			}
		
		//마이페이지 이용
		 function loginck_usermypage() {
				var sessionlogin = '<%=(String)session.getAttribute("id") %>';
				if(sessionlogin == "null"){	
					alert("로그인을 해야지 가능한 기능입니다.");
					location.href="/puppy13/login.do";	
				}else{	
					location.replace("/puppy13/usermypage.do");
				}
			}
		
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