<%-- 
    Document   : Student homepage.jsp
    Created on : 8 Jul, 2023, 10:35:17 AM
    Author     : mayank_matkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="DB.DBconnector"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SVVV ERP</title>
        <script src="https://kit.fontawesome.com/57eeca9c9a.js" crossorigin="anonymous"></script>
        <link href="student.css" rel="stylesheet" type="text/css" />
        <style>
body 
{
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav 
{
  overflow: hidden;
  background-color: dodgerblue;
}

.topnav a 
{
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover 
{
  background-color: #ddd;
  color: black;
}

.topnav a.active 
{
  color: white;
}
img
{
  border-radius: 50%;  
}
</style>
    </head>
    <body>
          <div class="topnav">
                            <h1 class="active" style="color: white; text-align: center">SVVV ERP</h1>     
         </div>
         <%
            String username = (String)session.getAttribute("username");
            
            if(username == null || username.trim().equals(""))
            {
               response.sendRedirect("ERP login.html");
            }
         %>
         <input type="checkbox" name="" id="check">
         <div class="container">
             <label for="check">
                 <span class="fas fa-times" id="times"></span>
                 <span class="fas fa-bars" id="bars"></span>
             </label>
             
             <div class="head">menu</div>
             <br/>
             <ol>
                 <li><a href="Student homepage.jsp"><i class="fa-solid fa-house"></i>Home</a></li><br/>
                 <li><a href="Student Attendance.jsp"><i class="fa-solid fa-book"></i>Attendance</a></li><br/>
                 <li><a href="InternalMarks.jsp"><i class="fa-solid fa-chart-column"></i>Internal marks</a></li><br/>
                 <li><a href="MyInfo.jsp"><i class="fa-regular fa-user"></i>My info</a></li><br/>
                 <li><a href="FeesPaid.jsp"><i class="fa-solid fa-money-bill-transfer"></i>Fees Paid</a></li><br/>
                 <li><a href="Change Password.jsp"><i class="fa-solid fa-key"></i>Change Password</a></li>
                 <br></br><br></br><br></br><br></br><br></br><br></br>
                 <li><a href="logout.jsp"><i class="fa-solid fa-power-off"></i>Sign Out</a></li>
             </ol>
             
         </div> 
         <br></br><br></br><br/>
         <%
            try
            {
               Statement st = DBconnector.getStatement();
               String q = "SELECT * FROM student WHERE student_id = '"+username+"'";
               
               ResultSet rs = st.executeQuery(q);
               if(rs.next())
               {
         %> 
         <center>
                <h2 style="color: dodgerblue; font-family: sans-serif; font-weight: bold;">Shri Vaishnav Vidhyapeeth Vishwavidyalya</h2>
                <br></br><br/>
                <img src = "images/<%=rs.getString("student_img")%>" alt = "image not found" height = 200 width = 200 />
                <br></br><br/>
                <label style="color: dodgerblue; font-family: sans-serif; font-weight: bold;">Name - </label>
                &nbsp;
                <label style="font-family: sans-serif; font-weight: bold;"><%=rs.getString("student_name")%></label>
                <br></br><br/>
                <label style="color: dodgerblue; font-family: sans-serif; font-weight: bold;">Registration no. - </label>
                &nbsp;
                <label style="font-family: sans-serif; font-weight: bold;"><%=rs.getString("student_id")%></label>
                <br></br><br/>
                <label style="color: dodgerblue; font-family: sans-serif; font-weight: bold;">Branch - </label>
                &nbsp;
                <label style="font-family: sans-serif; font-weight: bold;"><%=rs.getString("student_dept")%></label>
                <br></br><br/>
                <label style="color: dodgerblue; font-family: sans-serif; font-weight: bold;">Semester - </label>
                &nbsp;
                <label style="font-family: sans-serif; font-weight: bold;"><%=rs.getString("student_sem")%></label>
         </center>
         <%     
               }
            }  
            catch(SQLException e)
            {
             System.out.println(e);   
            }    
         %>
         <section></section>
    </body>
</html>
