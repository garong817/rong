<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#logBtn').click(function(){
		let id=$('#log_id').val();
		if(id.trim()==="")
		{
			$('#log_id').focus();
			return;
		}
		let pwd=$('#log_pwd').val()
		if(pwd.trim()==="")
		{
			$('#log_pwd').focus()
			return;
		}
		
		$.ajax({
			type:'post',
			url:'../member/login.do',
			data:{"id":id,"pwd":pwd},
			success:function(result)
			{
				// NOID , NOPWD , OK
				if(result==='NOID')
				{
					alert("아이디 존재하지 않습니다")
					$('#log_id').val("");
					$('#log_pwd').val("");
					$('#log_id').focus()
				}
				else if(result==='NOPWD')
				{
					alert("비밀번호가 틀립니다")
					$('#log_pwd').val("");
					$('#log_pwd').focus()
				}
				else
				{
					location.href="../main/main.do"
				}
			}
		})
	})
	$('#logoutBtn').on('click',function(){
		location.href="../member/logout.do"
	})
});
</script>
</head>
<body>
	<!-- Spinner Start -->
        <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" role="status"></div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar start -->
        <div class="container-fluid fixed-top">
            <div class="container topbar bg-primary d-none d-lg-block">
                <div class="d-flex justify-content-between">
                    <div class="top-info ps-2">
                        <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#" class="text-white">대한민국</a></small>
                        <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#" class="text-white">barocamp@gmai.com</a></small>
                    </div>
                    <div class="top-link pe-2">
                        <a href="../member/login_form.do" class="text-white"><small class="text-white mx-2">로그인</small>/</a>
                        <a href="../member/join.jsp" class="text-white"><small class="text-white mx-2">회원가입</small></a>
                        <a href="#" class="text-white"><small class="text-white ms-2">고객센터</small></a>
                    </div>
                </div>
            </div>
            <div class="container px-0">
                <nav class="navbar navbar-light bg-white navbar-expand-xl">
                    <a href="../main/main.do" class="navbar-brand"><h1 class="text-primary display-6">바로캠핑</h1></a>
                    <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-primary"></span>
                    </button>
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="index.html" class="nav-item nav-link active">홈</a>
                            <a href="../gocamping/list.do" class="nav-item nav-link">캠핑예약</a>
                            <!-- <a href="shop-detail.html" class="nav-item nav-link">Shop Detail</a> -->
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">캠핑용품</a>
                                <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                    <a href="../store/new.do" class="dropdown-item">신규등록상품</a>
                                    <a href="../store/backpacking.do" class="dropdown-item">백패킹/하이킹</a>
                                    <a href="../store/long.do" class="dropdown-item">장박추천용품</a>
                                    <a href="../store/travel.do" class="dropdown-item">여행용품</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">커뮤니티</a>
                        </div>
                        <div class="d-flex m-3 me-0">
                            <button class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search text-primary"></i></button>
                            <a href="#" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <span class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1" style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                            </a>
                            <a href="#" class="my-auto">
                                <i class="fas fa-user fa-2x"></i>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
</body>
</html>