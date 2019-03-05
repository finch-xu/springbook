<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/2/17
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${useradmin.user_name}的购物车</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
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
    <h2>${useradmin.user_name}的购物车</h2>
    <table class="table table-striped m-auto">
        <tr>
            <th>图书BID</th>
            <th>书名</th>
            <th>作者</th>
            <th>出版社</th>
            <th>单价</th>
            <th>数量</th>
            <th>小计</th>
            <th>###</th>
        </tr>
        <c:forEach items="${useradmin}" var="chart">
            <tr>
                <td>${chart.key.bid}</td>
                <td>${chart.key.bn}</td>
                <td>${chart.key.author}</td>
                <td>${chart.key.press}</td>
                <td>${chart.key.price}</td>
                <td>${chart.value}</td>
                <td>${chart.key.price*chart.value}</td>
                <td><a href="#">从购物车移除</a></td>
            </tr>
        </c:forEach>
            <tr>
                <td colspan="5">
                    总计：${sum}
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <a href="#">结算！</a>
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <a href="javascript:history.go(-1)">返回图书列表</a>
                </td>
            </tr>
    </table>
</div>
</body>
</html>
