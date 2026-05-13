<%-- 
    Document   : registerMarathon.jsp
    Created on : 13 May 2026, 1:28:41 am
    Author     : ainin sofiya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Register Marathon</title></head>
<body>
  <h1>Lab 6 - Task 5: Marathon Registration</h1>
  <form action="processMarathon.jsp" method="post">
    Marathon ID: <input type="text" name="marathonId"><br>
    Name: <input type="text" name="name"><br>
    Category: <input type="text" name="category"><br>
    Distance: <input type="text" name="distance"><br>
    <input type="submit" value="Register">
    <input type="reset" value="Cancel">
  </form>
</body>
</html>

