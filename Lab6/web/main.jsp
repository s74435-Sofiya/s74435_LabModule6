<%-- 
    Document   : main
    Created on : 13 May 2026, 2:14:42?am
    Author     : ainin sofiya
--%>

<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>

<div class="container">
    <h2>Welcome</h2>

    <%
        String username = (String) session.getAttribute("username");
        String firstname = (String) session.getAttribute("firstname");
        String lastname = (String) session.getAttribute("lastname");

        if(username == null) {
            response.sendRedirect("login.jsp");
        }
    %>

    <p class="info"><b>Username:</b> <%= username %></p>
    <p class="info"><b>Name:</b> <%= firstname %> <%= lastname %></p>

    <form action="login.jsp">
        <input type="submit" value="Logout">
    </form>
</div>

</body>
</html>