<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--^^^^^添加对jstl列表的支持^^^^^--%>
<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/1/30
  Time: 20:05
  To change this template use File | Settings | File Templates.
  列出图书jsp
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>图书列表</title>
    <%--<link rel="stylesheet" type="text/css" href="static/lib/bootstrap43/css/bootstrap.min.css"/>--%>
    <%--<script type="text/javascript" src="static/js/jquery3.js"></script>--%>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <%--<script src="static/lib/bootstrap43/js/bootstrap.min.js"></script>--%>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body bgcolor="#ffe4c4">
<nav class="navbar navbar-expand-lg bg-info navbar-dark">
    <ul class="nav navbar-nav mr-auto">
        <li class="nav-item"><a class="navbar-brand" href="#">SpringBook</a></li>
        <li class="nav-item active"><a class="nav-link" href="${pageContext.request.contextPath}/a/listBooks">图书列表</a></li>
        <li class="nav-item"><a class="nav-link" href="#">关于</a></li>
    </ul>
    <ul class="nav navbar-right">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbardropdown" data-toggle="dropdown" href="#">
                用户：${useradmin.user_name}
            </a>
            <div class="dropdown-menu bg-info">
                <a class="nav-link dropdown-item" href="#">
                    账户设置
                </a>
                <a class="nav-link dropdown-item" href="${pageContext.request.contextPath}/home/logout">
                    登出
                </a>
            </div>
        </li>
    </ul>
</nav>
<div>
<form>
<table class="table table-striped m-auto">
    <%--align="center" bgcolor="aqua" border="1" cellpadding="0"--%>
    <tr>
        <th width="140">图书BID</th>
        <td width="140">图片</td>
        <th width="140">书名(点击查看详情)</th>
        <th width="140">作者</th>
        <th width="140">出版社</th>
        <th width="140">修改</th>
        <th width="140">删除</th>
    </tr>
    <c:forEach items="${bb}" var="b">
        <tr>
            <td>${b.bid}</td>
            <td><img src="/static/img/${b.pic}" width="50" height="50"/></td>
            <td><a href="${pageContext.request.contextPath}/a/bookDetail/${b.bid}">${b.bn}</a></td>
            <td>${b.author}</td>
            <td>${b.press}</td>
            <td><a href="${pageContext.request.contextPath}/a/updatepage/${b.bid}">修改</a></td>
            <td><a href="${pageContext.request.contextPath}/a/deleteBooksByBid?bid=${b.bid}" onclick='return confirm("确认要删除吗?")'>删除</a></td>
        </tr>
    </c:forEach>
</table>
</form>
<form id="saveForm" action="${pageContext.request.contextPath}/a/addBooks" enctype="multipart/form-data" method="post" modelAttribute="bookadmin">
<table class="table table-striped m-auto">
    <tr>
        <th width="140">书名</th>
        <th width="140">作者</th>
        <th width="140">出版社</th>
        <th width="140">图片</th>
    </tr>
    <tr>
        <td width="140"><input type="text" value="${bookadmin.bn}" name="bn"/></td>
        <td width="140"><input type="text" value="${bookadmin.author}" name="author"/></td>
        <td width="140"><input type="text" value="${bookadmin.press}" name="press" /></td>
        <td width="140"><input type="file" name="file"/></td>
        <td width="140"><input type="submit" value="添加" /></td>
    </tr>
</table>
</form>
</div>
</body>
</html>
