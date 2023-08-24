<%-- 
    Document   : FeesPaid
    Created on : 25 Jul, 2023, 10:14:28 AM
    Author     : mayank_matkar
--%>
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

label
{
  font-weight: bold;
  font-family: sans-serif;  
  color: dodgerblue;    
}

button[type=submit] 
{
  width: 10%;
  background-color: orange;
  color: white;
  padding: 6px 5px;
  margin: 5px 50px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
</style>        
    </head>
    <body>
          <%
             String username = (String)session.getAttribute("username");
             if(username == null || username.trim().equals(""))
             {
               response.sendRedirect("ERP login.html");
             }
          %>
          <div class="topnav">
                             <h1 class="active" style="color: white; text-align: center; ">Fees Paid</h1>
          </div>
          
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
          <br></br><br></br><br></br>
<center>          
<form action="busfee.jsp">
    
   <label>Bus Fee :</label>&nbsp&nbsp&nbsp&nbsp
   <button type="submit" value="submit">Show</button>
</form>

<br></br><br></br><br></br>       
       
<form action="semesterfee.jsp">
  
   <label>Semester Fee :</label>
   <button type="submit" value="submit">Show</button>
</form>
 
<br></br><br></br><br></br>

<form action="examfee.jsp">
  
   <label>Exam Fee :</label>&nbsp&nbsp
   <button type="submit" value="submit">Show</button>
</form>
</center>
         <section></section>
    </body>
</html>
