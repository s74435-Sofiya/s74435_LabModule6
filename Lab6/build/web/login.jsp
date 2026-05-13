<%-- 
    Document   : login
    Created on : 13 May 2026, 2:12:10?am
    Author     : ainin sofiya
--%>

<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>

<div class="container">
    <h2>Login</h2>

    <%
        String msg = request.getParameter("msg");
        if(msg != null) {
    %>
        <p class="error"><%= msg %></p>
    <%
        }
    %>

    <form action="doLogin.jsp" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>

        <input type="submit" value="Login">
    </form>
</div>

</body>
</html>