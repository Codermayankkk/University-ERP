<%-- 
    Document   : RegisterFInfo
    Created on : 4 Aug, 2023, 9:51:39 AM
    Author     : mayank_matkar
--%>
<!DOCTYPE html>
<html>
    <head>
        <title>SVVV ERP</title>
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
.form-control input[type="checkbox"] 
{
    
    display: inline-block;
    width: auto;
}
button[type=submit] 
{ 
  width: 20%;
  background-color: dodgerblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button[type=submit]:hover 
{
  background-color: royalblue;
}
h1
{
  text-shadow: 2px 2px 5px dodgerblue;
  font-family: sans-serif;  
  color: dodgerblue;  
}
label
{
  font-weight: bold;
  font-family: sans-serif;  
  color: dodgerblue;  
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
          <center> 
           <div class="topnav">
                   <br/>
                   <img src = "images/svvv.jpg" alt = "image not found" height= "80" width= "80"/>
                   &nbsp;&nbsp;&nbsp;
                   <h2 class="active" style="display: inline-block; color: white;">Shri Vaishnav Vidyapeeth Vishwavidyalya</h2>
            </div>  
            <h2>Register Here</h2>
</center>
        <form action="FRegisterChecker" method="POST">
                         <input type="hidden" name="username" value="<%=username%>">
                      
                <div class="form-control">
			<label for="name" id="label-name">Full Name</label>

                        <textarea id="name" name="name" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="mailid" id="label-mailid">Mail-Id</label>

			<textarea id="mailid" name="mailid" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="address" id="label-address">Address</label>

			<textarea id="address" name="address" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="city" id="label-city">City</label>

			<textarea id="city" name="city" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="number" id="label-contactnumber">Contact Number</label>

			<textarea id="number" name="contactnumber" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="fname" id="label-fathername">Father Name</label>

			<textarea id="fname" name="fathername" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="mname" id="label-mothername">Mother Name</label>

			<textarea id="mname" name="mothername" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="branch" id="label-branch">Highest Qualification</label>

			<textarea id="branch" name="qual" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="year" id="label-year">Post</label>

			<textarea id="year" name="post" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="dept" id="label-dept">Department</label>

			<textarea id="dept" name="dept" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="blood" id="label-bloodgrp">Blood Group</label>

			<textarea id="blood" name="bloodgrp" rows="1" cols="50" required></textarea>
		</div>
                
                <div class="form-control">
			<label for="gender" id="label-gender">Gender</label>

			<textarea id="gender" name="gender" rows="1" cols="50" required></textarea>
                </div>
            <center><button type="submit" value="submit">Continue</button></center>
        </form>
    </body>
</html>
