<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/3/1
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>入库单历史</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="navbar.jsp"%>
<div>
    <h2>入库单历史</h2>
    <h2>上架单，在这里完善图书信息然后上架。</h2>
    <form>
        <table class="table table-striped m-auto">
            <%--align="center" bgcolor="aqua" border="1" cellpadding="0"--%>
            <tr>
                <th>入库单ID</th>
                <th>书名</th>
                <th>作者</th>
                <th>出版社</th>
                <th>入库价</th>
                <th>入库数量</th>
                <th>入库时间</th>
                <td>是否入库？</td>
                <td>是否删除？</td>
            </tr>
            <c:forEach items="${listruku}" var="listruku">
                <tr>
                    <td>${listruku.rukuid}</td>
                    <td>${listruku.ruku_bn}</td>
                    <td>${listruku.ruku_author}</td>
                    <td>${listruku.ruku_press}</td>
                    <td>${listruku.ruku_price}</td>
                    <td>${listruku.ruku_n}</td>
                    <td>${listruku.ruku_date}</td>
                    <td><a href="${pageContext.request.contextPath}/a/rukuDetail/${listruku.rukuid}">点击进入入库流程</a></td>
                    <%--<td><a href="${pageContext.request.contextPath}/a/deleteBooksByBid?bid=${listruku.bid}" onclick='return confirm("确认要删除吗?")'>点击删除</a></td>--%>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>
</body>
</html>
