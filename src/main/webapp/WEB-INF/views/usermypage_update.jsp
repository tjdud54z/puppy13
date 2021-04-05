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
                <br>
                <p>동물을 사랑하는 사람들의 모임.<br>
                    우리 M.A.T에서 나의 반려견을 자<br>
                    랑하고 나만의 꿀팁을 공유하자!<br><br>
                    반려견의 친구 M.A.T !!
                </p><br><br>
                <img class="sidebar-brand-icon rotate-n-90" src="resources/image/puppy3.gif" width="140" height="160"><br><br>
            </div>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>게시판</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
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
                <div class="container-fluid" align="center">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800"><b>마이페이지> 정보수정</b></h1>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 text-center">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6" style="margin: 0 auto;">
                                    <br>
                                    <h2>M.A.T 정보수정</h2><br>
                                    <form name="frmSignup">
                                        <table class="table table-boardered">

                                            <tr>
                                                <th>아이디</th>
                                                <td><input type="text" class="form-control" id="inputId" name="id" value="${id}" readonly="readonly" /></td>
                                            </tr>

                                            <tr>
                                                <th>패스워드</th>
                                                <td><input type="password" class="form-control" name="password" value="${password}" placeholder="변경할 비밀번호를 입력해주세요"></td>
                                            </tr>

                                            <tr>
                                                <th>패스워드확인</th>
                                                <td><input type="password" class="form-control" name="repassword" placeholder="비밀번호를 한번 더 입력해주세요"></td>
                                            </tr>

                                            <tr>
                                                <th>이름</th>
                                                <td><input type="text" class="form-control" name="name" value="${name}" readonly="readonly"></td>
                                            </tr>

                                            <tr>
                                                <th>닉네임</th>
                                                <td><input type="text" class="form-control" id="inputnickname" name="nickname" placeholder="별명을 입력해주세요">
                                                    <input type="button" class="btn btn-default btn-sm pull-left" id="btn_duplicate2" value="닉네임 중복체크" onClick="nicknameCheck()" />
                                                </td>
                                            </tr>

                                            <tr>
                                                <th>전화번호</th>
                                                <td><input type="tel" class="form-control" name="phone" placeholder="전화번호를 -를뺴고 입력해주세요"></td>
                                            </tr>

                                            <tr>
                                                <th>이메일</th>
                                                <td><input type="email" class="form-control" name="email" placeholder="이메일을 입력해주세요"></td>
                                            </tr>

                                            <tr>
                                                <td colspan="2">
                                                    <input type="button" class="btn btn-primary" value="수정하기" onclick="check()">
                                                    <input type="reset" class="btn btn-primary" value="다시입력">
                                                    <a href="/puppy13/usermypage.do"><input type="button" class="btn btn-danger" value="뒤로가기"></a>
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
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
                //기본 값 입력 상태 유효성
                function check() {

                    if (document.frmSignup.password.value == "") {

                        alert("비밀번호를 입력하세요");
                        document.frmSignup.password.focus();
                        exit;

                    } else if (document.frmSignup.repassword.value == "") {

                        alert("비밀번호를 한번더 입력하세요");
                        document.frmSignup.repassword.focus();
                        exit;

                    } else if (document.frmSignup.nickname.value == "") {

                        alert("닉네임을 입력하세요");
                        document.frmSignup.nickname.focus();
                        exit;

                    } else if (document.frmSignup.phone.value == "") {

                        alert("전화번호를 입력하세요");
                        document.frmSignup.phone.focus();
                        exit;

                    } else if (document.frmSignup.email.value == "") {

                        alert("이메일을 입력해주세요");
                        document.frmSignup.email.focus();
                        exit;

                    }

                    //비밀번호 일치 유효성
                    if (document.frmSignup.password.value != document.frmSignup.repassword.value) {

                        alert("입력한 2개의 비밀번호가 일치하지 않습니다.");
                        document.addjoin.password.focus();
                        exit;

                    }

                    //비밀번호 유효성
                    if (!/^[a-zA-Z0-9]{5,15}$/.test(document.frmSignup.password.value)) {
                        alert("비밀번호는 숫자와 영문자 조합으로 5~15자리를 사용해야 합니다.");
                        document.frmSignup.password.focus();
                        return false;
                    }

                    //이메일 유효성
                    var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

                    if (exptext.test(document.frmSignup.email.value) == false) {

                        alert("이 메일형식이 올바르지 않습니다.");
                        document.frmSignup.email.focus();
                        return false;

                    }

                    alert("정보수정이 완료 되었습니다. 다시 로그인 해주세요.");
                    frmSignup.method = "post";
                    frmSignup.action = "/puppy13/updateUser13.do";
                    frmSignup.submit();

                }

                //닉네임 중복 체크
                function nicknameCheck() {
                    var _nickname = $("#inputnickname").val();

                    if (_nickname == '') {
                        alert("사용할 닉네임를 먼저 입력해주세요.");
                        document.frmSignup.nickname.focus();
                        return;
                    }

                    $.ajax({
                        type: "post",
                        async: false,
                        url: "http://localhost:8080/puppy13/nicknameCheck.do",
                        dataType: "text",
                        data: {
                            nickname: _nickname
                        },
                        success: function(data, textStatus) {
                            if (data == 'usable') {
                                alert("사용가능 닉네임입니다.");
                                $('#btn_duplicate2').prop("disabled", true);
                                $('#inputnickname').prop("readonly", true);
                            } else {
                                alert("중복되는 닉네임입니다.");
                            }
                        },
                        error: function(data, textStatus) {
                            alert("오류가 발생했습니다.");
                        }
                    });
                }
            </script>
</body>

</html>