<%-- 
    Document   : At1
    Created on : 14 Jul, 2023, 8:49:21 AM
    Author     : mayank_matkar
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="DB.DBconnector"%>
<!DOCTYPE html>
<html>
<head>
      <title>SVVV ERP</title>
<style>
* 
{
    box-sizing: border-box
}

.container 
{
  width: 100%;
  background-color: white;
}

.skills 
{
  text-align: right;
  padding-top: 10px;
  padding-bottom: 10px;
  color: white;
}

.html {background-color: dodgerblue;}

.ll
{
  font-weight: bold;  
}
h1
{
  font-family: sans-serif;
  text-align: center; 
  font-weight: bold;
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
              String q = "SELECT * FROM AtI WHERE student_id = '"+username+"'";
          
              ResultSet rs = st.executeQuery(q);
             if(rs.next())
             { 
          %>
<h1>Semester - I &nbsp Attendance</h1>

<p class="ll">BTMACS101N &nbsp Mathematics-I</p>

<div class="container">
  <div class="skills html" style="width: <%=rs.getString("m1_at")%>; color: orange; font-weight: bold;"><%=rs.getString("m1_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("m1_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("m1_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTCS201N &nbsp Data Structure and Algorithm</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("dsa_at")%>; color: orange; font-weight: bold;"><%=rs.getString("dsa_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("dsa_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("dsa_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTEC104 &nbsp Digital Logic And Circuit Design</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("dlcd_at")%>; color: orange; font-weight: bold;"><%=rs.getString("dlcd_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("dlcd_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("dlcd_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTCS103N &nbsp Computer System Organization</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("cso_at")%>; color: orange; font-weight: bold;"><%=rs.getString("cso_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cso_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cso_ac")%></label>
  
  <br></br><br></br><br/>
</div>  
  
  <p class="ll">BTCS101N &nbsp Introduction to Computer Science and Engineering</p>
<div class="container">
    <div class="skills html" style="width: <%=rs.getString("icse_at")%>; color: orange; font-weight: bold;"><%=rs.getString("icse_at")%></div>
    
    <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("icse_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("icse_ac")%></label>
  
  <br></br><br></br><br/>
</div>
 
  <p class="ll">BTCS102N &nbsp Principle of C Language</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("c_at")%>; color: orange; font-weight: bold;"><%=rs.getString("c_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("c_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("c_ac")%></label>
  
  <br></br>
</div>
  
<%
    }
      }    
       catch(SQLException e)
       {
         System.out.println(e);
       } 
%>
</body>
</html>
