<%-- 
    Document   : FacultyProfileUpdate
    Created on : 6 Aug, 2023, 3:45:45 AM
    Author     : mayank_matkar
--%>
<!DOCTYPE html>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DB.DBconnector"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SVVV ERP</title>
        <script src="https://kit.fontawesome.com/57eeca9c9a.js" crossorigin="anonymous"></script>
<style>
body 
{
  font-family: Arial, Helvetica, sans-serif;
  text-align: center;
}

.navbar 
{
  overflow: hidden;
  background-color: dodgerblue;
}

.navbar a 
{
  float: left;
  font-size: 16px;
  color: white;
  font-weight: bold;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown 
{
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn 
{
  font-weight: bold;
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color:inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn 
{
  background-color: orange;
}

.dropdown-content 
{
  display: none;
  position: absolute;
  background-color: dodgerblue;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a 
{
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover 
{
  background-color: orange;
}

.dropdown:hover .dropdown-content 
{
  display: block;
}
body 
{
  font-family: Arial, Helvetica, sans-serif;
}
* 
{
    box-sizing: border-box;
}

.form-inline 
{  
  display: flex;
  flex-flow: row wrap;
  align-items: center;
}

.form-inline label 
{
  margin: 5px 10px 5px 0;
}

.form-inline input 
{
  vertical-align: middle;
  margin: 5px 10px 5px 0;
  padding: 10px;
  background-color: #fff;
  border: 1px solid #ddd;
}

.form-inline button 
{
  padding: 10px 20px;
  background-color: dodgerblue;
  border: 1px solid #ddd;
  color: white;
  cursor: pointer;
}

.form-inline button:hover 
{
  background-color: royalblue;
}

@media (max-width: 800px) 
{
.form-inline input 
  {
    margin: 10px 0;
  }
  
.form-inline 
{
    flex-direction: column;
    align-items: stretch;
}  
</style>        
</head>
    <body>
           <%
            String username = (String)session.getAttribute("username");
            String student_branch = null;
            if(username == null || username.trim().equals(""))
            {
               response.sendRedirect("ERP login.html");
            }
            try
            {
              Statement st = DBconnector.getStatement();
              String q = "SELECT * FROM allotedsection WHERE faculty_id = '"+username+"'";
              
              ResultSet rs = st.executeQuery(q);
              if(rs.next())
              {
                student_branch = rs.getString("sec_5");  
          %>
            <div class="navbar">
    <img src = "images/svvv.jpg" alt = "image not found" height= "40" width= "40" style="float: left; border-radius: 50%; padding: 3px 3px"/>
    <a href="faculty homepage.jsp">Home</a>
    <div class="dropdown">
    <button class="dropbtn">Profile &nbsp;<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="PersonalInfo.jsp"><i class="fa-regular fa-user"></i>&nbsp;&nbsp;Personal Info</a>
      <a href="FacultyChangePassword.jsp"><i class="fa-solid fa-key"></i>&nbsp;Change Password</a>
      <a href="#"><i class="fa-solid fa-receipt"></i>&nbsp;&nbsp;Salary Slip</a>
    </div>
  </div> 
  
   <div class="dropdown">
    <button class="dropbtn">Examination &nbsp;<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Faculty Attendance.jsp"><i class="fa-solid fa-book"></i>&nbsp;&nbsp;Student Attendance</a>
      <a href="Faculty Marks Upload.jsp"><i class="fa-solid fa-chart-column"></i>&nbsp;&nbsp;Student Marks</a>
      <a href="Create Attendance ERP.jsp"><i class="fa-solid fa-plus"></i>&nbsp;&nbsp;Create Attendance ERP</a>
      <a href="Create Marks ERP.jsp"><i class="fa-solid fa-plus"></i>&nbsp;&nbsp;Create Marks ERP</a>
    </div>
  </div>
  
  <div class="dropdown">
    <button class="dropbtn">Timing &nbsp;<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#"><i class="fa-solid fa-clipboard-user"></i>&nbsp;&nbsp;Time of report</a>
      <a href="#"><i class="fa-solid fa-right-from-bracket"></i>&nbsp;&nbsp;Time of leave</a>
    </div>
  </div>
  
    <div class="dropdown">
    <button class="dropbtn">Alloted Section &nbsp;<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
       <%if(rs.getString("sec_1").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          %><a href="<%=rs.getString("sec_1")%>.jsp"><%=rs.getString("sec_1")%></a><%    
        }
        %>
        
        <%if(rs.getString("sec_2").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          %><a href="<%=rs.getString("sec_2")%>.jsp"><%=rs.getString("sec_2")%></a><%    
        }
        %>
          
        <%if(rs.getString("sec_3").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          %><a href="<%=rs.getString("sec_3")%>.jsp"><%=rs.getString("sec_3")%></a><%  
        }
        %> 
          
        <%if(rs.getString("sec_4").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          %><a href="<%=rs.getString("sec_4")%>.jsp"><%=rs.getString("sec_4")%></a><%    
        }
        %>  
        
        <%if(rs.getString("sec_5").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          %><a href="<%=rs.getString("sec_5")%>.jsp"><%=rs.getString("sec_5")%></a><%    
        }
        %>  
<%           }
            }
            catch(SQLException e)
            {
              System.out.println(e); 
            }
          %>      
    </div>
  </div>
  <a href="logout.jsp" style="float:right;"><i class="fa-solid fa-power-off"></i>&nbsp;&nbsp;Logout</a>
  
</div>       
    <center>              
            <h2>Update Profile Photo</h2>
            <br/>            
    </center>
    
            <form class="form-inline" action="FUpdateProfileChecker" method="POST" enctype="multipart/form-data">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="hidden" name="username" value="<%=username%>">
                <label style="font-weight:bold;">Upload Image : </label>
                <br/>                
                <input type="file" name="image" placeholder="Insert your image" required>
                
                <button type="submit">Upload</button>
            </form>
            <br></br>   
<%
    try
    {
       Statement st = DBconnector.getStatement();
       String q = "SELECT faculty_img FROM faculty WHERE faculty_id = '"+username+"'";
       
       ResultSet rs = st.executeQuery(q);
       if(rs.next())
       {
    %>
    <center> <img style="border-radius: 50%;" src = "images/<%=rs.getString("faculty_img")%>" alt = "image not found" height = 200 width = 200 /></center>
    <%         
       }    
    }
    catch(SQLException e)
    {
      System.out.println(e); 
    }    
%>           
    <br></br>
    <form action="PersonalInfo.jsp">
    <center><button style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;" type="submit">Back</button></center>
    </form>    
    </body>
</html>
