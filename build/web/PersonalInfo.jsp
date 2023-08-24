<%--
    Document   : MyInfo
    Created on : 5 Aug, 2023
    Author     : mayank_matkar
--%>
<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="DB.DBconnector"%>

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
form 
{
    background-color: whitesmoke;
    max-width: 500px;
    margin: 50px auto;
    padding: 30px 20px;
    box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
}
.form-control 
{
    text-align: left;
    margin-bottom: 25px;
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
    width: 95%;
    
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
    </div>
  </div>
  <a href="logout.jsp" style="float:right;"><i class="fa-solid fa-power-off"></i>&nbsp;&nbsp;Logout</a>
  
</div> 
    <%           }
            }
            catch(SQLException e)
            {
              System.out.println(e); 
            }
          %>
      <form action="FacultyUpdateInfo.jsp">
          <%  
            try
            {
              Statement st = DBconnector.getStatement();
              String q = "SELECT * FROM faculty WHERE faculty_id = '"+username+"'";
              
              ResultSet rs = st.executeQuery(q);
              if(rs.next())
              {     
              %>
                <div class="form-control">
                    <h2 style="color: dodgerblue; text-align: center; margin: 0;">Faculty Information</h2>
		      <label for="userid" id="label-userid">Faculty Id</label>

                      <textarea id="userid" name="w3review" rows="1" cols="50" disabled><%=username%></textarea>
		</div>
                      
                <div class="form-control">
			<label for="name" id="label-name">Full Name</label>

                        <textarea id="name" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_name")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="mailid" id="label-mailid">Mail-Id</label>

			<textarea id="mailid" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_mailid")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="address" id="label-address">Address</label>

			<textarea id="address" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_address")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="city" id="label-city">City</label>

			<textarea id="city" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_city")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="number" id="label-contactnumber">Contact Number</label>

			<textarea id="number" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_contactnumber")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="fname" id="label-fathername">Father Name</label>

			<textarea id="fname" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_fathername")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="mname" id="label-mothername">Mother Name</label>

			<textarea id="mname" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_mothername")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="branch" id="label-branch">Highest Qualification</label>

			<textarea id="branch" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_qualification")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="year" id="label-year">Post</label>

			<textarea id="year" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_post")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="dept" id="label-dept">Department</label>

			<textarea id="dept" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_dept")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="blood" id="label-bloodgrp">Blood Group</label>

			<textarea id="blood" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_bloodgrp")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="gender" id="label-gender">Gender</label>

			<textarea id="gender" name="w3review" rows="1" cols="50" disabled><%=rs.getString("faculty_gender")%></textarea>
                </div>
              <%  
              }    
            } 
            catch(SQLException e)
            {
              System.out.println(e); 
            }    
         %>
		<button type="submit" style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;">Edit</button>
	</form> 
                
              <form action="FacultyProfileUpdate.jsp" style="background-color: whitesmoke; max-width: 0; margin: 0px ; padding: 0px; box-shadow: none">
                                         <input type="hidden" name="username" value="<%=username%>">
                     <button type="submit" style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;  margin: 0; position: absolute; top: 50%; left: 50%; -ms-transform: translate(-50%, -50%); transform: translate(-50%, 2650%);">Edit Profile</button>               
              </form>   

</body>
</html>