<%--
  Created by IntelliJ IDEA.
  User: hyunsoolim
  Date: 2022/12/09
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>index</title>
    <link href="/css/votingStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
    <h2>(과정평가형 정보처리산업기사) 지역구의원 투표 프로그램 ver 2020-05</h2>
</header>
<nav>
    <div>
        <a href="/voting/list">후보조회</a>
        <a href="/voting/voting">투표신청</a>
        <a href="/voting/inquiry">투표검수조회</a>
        <a href="/voting/rank">후보자등수</a>
        <a href="/voting/">홈으로</a>
    </div>
</nav>
<section>
    <h1>후보자등수</h1>
    <table width="300" border="1">
        <thead>
        <tr>
            <td>후보번호</td>
            <td>성명</td>
            <td>총투표건수</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="rank" items="${rankList}">
            <tr>
                <td>${rank.m_no}</td>
                <td>${rank.m_name}</td>
                <td>${rank.m_total}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</section>
<footer>
    <h3 id="foot">HRD KOREA Copyright © 2015 All rights reserved Human Resources Development Service of Korea.</h3>
</footer>
</body>
</html>
