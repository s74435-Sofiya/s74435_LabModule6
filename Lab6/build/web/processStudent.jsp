<%-- 
    Document   : processStudent.jsp
    Created on : 13 May 2026, 12:50:54?am
    Author     : ainin
--%>

<%@ page import="java.sql.*" %>
<%@ page import="lab6.com.Student" %>

<html>
<head>
    <title>Process Student</title>
</head>
<body>

<h1>Student Registration Result</h1>

<jsp:useBean id="student" class="lab6.com.Student" />

<%
try {

    student.setStuid(request.getParameter("stuid"));
    student.setStuname(request.getParameter("stuname"));
    student.setStuprogram(request.getParameter("stuprogram"));
    student.setAddress(request.getParameter("address"));

    Class.forName("com.mysql.cj.jdbc.Driver");

    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3307/CSA3203",
        "root",
        ""
    );

    String sql =
    "INSERT INTO Student VALUES (?, ?, ?, ?)";

    PreparedStatement ps =
    conn.prepareStatement(sql);

    ps.setString(1, student.getStuid());
    ps.setString(2, student.getStuname());
    ps.setString(3, student.getStuprogram());
    ps.setString(4, student.getAddress());

    int row = ps.executeUpdate();

    if(row > 0){
        out.println("Student record inserted successfully!");
    }

    conn.close();

}
catch(Exception e){

    response.sendRedirect(
    "errorStudent.jsp?msg=" + e.getMessage());

}
%>

</body>
</html>
