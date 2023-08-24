<%--
    Document   : MyInfo
    Created on : 10 Jul, 2023, 4:10:58 AM
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
        <style>
body 
{
    margin: 0;
    background-color: white;
    font-family: sans-serif;
    text-align: center;
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
      <div class="topnav">
                          <h1 class="active" style="color: white; text-align: center; margin: 0; padding: 0; box-sizing: border-box; font-family: sans-serif;">Student Information</h1>
      </div>
      <form action="Student homepage.jsp">
          <%
            String username = (String)session.getAttribute("username");
            
            if(username == null || username.trim().equals(""))
            {
               response.sendRedirect("ERP login.html");
            }  
            
            try
            {
              Statement st = DBconnector.getStatement();
              String q = "SELECT * FROM student WHERE student_id = '"+username+"'";
              
              ResultSet rs = st.executeQuery(q);
              if(rs.next())
              {     
              %>
                <div class="form-control">
		      <label for="userid" id="label-userid">Enrollment Id</label>

                      <textarea id="userid" name="w3review" rows="1" cols="50" disabled><%=username%></textarea>
		</div>
                      
                <div class="form-control">
			<label for="name" id="label-name">Full Name</label>

                        <textarea id="name" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_name")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="name" id="label-name">Semester</label>

                        <textarea id="name" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_sem")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="branch" id="label-branch">Section</label>

			<textarea id="branch" name="branch" rows="1" cols="50"><%=rs.getString("student_section")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="mailid" id="label-mailid">Mail-Id</label>

			<textarea id="mailid" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_mailid")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="address" id="label-address">Address</label>

			<textarea id="address" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_address")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="city" id="label-city">City</label>

			<textarea id="city" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_city")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="number" id="label-contactnumber">Contact Number</label>

			<textarea id="number" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_contactnumber")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="fname" id="label-fathername">Father Name</label>

			<textarea id="fname" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_fathername")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="mname" id="label-mothername">Mother Name</label>

			<textarea id="mname" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_mothername")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="branch" id="label-branch">Branch</label>

			<textarea id="branch" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_branch")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="branch" id="label-branch">Session</label>

			<textarea id="branch" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_session")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="year" id="label-year">Year</label>

			<textarea id="year" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_year")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="dept" id="label-dept">Department</label>

			<textarea id="dept" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_dept")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="blood" id="label-bloodgrp">Blood Group</label>

			<textarea id="blood" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_bloodgrp")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="gender" id="label-gender">Gender</label>

			<textarea id="gender" name="w3review" rows="1" cols="50" disabled><%=rs.getString("student_gender")%></textarea>
                </div>
              <%  
              }    
            } 
            catch(SQLException e)
            {
              System.out.println(e); 
            }    
         %>
		<button type="submit" style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;">Home</button>
	</form>
               <form action="UpdateInfo.jsp" style="background-color: whitesmoke; max-width: 0; margin: 0px ; padding: 0px; box-shadow: none">
                     <button type="submit" style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;  margin: 0; position: absolute; top: 50%; left: 50%; -ms-transform: translate(-50%, -50%); transform: translate(-50%, 3175%);">Edit</button>               
              </form>  
              <form action="UpdateProfile.jsp" style="background-color: whitesmoke; max-width: 0; margin: 0px ; padding: 0px; box-shadow: none">
                                         <input type="hidden" name="username" value="<%=username%>">
                     <button type="submit" style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;  margin: 0; position: absolute; top: 50%; left: 50%; -ms-transform: translate(-50%, -50%); transform: translate(-50%, 3290%);">Edit Profile</button>               
              </form>   

</body>
</html>