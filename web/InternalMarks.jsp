<%-- 
    Document   : InternalMarks
    Created on : 12 Jul, 2023, 7:58:18 AM
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
  background: white;  
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
</style>
</head>
<body>
      <div class="topnav">
                          <h1 class="active" style="color: white; text-align: center; margin: 0; padding: 0; box-sizing: border-box; font-family: sans-serif;">Internal Marks</h1>
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
<center>
    <br></br>
<form action="mkI.jsp">
  
   <label>Semester I :</label>&nbsp&nbsp&nbsp&nbsp
   <button type="submit" value="submit">Show</button>
</form>

<br></br>       
       
<form action="mkII.jsp">
  
   <label>Semester II :</label>&nbsp&nbsp&nbsp
   <button type="submit" value="submit">Show</button>
</form>
 
<br></br>

<form action="mkIII.jsp">
  
   <label>Semester III :</label>&nbsp&nbsp
   <button type="submit" value="submit">Show</button>
</form>

<br></br>

<form action="mkIV.jsp">
  
   <label>Semester IV :</label>&nbsp&nbsp
   <button type="submit" value="submit">Show</button>
</form>

<br></br>

<form action="mkV.jsp">
  
   <label>Semester  V :</label>&nbsp&nbsp&nbsp
   <button type="submit" value="submit">Show</button>
</form>

<br></br>

<form action="mkVI.jsp">
  
   <label>Semester VI :</label>&nbsp&nbsp
   <button type="submit" value="submit">Show</button>
</form>

<br></br>

<form action="mkVII.jsp">
  
   <label>Semester VII :</label>&nbsp
   <button type="submit" value="submit">Show</button>
</form>       

<br></br>

<form action="mkVIII.jsp">
  
   <label>Semester VIII :</label>
   <button type="submit" value="submit">Show</button>
</form>
</center>
<section></section>
</body>
</html>
