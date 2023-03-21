<%-- 
    Document   : home
    Created on : 9 Mar, 2023, 10:27:34 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
    if(session.getAttribute("UN") == null){
        response.sendRedirect("login.jsp");
    }
    %>
    <body>
        <h1>Welcome to Dashboard!!!!</h1>
        <a href="logout.jsp">logout</a>
    </body>
</html>
