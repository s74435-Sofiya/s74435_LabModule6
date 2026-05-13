<%-- 
    Document   : SampleInsertionRecord
    Created on : 13 May 2026, 12:02:40?am
    Author     : ainin
--%>

<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Lab 6 Task 1</title>
</head>
<body>

<h1>Lab 6 - Task 1</h1>

<%
Connection conn = null;
PreparedStatement ps = null;

try {

    // Load driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Connect database
    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3307/CSA3203",
        "root",
        ""
    );

    // SQL insert
    String sql = "INSERT INTO FirstTable VALUES (?)";

    ps = conn.prepareStatement(sql);

    ps.setString(1,
    "Welcome to access MySQL database with JSP...!");

    // Execute
    ps.executeUpdate();

    out.println("Record inserted successfully!");

}
catch(Exception e){
    out.println(e);
}
%>

</body>
</html>
