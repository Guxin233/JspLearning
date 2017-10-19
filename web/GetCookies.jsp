<%--
  Created by IntelliJ IDEA.
  User: Gu
  Date: 2017/10/19 0019
  Time: 上午 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.*" %>
<html>
<head>
    <title>获取Cookies</title>
</head>
<body>
显示当前请求中携带的Cookies
<br>
<%
    Cookie cookie = null;
    Cookie[] cookies = null;
    // 获取cookies的数据,是一个数组
    cookies = request.getCookies();
    if( cookies != null ){
        out.println("<h2> 查找 Cookie 名与值</h2>");
        for (int i = 0; i < cookies.length; i++){
            cookie = cookies[i];

            out.print("参数名 : " + cookie.getName());
            out.print("<br>");
            out.print("参数值: " + URLDecoder.decode(cookie.getValue(), "utf-8") +" <br>");
            out.print("------------------------------------<br>");
        }
    }else{
        out.println("<h2>没有发现 Cookie</h2>");
    }
%>
</body>
</html>
