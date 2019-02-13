<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/2/13
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>《${bookDetail.bn}》${bookDetail.author}</title>
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
<form id="bookDetailForm m-auto">
    <input type="hidden" value="${bookadmin.bid}" name="bid"/>
    <table  align="center" bgcolor="aqua" border="1" cellpadding="0">
        <tr>
            <h2>图书详情</h2>
        </tr>
        <tr>
            <td>BID:</td>
            <td>${bookDetail.bid}</td>
        </tr>
        <tr>
            <td>图片：</td>
            <td><img src="/static/img/${bookDetail.pic}" width="140" height="140"/></td>
        </tr>
        <tr>
            <td>书名：</td>
            <td>${bookDetail.bn}</td>
        </tr>
        <tr>
            <td>作者：</td>
            <td>${bookDetail.author}</td>
        </tr>
        <tr>
            <td>出版社：</td>
            <td>${bookDetail.press}</td>
        </tr>
        <tr>
            <td><a href="${pageContext.request.contextPath}/a/updatepage">修改图书信息</a> </td>
            <td><a href="${pageContext.request.contextPath}/a/listBooks">返回到图书列表</a></td>
        </tr>
    </table>
</form>
</body>
</html>
