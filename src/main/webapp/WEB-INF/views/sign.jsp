<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <style type="text/css">
        body {
            background-color: rgb(247, 243, 228);
        }

        a.a1 {
            color: #ffffff;
            background: lightblue;
            font-size: 1.0em;
            padding: 0.3em 0.5em;
            margin-right: 0.1em;
            font-family: Impact, Charcoal, sans-serif;

        }

        a.a1:link {
            color: white;
            text-decoration: none;
        }

        a.a1:visited {
            color: white;
            text-decoration: none;
        }

        a.a1:hover {
            color: white;
            text-decoration: underline;
        }

        a.a2 {
            color: #ffffff;
            background: none;
            font-size: 1.2em;
            padding: 0.3em 0.5em;
            margin-right: 0.1em;
            font-family: Impact, Charcoal, sans-serif;

        }

        a.a2:link {
            color: gray;
            text-decoration: none;
        }

        a.a2:visited {
            color: gray;
            text-decoration: none;
        }

        a.a2:hover {
            color: gray;
            text-decoration: underline;
        }

        p.p1 {
            font-family: Impact, Charcoal, sans-serif;
            text-align: center;
        }

        h1.h1 {
            color: blue;
            font-family: Impact, Charcoal, sans-serif;
            text-align: center;
        }

        from.form1 {
            font-family: Impact, Charcoal, sans-serif;
            text-align: center;
        }

        div.div1 {
            text-align: center;
        }

        #nav_menu ul {
            text-align: center;
            list-style-type: none;
            padding-left: 0px;
            margin: center;
        }

        #nav_menu ul li {
            display: inline;
            border-left: 1px solid #c0c0c0;
            padding: 0px 10px 0px 10px;
            margin: 5px 0px 5px 0px;
        }

        #nav_menu ul li:first-child {
            border-left: none;
        }
    </style>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image⁄x-icon" href="resources/image/pat.png">
    <title>혁신적인 반려동물 정보 || M.A.T</title>
    <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body>
    <!-- Top -->
    <div class="div1">
        <br><img alt="이미지업음" src="resources/image/puppy3.gif" width="200px" height="200px"><br><br>
    </div>

    <!-- Middle -->
    <section>

        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <div class="col-sm-3"></div>

                    <div class="col-sm-6" style="margin: 0 auto;">
                        <br>
                        <h2>M.A.T 회원가입</h2><br>
                        <form name="frmSignup" action="/puppy13/login.do" method="post">
                            <table class="table table-boardered">

                                <tr>
                                    <th>아이디</th>

                                    <td><input type="text" class="form-control" id="inputId" name="id" placeholder="영문+숫자를 조합하여 입력해주세요" />
                                        <input type="button" class="btn btn-default btn-sm pull-left" id="btn_duplicate1" value="아이디 중복체크" onClick="IdCheck()" />
                                    </td>
                                </tr>

                                <tr>
                                    <th>패스워드</th>
                                    <td><input type="password" class="form-control" name="password" placeholder="비밀번호를 입력해주세요."></td>
                                </tr>

                                <tr>
                                    <th>패스워드확인</th>
                                    <td><input type="password" class="form-control" name="repassword" placeholder="비밀번호를 한번 더 입력해주세요"></td>
                                </tr>

                                <tr>
                                    <th>이름</th>
                                    <td><input type="text" class="form-control" name="name" placeholder="이름을 입력해주세요"></td>
                                </tr>

                                <tr>
                                    <th>닉네임</th>
                                    <td><input type="text" class="form-control" id="inputNickname" name="nickname" placeholder="별명을 입력해주세요">
                                        <input type="button" class="btn btn-default btn-sm pull-left" id="btn_duplicate2" value="닉네임 중복체크" onClick="nicknameCheck()" />
                                    </td>
                                </tr>

                                <tr>
                                    <th>전화번호</th>
                                    <td><input type="tel" class="form-control" name="phone" placeholder="'-'없이 입력해주세요"></td>
                                </tr>

                                <tr>
                                    <th>이메일</th>
                                    <td><input type="email" class="form-control" name="email" placeholder="이메일을 입력해주세요"></td>
                                </tr>

                                <tr>
                                    <td colspan="2">
                                        <input type="button" class="btn btn-primary" value="회원가입" onclick="check()">
                                        <input type="reset" class="btn btn-primary" value="다시입력">
                                        <a href="/puppy13/index.do"><input type="button" class="btn btn-danger" value="뒤로가기"></a>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <!-- Low -->
        <div class="modal"></div>
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; M.A.T Website Sines: 2020</span>
            </div>
        </div>

        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript">
            //기본 값 입력 상태 유효성
            function check() {

                if (document.frmSignup.id.value == "") {

                    alert("아이디를 입력하세요");
                    document.frmSignup.id.focus();
                    exit;

                } else if (document.frmSignup.password.value == "") {

                    alert("비밀번호를 입력하세요");
                    document.frmSignup.password.focus();
                    exit;

                } else if (document.frmSignup.repassword.value == "") {

                    alert("비밀번호를 한번더 입력하세요");
                    document.frmSignup.repassword.focus();
                    exit;

                } else if (document.frmSignup.name.value == "") {

                    alert("이름을 입력하세요");
                    document.frmSignup.name.focus();
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
				
/*                 //전화번호 유효성
                if (!document.frmSignup.phone.value.length() <= 11) {
                    return true;
                }else{
                 	alert("유효하지 않는 전화번호 입니다.");
                    return false;
                } */
                
                
                //이메일 유효성
                var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

                if (exptext.test(document.frmSignup.email.value) == false) {

                    alert("이 메일형식이 올바르지 않습니다.");
                    document.frmSignup.email.focus();
                    return false;

                }

                alert("M.A.T 회원가입에 성공했습니다. 로그인 해주세요.");
                frmSignup.method = "post";
                frmSignup.action = "/puppy13/User13/addUser13.do";
                frmSignup.submit();

            }
            
            	

            //아이디 중복 체크
            function IdCheck() {
                var _id = $("#inputId").val();

                if (_id == '') {
                    alert("사용할 ID를 먼저 입력해주세요.");
                    document.frmSignup.id.focus();
                    return;
                }

                $.ajax({
                    type: "post",
                    async: false,
                    url: "http://localhost:8080/puppy13/idCheck.do",
                    dataType: "text",
                    data: {
                        id: _id
                    },
                    success: function(data, textStatus) {
                        if (data == 'usable') {
                            alert("사용가능 ID입니다.");
                            $('#btn_duplicate1').prop("disabled", false);
                            $('#inputId').prop("readonly", false);
                        } else {
                            alert("중복되는 ID입니다.");
                        }
                    },
                    error: function(data, textStatus) {
                        alert("오류가 발생했습니다.");
                    }
                });
            }

            //닉네임 중복 체크
            function nicknameCheck() {
                var _nickname = $("#inputNickname").val();

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
                            $('#btn_duplicate2').prop("disabled", false);
                            $('#inputNickname').prop("readonly", false);
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