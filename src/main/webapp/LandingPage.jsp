<%--
  Created by IntelliJ IDEA.
  User: cierrasmith
  Date: 9/2/21
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setAttribute("message", "Welcome, " + request.getParameter("name")); %>
<html>
<head>
    <title>Landing</title>
</head>
<body>
<%@ include file="partials/navbar.jsp" %>
<h1>${message}</h1>
<h2>This is a smart use of Expression Language Message -> ${message}</h2>
</body>
</html>
