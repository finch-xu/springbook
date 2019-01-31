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
<html>
<head>
    <title>listBooks</title>
</head>
<body>
<form>
<table align="center" bgcolor="aqua" border="1" cellpadding="0">
    <tr>
        <th width="140">图书BID</th>
        <th width="140">书名</th>
        <th width="140">作者</th>
        <th width="140">出版社</th>
        <th width="140">修改</th>
        <th width="140">删除</th>
    </tr>
    <c:forEach items="${bb}" var="b"> <%--varStatus="ct"--%>
        <tr>
            <td>${b.bid}</td>
            <td>${b.bn}</td>
            <td>${b.author}</td>
            <td>${b.press}</td>
            <td><a href="${pageContext.request.contextPath}/a/updatepage/${b.bid}">修改</a></td>
            <%--<td><a href="<c:url value='/a/updatepage/${b.bid}'/>">修改</a></td>--%>
            <td><a href="${pageContext.request.contextPath}/a/deleteBooksByBid?bid=${b.bid}" onclick='return confirm("确认要删除吗?")'>删除</a></td>
        </tr>
    </c:forEach>
    <%--<td><a href="${pageContext.request.contextPath}/a/addBooks0">添加图书(跳转页面)</a></td>--%>
</table>
</form>
<form id="saveForm" action="${pageContext.request.contextPath}/a/addBooks" method="post">
<table align="center" bgcolor="aqua" border="1" cellpadding="0">
    <tr>
        <th width="140">书名</th>
        <th width="140">作者</th>
        <th width="140">出版社</th>
    </tr>
    <tr>
        <td width="140"><input type="text" value="${bookadmin.bn}" name="bn"/></td>
        <td width="140"><input type="text" value="${bookadmin.author}" name="author"/></td>
        <td width="140"><input type="text" value="${bookadmin.press}" name="press" /></td>
        <td width="140"><input type="submit" value="添加" /></td>
    </tr>
</table>
</form>

</body>
</html>
