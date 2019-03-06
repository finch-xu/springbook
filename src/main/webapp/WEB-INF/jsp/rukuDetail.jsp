<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/3/6
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在这里完善信息，添加图书图片，然后提交入库</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@include file="navbar.jsp"%>
<div>
    <form id="doRukuForm" action="${pageContext.request.contextPath}/a/doRuku" enctype="multipart/form-data" method="post" modelAttribute="bookadmin">
        <%--<input type="hidden" value="${rukuDetail.rukuid}"/>--%>
        <table class="table table-striped m-auto">
            <tr>
                <h2>编辑图书信息！</h2>
            </tr>
            <tr>
                <td>图片：</td>
                <%--<td><img src="/static/img/${bookadmin.pic}" width="100" height="100"/></td>--%>
                <td><input type="file" name="file"/></td>
            </tr>
            <tr>
                <td>书名：</td>
                <td><input type="text" value="${rukuDetail.ruku_bn}" name="bn"/></td>
            </tr>
            <tr>
                <td>作者：</td>
                <td><input type="text" value="${rukuDetail.ruku_author}" name="author"/></td>
            </tr>
            <tr>
                <td>出版社：</td>
                <td><input type="text" value="${rukuDetail.ruku_press}" name="press"/></td>
            </tr>
            <tr>
                <td>单价：</td>
                <td><input type="text" value="${rukuDetail.ruku_price}" name="price"/></td>
            </tr>
            <tr>
                <td>数量：</td>
                <td><input type="text" value="${rukuDetail.ruku_n}" name="n"/></td>
            </tr>
            <tr>
                <input type="submit" value="更新" />
            </tr>
        </table>
    </form>
</div>
</body>
</html>
