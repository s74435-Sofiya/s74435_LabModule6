<%-- 
    Document   : processAuthor
    Created on : 13 May 2026, 12:30:18?am
    Author     : ainin sofiya
--%>

<%@ page import="java.sql.*" %>
<%@ page import="lab6.com.Author" %>

<html>
<head>
    <title>Process Author</title>
</head>
<body>

<h1>Author Registration Result</h1>

<jsp:useBean id="author" class="lab6.com.Author" />

<jsp:setProperty name="author" property="*" />

<%
Connection conn = null;
PreparedStatement ps = null;

try {

    Class.forName("com.mysql.cj.jdbc.Driver");

    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3307/CSA3203",
        "root",
        ""
    );

    String sql = "INSERT INTO Author VALUES (?, ?, ?, ?, ?, ?)";

    ps = conn.prepareStatement(sql);

    ps.setString(1, author.getAuthno());
    ps.setString(2, author.getName());
    ps.setString(3, author.getAddress());
    ps.setString(4, author.getCity());
    ps.setString(5, author.getState());
    ps.setString(6, author.getZip());

    int row = ps.executeUpdate();

    if(row > 0){
        out.println("Record inserted successfully!");
    }

    conn.close();

}
catch(Exception e){
    out.println(e);
}
%>

</body>
</html>