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
<%@include file="navbar.jsp"%>
<div>
    <a href="${pageContext.request.contextPath}/a/set">set</a>
<form>
<table class="table table-striped m-auto">
    <%--align="center" bgcolor="aqua" border="1" cellpadding="0"--%>
    <tr>
        <th>图书BID</th>
        <td>图片</td>
        <th>书名(点击查看详情)</th>
        <th>作者</th>
        <th>出版社</th>
        <th>单价</th>
        <th>数量</th>
        <th>修改</th>
        <th>删除</th>
        <td>加购物车</td>
    </tr>
    <c:forEach items="${bb}" var="b">
        <tr>
            <td>${b.bid}</td>
            <td><img src="/static/img/${b.pic}" width="50" height="50"/></td>
            <td><a href="${pageContext.request.contextPath}/a/bookDetail/${b.bid}">${b.bn}</a></td>
            <td>${b.author}</td>
            <td>${b.press}</td>
            <td>${b.price}</td>
            <td>${b.n}</td>
            <td><a href="${pageContext.request.contextPath}/a/updatepage/${b.bid}">修改</a></td>
            <td><a href="${pageContext.request.contextPath}/a/deleteBooksByBid?bid=${b.bid}" onclick='return confirm("确认要删除吗?")'>删除</a></td>
            <td><a href="${pageContext.request.contextPath}/a/addToCart?bid=${b.bid}">加购物车</a></td>
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
        <td width="140">单价</td>
        <th width="140">图片</th>
    </tr>
    <tr>
        <td width="140"><input type="text" value="${bookadmin.bn}" name="bn"/></td>
        <td width="140"><input type="text" value="${bookadmin.author}" name="author"/></td>
        <td width="140"><input type="text" value="${bookadmin.press}" name="press" /></td>
        <td width="140"><input type="text" value="${bookadmin.price}" name="price" /></td>
        <td width="140"><input type="file" name="file"/></td>
        <td width="140"><input type="submit" value="添加" /></td>
    </tr>
</table>
</form>
</div>
</body>
</html>
