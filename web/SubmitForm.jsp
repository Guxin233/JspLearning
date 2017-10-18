<%--
  Created by IntelliJ IDEA.
  User: Gu
  Date: 2017/10/18 0018
  Time: 下午 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提交表单</title>
</head>
<body>

<h1>使用 GET 方法提交表单</h1>
<!-- 提交到Main.jsp页面，参数在URL中 -->
<form action="Main.jsp" method="GET">
    站点名: <input type="text" name="name"><br />
    网址: <input type="text" name="url" /><br />
    <input type="submit" value="提交" />
</form>

<br>
<br>
<h1>使用 POST 方法提交表单</h1>
<!-- 提交到Main.jsp页面，参数在URL中 -->
<form action="Main.jsp" method="POST">
    站点名: <input type="text" name="name"><br />
    网址: <input type="text" name="url" /><br />
    <input type="submit" value="提交" />
</form>

</body>
</html>
