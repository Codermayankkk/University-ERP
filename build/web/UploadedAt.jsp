<%-- 
    Document   : UploadedAt
    Created on : 23 Aug, 2023, 6:53:14 AM
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
           <center>
           <h1 style="color: dodgerblue; font-family: sans-serif; font-weight: bold;">Student detail already uploaded</h1>
           <img src = "images/Already Uploaded.png" alt = "image not found" height= "500" width= "500" /></center>
           
           <form action="CreateClassERP.jsp" style="background-color: whitesmoke; max-width: 0; margin: 0px ; padding: 0px; box-shadow: none">
                     <button type="submit" style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;  margin: 0; position: absolute; top: 50%; left: 50%; -ms-transform: translate(-50%, -50%); transform: translate(-50%, 700%);">Back</button>               
              </form>
    </body>
</html>
