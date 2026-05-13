<%-- 
    Document   : processMarathon
    Created on : 13 May 2026, 1:34:32?am
    Author     : ainin sofiya
--%>

<%@ page import="lab6.com.*" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>Process Marathon</title></head>
<body>
<%
  // Create Marathon object from form input
  Marathon m = new Marathon();
  m.setMarathonId(request.getParameter("marathonId"));
  m.setName(request.getParameter("name"));
  m.setCategory(request.getParameter("category"));
  m.setDistance(request.getParameter("distance"));

  // Call DAO
  MarathonDAO dao = new MarathonDAO();
  int status = dao.insertMarathon(m);

  if(status > 0){
    out.println("<h2>Marathon record inserted successfully!</h2>");
  } else {
    out.println("<h2>Failed to insert marathon record.</h2>");
  }
%>
</body>
</html>


