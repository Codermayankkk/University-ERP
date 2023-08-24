<%-- 
    Document   : logout
    Created on : 9 Jul, 2023, 8:14:16 AM
    Author     : mayank_matkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
           session.invalidate();
           response.sendRedirect("ERP login.html");
        %>
    </body>
</html>
