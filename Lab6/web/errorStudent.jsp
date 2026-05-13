<%-- 
    Document   : errorStudent
    Created on : 13 May 2026, 12:52:29?am
    Author     : ainin sofiya
--%>

<%@ page isErrorPage="true" %>

<html>
<head>
    <title>Error Page</title>
</head>
<body>

<h1>Error Occurred!</h1>

<%
String msg = request.getParameter("msg");

out.println(msg);
%>

</body>
</html>
