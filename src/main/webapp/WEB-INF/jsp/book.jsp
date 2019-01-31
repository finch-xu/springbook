<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
         <%--pageEncoding="UTF-8"%>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<%--<html>--%>
<%--<head>--%>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
    <%--<title>查询商品列表</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<form action="${pageContext.request.contextPath }/book/edit.action" method="get">--%>
    <%--查询条件：--%>
    <%--<table width="100%" border=1>--%>
        <%--<tr>--%>
            <%--<td><input type="submit" value="查询"/></td>--%>
        <%--</tr>--%>
    <%--</table>--%>
    <%--商品列表：--%>
    <%--<table width="100%" border=1>--%>
        <%--<tr>--%>
            <%--<td>id:</td>--%>
            <%--<td>bookname:</td>--%>
            <%--<td>name:</td>--%>
            <%--<td>press:</td>--%>
        <%--</tr>--%>
        <%--<c:forEach items="${book }" var="item">--%>
            <%--<tr>--%>
                <%--<td>${book.id }</td>--%>
                <%--<td>${book.bookname }</td>--%>
                <%--&lt;%&ndash;<td><fmt:formatDate value="${item.createtime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>&ndash;%&gt;--%>
                <%--<td>${book.name }</td>--%>
                <%--<td>${book.press }</td>--%>

                <%--&lt;%&ndash;<td><a href="${pageContext.request.contextPath }/itemEdit.action?id=${item.id}">修改</a></td>&ndash;%&gt;--%>

            <%--</tr>--%>
        <%--</c:forEach>--%>

    <%--</table>--%>
<%--</form>--%>
<%--</body>--%>

<%--</html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2018/12/16
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SpringBook</title>
</head>
<body>
<h1>666:</h1>
${book}
<h2>enen</h2>

</body>
</html>
