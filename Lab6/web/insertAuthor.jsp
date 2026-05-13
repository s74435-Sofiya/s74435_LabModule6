<%-- 
    Document   : insertAuthor
    Created on : 13 May 2026, 12:28:17?am
    Author     : ainin
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Insert Author</title>
</head>
<body>

<h1>Author Registration Form</h1>

<form action="processAuthor.jsp" method="post">

    Author No:
    <input type="text" name="authno">
    <br><br>

    Name:
    <input type="text" name="name">
    <br><br>

    Address:
    <input type="text" name="address">
    <br><br>

    City:
    <input type="text" name="city">
    <br><br>

    State:
    <input type="text" name="state">
    <br><br>

    Zip:
    <input type="text" name="zip">
    <br><br>

    <input type="submit" value="Submit">
    <input type="reset" value="Cancel">

</form>

</body>
</html>