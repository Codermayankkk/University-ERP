<%-- 
    Document   : Change Password
    Created on : 9 Jul, 2023, 9:34:19 AM
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
}
form 
{
    background-color: whitesmoke;
    max-width: 300px;
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
                          <h1 class="active" style="color: white; text-align: center; margin: 0; padding: 0; box-sizing: border-box; font-family: sans-serif;">Change Password</h1>
      </div>
     <%
            String username = (String)session.getAttribute("username");
            
            if(username == null || username.trim().equals(""))
            {
               response.sendRedirect("ERP login.html");
            }
         %>         
<div class="form-control">
    <form action="PasswordChecker" method="POST">
        
    <input type="hidden" name="username" value="<%=username%>">
        
    <label>Current Password</label>
    <input type="password" name="cpass" placeholder="Enter your current password">
    <br></br>
    <label>New Password</label>
    <input type="password" name="npass" placeholder="Enter your new password">
    <br></br>
    <label>Confirm Password</label>
    <input type="password" name="cnpass" placeholder="Enter your Confirm password">
    <br></br>
    <center><button style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;" type="submit">Submit</button></center>
  </form>  
</div> 
    <center>
    <form action="Student homepage.jsp" style="background-color: whitesmoke; max-width: 0; margin: 0px ; padding: 0px; box-shadow: none">
           <button style="padding: 10px 20px; background-color: dodgerblue; border: 1px solid #ddd; color: white; cursor: pointer;  margin: 0; position: absolute; top: 50%; left: 50%; -ms-transform: translate(-50%, -50%); transform: translate(-50%, 450%);" type="submit">Home</button>
    </form>
    </center>    
</body>
</html>
    
