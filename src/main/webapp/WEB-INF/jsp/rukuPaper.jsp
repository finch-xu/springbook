<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: finch
  Date: 2019/3/1
  Time: 20:05
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
    <title>填写入库单</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery.serializeJSON/2.9.0/jquery.serializejson.min.js"></script>
    <%--<script src="https://cdn.bootcss.com/jquery-json/2.6.0/jquery.json.min.js"></script>--%>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" language="JavaScript">
        (function($){
            $.fn.serializeJson=function(){
                var serializeObj={};
                var array=this.serializeArray();
                var str=this.serialize();
                $(array).each(function(){
                    if(serializeObj[this.name]){
                        if($.isArray(serializeObj[this.name])&&this .value!=""){
                            serializeObj[this.name].push(this.value);
                        }else {
                            if(this .value!=""){
                                serializeObj[this.name]=[serializeObj[this.name],this.value];
                            }
                        }
                    }else{
                        if(this .value!=""){
                            serializeObj[this.name]=this.value;
                        }
                    }
                });
                return serializeObj;
            };
        })(jQuery);
        function ruku() {
            let jsonStr = $("#rukuForm").serializeJson();
            $.ajax({
                url: "http://localhost:8080/springbook/a/ruku",
                type: "POST",
                contentType : 'application/json; charset=utf-8',
                dataType:"json",
                data: JSON.stringify(jsonStr),
            });
        }
    </script>
</head>
<body bgcolor="#ffe4c4">
<%@include file="navbar.jsp"%>
<div>
    <h2>填写入库单！</h2>
    <%--获取当前时间--%>
    <%
        Date d = new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String now = df.format(d);
    %>
    <form id="rukuForm">
        <table>
        1.
        书名：<input type="text" name="ruku_bn"><br>
        作者：<input type="text" name="ruku_author"><br>
        出版社：<input type="text" name="ruku_press"><br>
        入库价格：<input type="text" name="ruku_price"><br>
        <%--图片：<input type="file" name="ruku_pic"><br>--%>
        入库时间：<%=now %><input type="hidden" name="ruku_date" value="<%=now %>"><br>
        入库数量：<input type="text" name="ruku_n"><br>
        2.
        书名：<input type="text" name="ruku_bn"><br>
        作者：<input type="text" name="ruku_author"><br>
        出版社：<input type="text" name="ruku_press"><br>
        入库价格：<input type="text" name="ruku_price"><br>
        <%--图片：<input type="file" name="ruku_pic"><br>--%>
        入库时间：<%=now %><input type="hidden" name="ruku_date" value="<%=now %>"><br>
        入库数量：<input type="text" name="ruku_n"><br>
        3.
        书名：<input type="text" name="ruku_bn"><br>
        作者：<input type="text" name="ruku_author"><br>
        出版社：<input type="text" name="ruku_press"><br>
        入库价格：<input type="text" name="ruku_price"><br>
        <%--图片：<input type="file" name="ruku_pic"><br>--%>
        入库时间：<%=now %><input type="hidden" name="ruku_date" value="<%=now %>"><br>
        入库数量：<input type="text" name="ruku_n"><br>

        <%--<input type="submit" value="提交入库单" />--%>
        <input type="button" value="submit" onclick="ruku();">
        </table>
    </form>
</div>
</body>
<%--1.--%>
<%--书名：<input type="text" id="ruku_bn" value="${ruku.bn}"><br>--%>
<%--作者：<input type="text" id="ruku_author" value="${ruku.author}"><br>--%>
<%--出版社：<input type="text" id="ruku_press" value="${ruku.press}"><br>--%>
<%--入库价格：<input type="text" id="ruku_price" value="${ruku.price}"><br>--%>
<%--图片：<input type="file" id="ruku_pic"><br>--%>
<%--<input type="hidden" id="ruku_date" value="<%=now %>">--%>
<%--入库数量：<input type="text" id="ruku_n">--%>
<%--2.--%>
<%--书名：<input type="text" id="ruku_bn" value="${ruku.bn}"><br>--%>
<%--作者：<input type="text" id="ruku_author" value="${ruku.author}"><br>--%>
<%--出版社：<input type="text" id="ruku_press" value="${ruku.press}"><br>--%>
<%--入库价格：<input type="text" id="ruku_price" value="${ruku.price}"><br>--%>
<%--图片：<input type="file" id="ruku_pic"><br>--%>
<%--<input type="hidden" id="ruku_date" value="<%=now %>">--%>
<%--入库数量：<input type="text" id="ruku_n">--%>
<%--3.--%>
<%--书名：<input type="text" id="ruku_bn" value="${ruku.bn}"><br>--%>
<%--作者：<input type="text" id="ruku_author" value="${ruku.author}"><br>--%>
<%--出版社：<input type="text" id="ruku_press" value="${ruku.press}"><br>--%>
<%--入库价格：<input type="text" id="ruku_price" value="${ruku.price}"><br>--%>
<%--图片：<input type="file" id="ruku_pic"><br>--%>
<%--<input type="hidden" id="ruku_date" value="<%=now %>">--%>
<%--入库数量：<input type="text" id="ruku_n">--%>
</html>
