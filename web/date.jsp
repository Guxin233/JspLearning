<%--
  Created by IntelliJ IDEA.
  User: Gu
  Date: 2017/10/18 0018
  Time: 下午 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>今天的日期</title>
</head>
<body>
<p>
    今天的日期是: <%= (new java.util.Date()).toLocaleString()%>
</p>
</body>
</html>
