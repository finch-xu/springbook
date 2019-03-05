<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/1/31
  Time: 14:16
  To change this template use File | Settings | File Templates.
  更新和修改jsp
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新&修改 图书信息</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="navbar.jsp"%>
<div>
<form id="updateForm" action="${pageContext.request.contextPath}/a/update" enctype="multipart/form-data" method="post">
    <input type="hidden" value="${bookadmin.bid}" name="bid"/>
    <table class="table table-striped m-auto">
        <tr>
            <h2>编辑图书信息！</h2>
        </tr>
        <tr>
            <td>图片：</td>
            <td><img src="/static/img/${bookadmin.pic}" width="100" height="100"/></td>
            <td><input type="file" name="file" value="/static/img/${bookadmin.pic}"/></td>
        </tr>
        <tr>
            <td>书名：</td>
            <td><input type="text" value="${bookadmin.bn}" name="bn"/></td>
        </tr>
        <tr>
            <td>作者：</td>
            <td><input type="text" value="${bookadmin.author}" name="author"/></td>
        </tr>
        <tr>
            <td>出版社：</td>
            <td><input type="text" value="${bookadmin.press}" name="press"/></td>
        </tr>
        <tr>
            <td>单价：</td>
            <td><input type="text" value="${bookadmin.price}" name="price"/></td>
        </tr>
        <tr>
            <input type="submit" value="更新" />
        </tr>
    </table>
</form>
</div>
</body>
</html>
