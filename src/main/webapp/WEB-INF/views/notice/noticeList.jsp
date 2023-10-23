<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>공지 리스트</title>
    <link rel="stylesheet" href="/css/noticeList.less"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
        // 페이지 로드 시 공지 목록을 가져오는 함수
        // function fetchNoticeList() {
        //     $.ajax({
        //         type: "GET",
        //         url: "/notice/noticeList", // 서버에서 공지 목록을 반환하는 엔드포인트 URL로 변경해야 합니다
        //         success: function (data) {
        //             // 성공적으로 데이터를 가져오면 HTML 업데이트
        //             $("#noticeList").html(data);
        //         },
        //         error: function () {
        //             alert("데이터를 불러오는 중 오류가 발생했습니다.");
        //         }
        //     });
        // }

        // $(document).ready(function () {
        //     // 페이지 로드 시 공지 목록을 가져오도록 초기화
        //     fetchNoticeList();
        // });

        // 상세보기 이동
        function doDetail(seq) {
            location.href = "/notice/noticeInfo?nSeq=" + seq;
        }
    </script>
</head>
<body>
<h2>게시판</h2>
<table class="fixed_headers">
    <thead>
    <tr>
        <th>Name</th>
        <th>Color</th>
        <th>Description</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>Apple</td>
        <td>Red</td>
        <td>These are red.</td>
    </tr>
    <tr>
        <td>Pear</td>
        <td>Green</td>
        <td>These are green.</td>
    </tr>
    <tr>
        <td>Grape</td>
        <td>Purple / Green</td>
        <td>These are purple and green.</td>
    </tr>
    <tr>
        <td>Orange</td>
        <td>Orange</td>
        <td>These are orange.</td>
    </tr>
    <tr>
        <td>Banana</td>
        <td>Yellow</td>
        <td>These are yellow.</td>
    </tr>
    <tr>
        <td>Kiwi</td>
        <td>Green</td>
        <td>These are green.</td>
    </tr>
    <tr>
        <td>Plum</td>
        <td>Purple</td>
        <td>These are Purple</td>
    </tr>
    <tr>
        <td>Watermelon</td>
        <td>Red</td>
        <td>These are red.</td>
    </tr>
    <tr>
        <td>Tomato</td>
        <td>Red</td>
        <td>These are red.</td>
    </tr>
    <tr>
        <td>Cherry</td>
        <td>Red</td>
        <td>These are red.</td>
    </tr>
    <tr>
        <td>Cantelope</td>
        <td>Orange</td>
        <td>These are orange inside.</td>
    </tr>
    <tr>
        <td>Honeydew</td>
        <td>Green</td>
        <td>These are green inside.</td>
    </tr>
    <tr>
        <td>Papaya</td>
        <td>Green</td>
        <td>These are green.</td>
    </tr>
    <tr>
        <td>Raspberry</td>
        <td>Red</td>
        <td>These are red.</td>
    </tr>
    <tr>
        <td>Blueberry</td>
        <td>Blue</td>
        <td>These are blue.</td>
    </tr>
    <tr>
        <td>Mango</td>
        <td>Orange</td>
        <td>These are orange.</td>
    </tr>
    <tr>
        <td>Passion Fruit</td>
        <td>Green</td>
        <td>These are green.</td>
    </tr>
    </tbody>
</table>

<hr/>
<br/>
