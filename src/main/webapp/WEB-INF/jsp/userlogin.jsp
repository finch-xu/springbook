<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/2/10
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>快登录！</title>
    <style>
        #center{
            border-radius: 20px;
            width: 300px;
            height: 350px;
            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }
    </style>
</head>
<body bgcolor="#ffe4c4">
<div id="center">
    <h2>欢迎登录图书管理系统</h2>
    <div style="color: deeppink">
        <p>${message }</p>
    </div>
    <form id="login" action="${pageContext.request.contextPath}/home/login" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" id="user_name" name="user_name"/></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" id="user_password" name="user_password"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="点击登录" id="login0"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
