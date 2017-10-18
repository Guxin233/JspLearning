<%--
  Created by IntelliJ IDEA.
  User: Gu
  Date: 2017/10/18 0018
  Time: 下午 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>自定义状态码</title>
</head>
<body>
<%
    // 设置错误代码，并说明原因
    response.sendError(998, "这是自定义的状态码，只要998!!!" );
%>
</body>
</html>
