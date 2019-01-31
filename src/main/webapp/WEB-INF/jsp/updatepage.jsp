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
</head>
<body>
<h2>编辑图书信息！</h2>
<form id="updateForm" action="${pageContext.request.contextPath}/a/update" method="post">
    <input type="hidden" value="${bookadmin.bid}" name="bid"/>
    <table  align="center" bgcolor="aqua" border="1" cellpadding="0">
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
        <input type="submit" value="更新" />
    </table>
</form>
</body>
</html>
