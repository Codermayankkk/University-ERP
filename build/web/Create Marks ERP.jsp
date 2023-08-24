<%-- 
    Document   : Create Marks ERP
    Created on : 23 Aug, 2023, 8:27:53 AM
    Author     : mayank_matkar
--%>

<%@page import="DB.DBconnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SVVV ERP</title>
        <script src="https://kit.fontawesome.com/57eeca9c9a.js" crossorigin="anonymous"></script>
        <style>
body 
{
  font-family: Arial, Helvetica, sans-serif;
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
form 
{
    background-color: whitesmoke;
    max-width: 900px;
    margin: 50px auto;
    padding: 20px 20px;
    box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
}
.form-control 
{
    text-align: left;
    margin-bottom: 10px;
}
.form-control label 
{
    display: block;
    margin-bottom: 10px;
}
.form-control input,
.form-control select,
.form-control textarea 
{
    border: 1px solid #777;
    border-radius: 2px;
    font-family: inherit;
    padding: 10px;
    display: block;
    width: 22%;
    
    border-radius: 4px;
    box-sizing: border-box;
    border: 2px solid dodgerblue;
    border-radius: 12px;
    padding: 5px;
}
label
{
  font-weight: bold;
  font-family: sans-serif;  
  color: dodgerblue;  
}
button[type=submit] 
{
  width: 35%;
  background-color: orange;
  color: white;
  padding: 6px 5px;
  margin: 5px 300px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
::-webkit-scrollbar 
{
  width: 10px;
}
::-webkit-scrollbar-track 
{
  box-shadow: inset 0 0 5px grey; 
  border-radius: 10px;
}
::-webkit-scrollbar-thumb 
{
  background: dodgerblue; 
  border-radius: 10px;
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
            try
            {
              Statement st = DBconnector.getStatement();
              String q = "SELECT * FROM allotedsection WHERE faculty_id = '"+username+"'";
              
              ResultSet rs = st.executeQuery(q);
              if(rs.next())
              {
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
      <a href="#"><i class="fa-solid fa-chart-column"></i>&nbsp;&nbsp;Student Marks</a>
      <a href="Create Attendance ERP.jsp"><i class="fa-solid fa-plus"></i>&nbsp;&nbsp;Create Attendance ERP</a>
      <a href="#"><i class="fa-solid fa-plus"></i>&nbsp;&nbsp;Create Marks ERP</a>
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
    </div>
  </div>
  
  <a href="logout.jsp" style="float:right;"><i class="fa-solid fa-power-off"></i>&nbsp;&nbsp;Logout</a>
  
</div>
<%               
              }
             }
            catch(SQLException e)
            {
              System.out.println(e); 
            }

            try
            {
              Statement st = DBconnector.getStatement();
              String q = "SELECT * FROM allotedclasscordinator WHERE faculty_id = '"+username+"'";

              ResultSet rs = st.executeQuery(q);
              if(rs.next())
              {
                String branch = rs.getString("alloted_branch");
                String year = rs.getString("alloted_year");
                String sem = rs.getString("alloted_sem");
                String Session = rs.getString("alloted_session");
                String section = rs.getString("alloted_section");
%>              
       <%if(rs.getString("alloted_branch") == null)
        {
%>
    <center><h2 style="color: dodgerblue; text-align: center; margin: 0;">You are not class coordinator you are year coordinator that's why you cannot create any ERP for class</h2></center>   
<%
        }
        else
        {
        %>
<center> 
        <br></br><br/>
        <h2 style="color: dodgerblue; text-align: center; margin: 0;">Click below to create your alloted class ERP</h2> 
        <br></br>
        <form action="CreateMarksSenderChecker" method="POST">
           <input type="hidden" name="Session" value="<%=Session%>">
           <input type="hidden" name="sem" value="<%=sem%>">
           <input type="hidden" name="year" value="<%=year%>">
           <input type="hidden" name="branch" value="<%=branch%>">
           <input type="hidden" name="section" value="<%=section%>">
           
          <div class="form-control">
          <font style="color: black; font-weight: bold;">Alloted Branch &nbsp;<i class="fa fa-caret-down"></i></font>
          &nbsp;&nbsp;
          <font style="color: black; font-weight: bold;">Alloted Year &nbsp;<i class="fa fa-caret-down"></i></font>
          &nbsp;&nbsp;
          <font style="color: black; font-weight: bold;">Alloted Semester &nbsp;<i class="fa fa-caret-down"></i></font>
          &nbsp;&nbsp;
          <font style="color: black; font-weight: bold;">Alloted Schema &nbsp;<i class="fa fa-caret-down"></i></font>
          &nbsp;&nbsp;
          <font style="color: black; font-weight: bold;">Alloted Session &nbsp;<i class="fa fa-caret-down"></i></font>
          &nbsp;&nbsp;
          <font style="color: black; font-weight: bold;">Alloted Section &nbsp;<i class="fa fa-caret-down"></i></font>
          
          <br/><br/>
          
          <font style="font-weight: bold; font-family: sans-serif; color: dodgerblue;"><%=rs.getString("alloted_branch")%></font>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font style="font-weight: bold; font-family: sans-serif; color: dodgerblue;"><%=rs.getString("alloted_year")%></font>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font style="font-weight: bold; font-family: sans-serif; color: dodgerblue;"><%=rs.getString("alloted_sem")%></font>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font style="font-weight: bold; font-family: sans-serif; color: dodgerblue;"><%=rs.getString("alloted_schema")%></font>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font style="font-weight: bold; font-family: sans-serif; color: dodgerblue;"><%=rs.getString("alloted_session")%></font>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <font style="font-weight: bold; font-family: sans-serif; color: dodgerblue;"><%=rs.getString("alloted_section")%></font>
          <br></br>
          <button type="submit">Click here to create marks ERP for alloted branch</button>
          
          </div>
          </form>
<%    
        }
              }
            }
            catch(SQLException e)
            {
              System.out.println(e);
            }
%>
</center>
</body>
</html>
