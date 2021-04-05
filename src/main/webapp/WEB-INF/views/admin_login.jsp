<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <style type="text/css">
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

        input[type=text] {
            background-color: white;
            background-position: 10px 10px;
            background-repeat: no-repeat;
            padding-left: 0px;
            font-family: "Lucida Console", Courier, monospace;
            text-align: center;
        }

        input[type=button] {
            font-family: "Lucida Console", Courier, monospace;
            background-color: gray;
            color: white;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }

        input[type=reset] {
            font-family: "Lucida Console", Courier, monospace;
            background-color: gray;
            color: white;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }

        input[type=button] {
            font-family: "Lucida Console", Courier, monospace;
            background-color: gray;
            color: white;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }

        input[type=password] {
            background-color: white;
            background-position: 10px 10px;
            background-repeat: no-repeat;
            padding-left: 0px;
            font-family: "Lucida Console", Courier, monospace;
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
    <div class="card align-middle" style="width:20rem; border-radius:20px; margin:0 auto;">
        <div class="card-title" style="margin-top:30px;">
            <h2 class="card-title text-center" style="color:#113366;">M.A.T 관리자</h2>
        </div>
        <div class="card-body">
            <form class="form-signin" name="frmLoing">
                <label class="sr-only">Your ID</label>
                <input type="text" id="id" name="id" class="form-control" placeholder="Your ID" required autofocus><BR>
                <label class="sr-only">Password</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required><br>
                <button id="btnLogin" class="btn btn-lg btn-primary btn-block" type="button">로 그 인</button>
            </form>
        </div>
    </div><br>

    <!-- Low -->
    <div class="modal"></div>
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; M.A.T Website Sines: 2020</span>
        </div>
    </div>

    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $("#btnLogin").click(function() {
                var id = $("#id").val();
                var password = $("#password").val();
                if (id == '') {

                    alert("아이디를 입력하세요.");
                    $("#id").focus();
                    return;

                }
                if (password == '') {

                    alert("비밀번호를 입력하세요.");
                    $("#password").focus();
                    return;

                }
                if (id != 'admin' || password != 'admin') {

                    alert("관리자 계정이 유효하지 않습니다.정확히 입력해주세요.");
                    $("#id").focus();
                    return;

                } else if (id == 'admin' && password == 'admin') {

                    alert("어서오세요 M.A.T 관리자님 환영합니다.");
                    document.frmLoing.method = "post";
                    document.frmLoing.action = "/puppy13/admin_member.do";
                    document.frmLoing.submit();

                }


            });
        });
    </script>
</body>

</html>