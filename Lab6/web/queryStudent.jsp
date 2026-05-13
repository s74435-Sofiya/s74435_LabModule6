<%-- 
    Document   : queryStudent
    Created on : 13 May 2026, 1:08:10?am
    Author     : ainin sofiya
--%>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Lab 6 - Task 4</title>

    <style>

        table{
            border-collapse: collapse;
            width: 80%;
        }

        th, td{
            border: 1px solid black;
            padding: 10px;
            text-align: center;
        }

    </style>

</head>
<body>

<h1>Lab 6 - Task 4: Retrieving record via JSP Page</h1>

<table>

<tr>
    <th>Student ID</th>
    <th>Student Name</th>
    <th>Program</th>
    <th>Address</th>
</tr>

<%

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try{

    // Load driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Connect database
    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3307/CSA3203",
        "root",
        ""
    );

    // Create statement
    stmt = conn.createStatement();

    // SQL query
    String sql = "SELECT * FROM Student";

    // Execute query
    rs = stmt.executeQuery(sql);

    // Fetch records
    while(rs.next()){

%>

<tr>

    <td><%= rs.getString("stuid") %></td>

    <td><%= rs.getString("stuname") %></td>

    <td><%= rs.getString("stuprogram") %></td>

    <td><%= rs.getString("address") %></td>

</tr>

<%
    }

    conn.close();

}
catch(Exception e){

    out.println(e);

}
%>

</table>

</body>
</html>
