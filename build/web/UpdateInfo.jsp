<%-- 
    Document   : UpdateInfo
    Created on : 20 Jul, 2023, 10:16:14 AM
    Author     : mayank_matkar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="DB.DBconnector"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                          <h1 class="active" style="color: white; text-align: center; margin: 0; padding: 0; box-sizing: border-box; font-family: sans-serif;">Update Information</h1>
      </div>
        <form action="UpdateInfoChecker" method="POST">
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
                <input type="hidden" name="username" value="<%=username%>">

                <div class="form-control">
			<label for="name" id="label-name">Full Name</label>

                        <textarea id="name" name="name" rows="1" cols="50"><%=rs.getString("student_name")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="mailid" id="label-mailid">Mail-Id</label>

			<textarea id="mailid" name="mailid" rows="1" cols="50"><%=rs.getString("student_mailid")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="address" id="label-address">Address</label>

			<textarea id="address" name="address" rows="1" cols="50"><%=rs.getString("student_address")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="city" id="label-city">City</label>

			<textarea id="city" name="city" rows="1" cols="50"><%=rs.getString("student_city")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="number" id="label-contactnumber">Contact Number</label>
                        
                        <textarea id="city" name="contactnumber" rows="1" cols="50"><%=rs.getString("student_contactnumber")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="fname" id="label-fathername">Father Name</label>

			<textarea id="fname" name="fathername" rows="1" cols="50" ><%=rs.getString("student_fathername")%></textarea> 
                </div>
                
                <div class="form-control">
			<label for="mname" id="label-mothername">Mother Name</label>

			<textarea id="mname" name="mothername" rows="1" cols="50"><%=rs.getString("student_mothername")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="blood" id="label-bloodgrp">Blood Group</label>

			<textarea id="blood" name="bloodgrp" rows="1" cols="50"><%=rs.getString("student_bloodgrp")%></textarea>
		</div>
                
                <div class="form-control">
			<label for="gender" id="label-gender">Gender</label>

			<textarea id="gender" name="gender" rows="1" cols="50"><%=rs.getString("student_gender")%></textarea>
                </div>
              <%  
              }    
            } 
            catch(SQLException e)
            {
              System.out.println(e); 
            }    
         %>
		<button type="submit" style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;">Update</button>
	</form>
        <form action="MyInfo.jsp" style="background-color: whitesmoke; max-width: 0; margin: 0px ; padding: 0px; box-shadow: none">
           <button style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;  margin: 0; position: absolute; top: 50%; left: 50%; -ms-transform: translate(-50%, -50%); transform: translate(-50%, 1630%);" type="submit">Back</button>
        
       </form>        
</body>
</html>
    </body>
</html>
