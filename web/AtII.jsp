<%-- 
    Document   : At2
    Created on : 14 Jul, 2023, 11:45:04 PM
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
              String q = "SELECT * FROM AtII WHERE student_id = '"+username+"'";
          
              ResultSet rs = st.executeQuery(q);
             if(rs.next())
             { 
          %>
<h1>Semester - II &nbsp Attendance</h1>

<p class="ll">BTMACS201N &nbsp Mathematics-II</p>

<div class="container">
  <div class="skills html" style="width: <%=rs.getString("m2_at")%>; color: orange; font-weight: bold;"><%=rs.getString("m2_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("m2_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("m2_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">HUCS101 &nbsp Communication Skills</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("cs_at")%>; color: orange; font-weight: bold;"><%=rs.getString("cs_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cs_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cs_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTPH101 &nbsp Applied Physics</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("ap_at")%>; color: orange; font-weight: bold;"><%=rs.getString("ap_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ap_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ap_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTIT201N &nbsp Data Communication</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("dc_at")%>; color: orange; font-weight: bold;"><%=rs.getString("dc_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("dc_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("dc_ac")%></label>
  
  <br></br><br></br><br/>
</div>  
  
  <p class="ll">BTCS202N &nbsp Object Oriented Programming</p>
<div class="container">
    <div class="skills html" style="width: <%=rs.getString("oop_at")%>; color: orange; font-weight: bold;"><%=rs.getString("oop_at")%></div>
    
    <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("oop_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("oop_ac")%></label>
  
  <br></br><br></br><br/>
</div>
 
  <p class="ll">BTCS203N &nbsp Operating System</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("os_at")%>; color: orange; font-weight: bold;"><%=rs.getString("os_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("os_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("os_ac")%></label>
  
  <br></br><br></br><br/>
</div>
  
  <p class="ll">BTCS204N &nbsp Principle of Programming Language</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("ppl_at")%>; color: orange; font-weight: bold;"><%=rs.getString("ppl_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ppl_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ppl_ac")%></label>
  
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
