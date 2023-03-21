<%-- 
    Document   : logout
    Created on : 9 Mar, 2023, 10:46:14 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(session.getAttribute("UN") != null){
        session.invalidate();
        response.sendRedirect("login.jsp");
    }
%>
