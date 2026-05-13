<%-- 
    Document   : doLogin
    Created on : 13 May 2026, 2:13:15?am
    Author     : ainin sofiya
--%>

<%@ page import="java.sql.*" %>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(
        "jdbc:mysql://localhost:3307/CSA3203", "root", "");

    String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";
    ps = conn.prepareStatement(sql);
    ps.setString(1, username);
    ps.setString(2, password);

    rs = ps.executeQuery();

    if(rs.next()) {
        String firstname = rs.getString("firstname");
        String lastname = rs.getString("lastname");

        session.setAttribute("username", username);
        session.setAttribute("firstname", firstname);
        session.setAttribute("lastname", lastname);

        response.sendRedirect("main.jsp");
    } else {
        response.sendRedirect("login.jsp?msg=Invalid username or password..!");
    }

} catch(Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    if(rs != null) rs.close();
    if(ps != null) ps.close();
    if(conn != null) conn.close();
}
%>