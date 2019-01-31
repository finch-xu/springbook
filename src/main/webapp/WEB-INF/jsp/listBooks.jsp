<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/1/30
  Time: 20:05
  To change this template use File | Settings | File Templates.
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
        <th>BID</th>
        <th>书名</th>
        <th>作者</th>
        <th>出版社</th>
        <th>备注</th>
    </tr>
    <c:forEach items="${bb}" var="b"> <%--varStatus="ct"--%>
        <tr>
            <td>${b.bid}</td>
            <td>${b.bn}</td>
            <td>${b.author}</td>
            <td>${b.press}</td>
            <td>#</td>
        </tr>
    </c:forEach>
    <td><a href="${pageContext.request.contextPath}/a/addBooks0">添加图书(跳转页面)</a></td>
</table>
</form>
<form id="saveForm" action="${pageContext.request.contextPath}/a/addBooks" method="post">
<table align="center" bgcolor="#ffe4c4" border="1" cellpadding="0">
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
