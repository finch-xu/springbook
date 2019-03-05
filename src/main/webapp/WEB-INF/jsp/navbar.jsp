<%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/2/19
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg bg-info navbar-dark">
    <ul class="nav navbar-nav mr-auto">
        <li class="nav-item"><a class="navbar-brand" href="#">SpringBook</a></li>
        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/a/listBooks">图书列表</a></li>
        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/a/rukuPaper">填写入库单</a></li>
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