<%--
  Created by IntelliJ IDEA.
  User: cierrasmith
  Date: 9/7/21
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
</head>
<body>

<h1>Create a Product</h1>

<form method="POST" action="/products/create">

    <label for="title">Title</label>
    <input id="title" name="title" type="text">
    <br>

    <label for="description">Description</label>
    <input id="description" name="description" type="text">
    <br>

    <input type="submit">
</form>

</body>
</html>
