<%@ page import="kopo.poly.dto.CommunityDTO" %>
<%@ page import="kopo.poly.util.CmmUtil" %>
<%@ page import="java.util.List" %>
<%@ page import="kopo.poly.controller.CommunityController" %>
<%--밑에 거 JSTL 라이브러리를 사용하기위한 것--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>



<%
//     NoticeController 함수에서 model 객체에 저장된 값 불러오기
//CommunityDTO rDTO = (CommunityDTO) request.getAttribute("rDTO");
    List<CommunityDTO> rList = (List<CommunityDTO>) request.getAttribute("rList");
%>

<%--<%--%>
<%--    List<CommunityDTO> rList = (List<CommunityDTO>) request.getAttribute("rList");--%>
<%--    for (CommunityDTO community : rList) {--%>
<%--        out.println("CommunityDTO: " + community.toString());--%>
<%--    }--%>
<%--%>--%>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>장바구니 커뮤니티</title>
    <script type="text/javascript">

        //커뮤니티 상세보기 이동
        function doDetail(cseq){
            location.href= "/community/communityInfo?cseq=" + cseq;
        }

    </script>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com">

    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&family=Open+Sans&display=swap" rel="stylesheet">

    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <link href="/css/bootstrap-icons.css" rel="stylesheet">


    <style>
<%--        여기밑에는 기본 색설정--%>
:root {
    --white-color: #ffffff;
    --primary-color: #13547a;
    --secondary-color: #ffffff;
    --section-bg-color: #f0f8ff;
    --custom-btn-bg-color: #80d0c7;
    --custom-btn-bg-hover-color: #13547a;
    --dark-color: #000000;
    --p-color: #717275;
    --border-color: #7fffd4;
    --link-hover-color: #13547a;

    --body-font-family: 'Open Sans', sans-serif;
    --title-font-family: 'Montserrat', sans-serif;

    --h1-font-size: 58px;
    --h2-font-size: 46px;
    --h3-font-size: 32px;
    --h4-font-size: 28px;
    --h5-font-size: 24px;
    --h6-font-size: 22px;
    --p-font-size: 20px;
    --menu-font-size: 14px;
    --btn-font-size: 18px;
    --copyright-font-size: 16px;

    --border-radius-large: 100px;
    --border-radius-medium: 20px;
    --border-radius-small: 10px;

    --font-weight-normal: 400;
    --font-weight-medium: 500;
    --font-weight-semibold: 600;
    --font-weight-bold: 700;
}

body {
    background-color: var(--white-color);
    font-family: var(--body-font-family);
}


/*---------------------------------------
  TYPOGRAPHY
-----------------------------------------*/

h2,
h3,
h4,
h5,
h6 {
    color: var(--dark-color);
}

h1,
h2,
h3,
h4,
h5,
h6 {
    font-family: var(--title-font-family);
    font-weight: var(--font-weight-semibold);
}

h1 {
    font-size: var(--h1-font-size);
    font-weight: var(--font-weight-bold);
}

h2 {
    font-size: var(--h2-font-size);
    font-weight: var(--font-weight-bold);
}

h3 {
    font-size: var(--h3-font-size);
}

h4 {
    font-size: var(--h4-font-size);
}

h5 {
    font-size: var(--h5-font-size);
}

h6 {
    color: var(--primary-color);
    font-size: var(--h6-font-size);
}

p {
    color: var(--p-color);
    font-size: var(--p-font-size);
    font-weight: var(--font-weight-normal);
}

ul li {
    color: var(--p-color);
    font-size: var(--p-font-size);
    font-weight: var(--font-weight-normal);
}

a,
button {
    touch-action: manipulation;
    transition: all 0.3s;
}

a {
    display: inline-block;
    color: var(--primary-color);
    text-decoration: none;
}

a:hover {
    color: var(--link-hover-color);
}

b,
strong {
    font-weight: var(--font-weight-bold);
}

<%--여기까지는 root 무조건 있어야하는거--%>
<%--위에 상단 바 css--%>
.navbar-expand-lg .navbar-nav .nav-link {
    border-radius: var(--border-radius-large);
    margin: 10px;
    padding: 10px;
}

