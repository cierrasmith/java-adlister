<%--
  Created by IntelliJ IDEA.
  User: cierrasmith
  Date: 9/2/21
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! String[] cars = {"Volvo", "BMW", "Kia"}; %>
<% request.setAttribute("userName", request.getParameter("name")); %>
<% request.setAttribute("listOfCars", cars); %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:choose>

    <c:when test="${userName == null}">
        <h1>Hello, Random User</h1>
    </c:when >

    <c:otherwise>
        <h1>Hello, ${userName}</h1>


<%--        For each with p tags--%>
<%--        <c:forEach var="car" items="${listOfCars}" >--%>
<%--            <p>${car}</p>--%>
<%--        </c:forEach>--%>

<%--        How to use for each with a ul--%>
        <ul>
            <c:forEach var="car" items="${listOfCars}">
                <li>${car}</li>
            </c:forEach>
        </ul>

    </c:otherwise>


</c:choose>

</body>
</html>
