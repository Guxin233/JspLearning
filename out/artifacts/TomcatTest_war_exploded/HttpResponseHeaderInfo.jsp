<%--
  Created by IntelliJ IDEA.
  User: Gu
  Date: 2017/10/18 0018
  Time: 下午 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <title>HTTP 响应头</title>
</head>
<body>
<h2>HTTP 响应头</h2>
<h2>每隔5秒自动刷新实例</h2>
<%
    // 设置每隔5秒自动刷新
    response.setIntHeader("Refresh", 5);
    // 获取当前时间
    Calendar calendar = new GregorianCalendar();
    String am_pm;
    int hour = calendar.get(Calendar.HOUR);
    int minute = calendar.get(Calendar.MINUTE);
    int second = calendar.get(Calendar.SECOND);
    if(calendar.get(Calendar.AM_PM) == 0)
        am_pm = "AM";
    else
        am_pm = "PM";
    String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
    out.println("当前时间: " + CT + "\n");
%>
</body>
</html>
