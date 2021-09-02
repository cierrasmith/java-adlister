<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setAttribute("username", request.getParameter("username")); %>
<% request.setAttribute("password", request.getParameter("password")); %>

<html>
<head>
    <title>Login</title>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />

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

<jsp:include page="partials/footer.jsp" />
</body>
</html>