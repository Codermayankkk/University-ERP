<%-- 
    Document   : RegisterProfile
    Created on : 23 Jul, 2023, 1:05:38 AM
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
              if(username == null || username.trim().equals(""))
              {
                 response.sendRedirect("ERP registration.html");
              }
           %>
           <center> 
           <div class="topnav">
                   <br/>
                   <img src = "images/svvv.jpg" alt = "image not found" height= "80" width= "80"/>
                   &nbsp;&nbsp;&nbsp;
                   <h2 class="active" style="display: inline-block; color: white;">Shri Vaishnav Vidyapeeth Vishwavidyalya</h2>
            </div>
            
            <h2>Registration</h2>
            <br/>
            <p style="font-weight:bold;">If you want to upload your profile picture then you can upload it otherwise skip it</p>
            <br/>            
           </center>
    
            <form class="form-inline" action="UploadChecker" method="POST" enctype="multipart/form-data">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="hidden" name="username" value="<%=username%>">
                <label style="font-weight:bold;">Upload Image : </label>
                <br/>                
                <input type="file" name="image" placeholder="Insert your image" required>
                
                <button type="submit">Upload</button>
            </form>
    
    <form class="form-inline" action="ERP login.html">
        <br></br><br></br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <button type="submit">Skip</button>
    </form>
    </body>
</html>
