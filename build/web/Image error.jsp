<%-- 
    Document   : Image error
    Created on : 24 Jul, 2023, 1:17:43 AM
    Author     : mayank_matkar
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>SVVV ERP</title>
    </head>
    <body>
          <%
              String username = (String)session.getAttribute("username");
              if(username == null || username.trim().equals(""))
              {
                 response.sendRedirect("ERP login.html");
              }
           %>
          <br></br><br></br><br></br><br></br><br></br>
          <center><img src = "images/Server Error.png" alt = "image not found" height= "500" width= "500" /></center>
    </body>
</html>
