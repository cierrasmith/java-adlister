<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setAttribute("username", request.getParameter("username")); %>
<% request.setAttribute("password", request.getParameter("password")); %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="POST" action="/login.jsp">
    <label for="username">Username:</label>
    <input id="username" name="username" placeholder="Please enter your username" />
    <br>
    <label for="password">Password:</label>
    <input id="password" name="password" placeholder="Please enter your password" />
    <br>
    <button type="submit">Submit</button>
</form>

<c:choose>

    <c:when test="${username == 'admin' && password == 'password'}">
        <%response.sendRedirect("/profile.jsp");%>
    </c:when>

    </c:choose>

</body>
</html>


<%--<%! String[] cars = {"Volvo", "BMW", "Kia"}; %>--%>
<%--<% request.setAttribute("userName", request.getParameter("name")); %>--%>
<%--<% request.setAttribute("listOfCars", cars); %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<c:choose>--%>

<%--<c:when test="${userName == null}">--%>
<%--<h1>Hello, Random User</h1>--%>
<%--</c:when >--%>

<%--<c:otherwise>--%>
<%--<h1>Hello, ${userName}</h1>--%>


<%--    &lt;%&ndash;        For each with p tags&ndash;%&gt;--%>
<%--    &lt;%&ndash;        <c:forEach var="car" items="${listOfCars}" >&ndash;%&gt;--%>
<%--    &lt;%&ndash;            <p>${car}</p>&ndash;%&gt;--%>
<%--    &lt;%&ndash;        </c:forEach>&ndash;%&gt;--%>

<%--    &lt;%&ndash;        How to use for each with a ul&ndash;%&gt;--%>
<%--<ul>--%>
<%--    <c:forEach var="car" items="${listOfCars}">--%>
<%--        <li>${car}</li>--%>
<%--    </c:forEach>--%>
<%--</ul>--%>

<%--</c:otherwise>--%>


<%--</c:choose>--%>
