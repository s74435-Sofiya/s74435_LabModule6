<%-- 
    Document   : insertStudent.jsp
    Created on : 13 May 2026, 12:49:46?am
    Author     : ainin sofiya
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Insert Student</title>
</head>
<body>

<h1>Student Registration Form</h1>

<form action="processStudent.jsp" method="post">

    Student ID:
    <input type="text" name="stuid">
    <br><br>

    Student Name:
    <input type="text" name="stuname">
    <br><br>

    Program:
    <select name="stuprogram">
        <option>BSc with IM</option>
        <option>BSc Soft. Eng.</option>
        <option>BSc in Robotics</option>
    </select>
    <br><br>

    Address:
    <input type="text" name="address">
    <br><br>

    <input type="submit" value="Submit">
    <input type="reset" value="Cancel">

</form>

</body>
</html>