.navbar-expand-lg .navbar-nav .nav-link {
    padding: 0;
}
.navbar-expand-lg .navbar-nav .nav-link {
    padding: 0;
}
.navbar-expand-lg .navbar-nav .nav-link {
    border-radius: var(--border-radius-large);
    margin: 10px;
    padding: 10px;
}

/*이건 로고부분 css*/
.navbar-brand,
.navbar-brand:hover {
    font-size: var(--h3-font-size);
    font-weight: var(--font-weight-bold);
    display: block;
}

.navbar-brand span {
    font-family: var(--title-font-family);
}
/*여기까지 로고부분 css*/

<%--여기까지 상단 바 css--%>


        /*여기서 부터    */
        .fixed_headers table {
            border-collapse: collapse;
        }

        .fixed_headers th,
        .fixed_headers td {
            padding: 8px;
            text-align: center;
            border: 1px solid #000;
        }

        .fixed_headers thead {
            background-color: #333333;
            color: #fdfdfd;
        }

        .fixed_headers tbody {

            display: contents;
            overflow: auto;
        }

        .fixed_headers tbody tr:nth-child(even) {
            background-color: #dddddd;
        }

.hero-section {
    /*background-image: linear-gradient(15deg, #13547a 0%, #80d0c7 100%);*/
    background-image: linear-gradient(15deg, #ffffff 0%, #ffffff 100%);
    position: relative;
    overflow: hidden;
    padding-top: 30px;
    padding-bottom: 50%;

    /*    여기가 게시판 뒷 공간 배경 설정*/
}

/*    여기까지는 게시판 css*/

    </style>


</head>

<body id="top">

<main>

    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="communityList">
                <i class="bi-back"></i>
                <span>JangBagunI</span>
            </a>

            <div class="d-lg-none ms-auto me-4">
                <a href="#top" class="navbar-icon bi-person smoothscroll"></a>
            </div>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-lg-5 me-lg-auto">
                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_1">커뮤니티게시판</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_2">Browse Topics</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_3">How it works</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_4">FAQs</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link click-scroll" href="#section_5">Contact</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarLightDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Pages</a>

                        <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">
                            <li><a class="dropdown-item" href="topics-listing.html">Topics Listing</a></li>

                            <li><a class="dropdown-item" href="contact.html">Contact Form</a></li>
                        </ul>
                    </li>
                </ul>

                <div class="d-none d-lg-block">
                    <a href="#top" class="navbar-icon bi-person smoothscroll"></a>
                </div>
            </div>
        </div>
    </nav>


    <section class="hero-section d-flex justify-content-center align-items-center" id="section_1">
        <div class="container">
            <div class="row">
                <table class="fixed_headers">
                    <h1>회원 커뮤니티 게시판</h1>
                    <div style="text-align: right"><a href="/community/communityReg">글쓰기</a></div>
                    <thead>
                    <tr>
                        <th style="width: 100px;">순번</th>
                        <th style="width: 500px;">제목</th>
                        <th style="width: 150px;">조회수</th>
                        <th style="width: 300px;">등록자</th>
                        <th style="width: 250px;">등록일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        for(CommunityDTO dto : rList) {
                    %>
                        <tr style="width: 100%">
                            <td onclick="doDetail(<%=CmmUtil.nvl(dto.getCommunitySeq())%>)"><%=CmmUtil.nvl(dto.getCommunitySeq())%></td>
                            <td onclick="doDetail(<%=CmmUtil.nvl(dto.getCommunitySeq())%>)"><%=CmmUtil.nvl(dto.getTitle())%></td>
                            <td><%=CmmUtil.nvl(dto.getReadCnt())%></td>
                            <td><%=CmmUtil.nvl(dto.getRegId())%></td>
                            <td><%=CmmUtil.nvl(dto.getRegDt())%></td>
                        </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</main>

<footer class="site-footer section-padding">
    <hr/>
    <br/>
    <div class="container">
        <div class="row">


        </div>
    </div>
</footer>


<%--<!-- JAVASCRIPT FILES -->--%>
<%--<script src="js/jquery.min.js"></script>--%>
<%--<script src="js/bootstrap.bundle.min.js"></script>--%>
<%--<script src="js/jquery.sticky.js"></script>--%>
<%--<script src="js/click-scroll.js"></script>--%>
<%--<script src="js/custom.js"></script>--%>


</body>
