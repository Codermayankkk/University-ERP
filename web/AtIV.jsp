<%-- 
    Document   : At4
    Created on : 15 Jul, 2023, 1:14:01 AM
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
              String q = "SELECT * FROM AtIV WHERE student_id = '"+username+"'";
          
              ResultSet rs = st.executeQuery(q);
             if(rs.next())
             { 
          %>
<h1>Semester - IV &nbsp Attendance</h1>

<p class="ll">ML307 &nbsp Environmental Management and Sustainability</p>

<div class="container">
  <div class="skills html" style="width: <%=rs.getString("ems_at")%>; color: orange; font-weight: bold;"><%=rs.getString("ems_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ems_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ems_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BBTCS401N &nbsp Database Management Systems</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("dbms_at")%>; color: orange; font-weight: bold;"><%=rs.getString("dbms_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("dbms_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("dbms_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTCS402N &nbsp Software Engineering and Project Management</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("sepm_at")%>; color: orange; font-weight: bold;"><%=rs.getString("sepm_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("sepm_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("sepm_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTCS402N &nbsp Fundatmental Of Design Thinking</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("fdt_at")%>; color: orange; font-weight: bold;"><%=rs.getString("fdt_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("fdt_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("fdt_ac")%></label>
  
  <br></br><br></br><br/>
</div>  
 
  <p class="ll">BTDSE411N &nbsp Principles Of Distributed Systems</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("pds_at")%>; color: orange; font-weight: bold;"><%=rs.getString("pds_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("pds_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("pds_ac")%></label>
  
  <br></br><br></br><br/>
</div>
 
<%if(rs.getString("itx_at") == null)
{
    
}
else
{
%>
<p class="ll">GUCOM202 &nbsp Indirect TAX-Goods and Services Tax</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("itx_at")%>; color: orange; font-weight: bold;"><%=rs.getString("itx_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("itx_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("itx_ac")%></label>
  
  <br></br>
</div>
<%    
}
%>  
  
<%if(rs.getString("hn_at") == null)
{
    
}
else
{
%>
<p class="ll">GULN204 &nbsp Human Nutrition</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("hn_at")%>; color: orange; font-weight: bold;"><%=rs.getString("hn_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("hn_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("hn_ac")%></label>
  
  <br></br>
</div>
<%    
}
%>

<%if(rs.getString("cpm_at") == null)
{
    
}
else
{
%>
<p class="ll">CICOM301 &nbsp Construction Planning and Management</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("cpm_at")%>; color: orange; font-weight: bold;"><%=rs.getString("cpm_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cpm_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cpm_ac")%></label>
  
  <br></br>
</div>
<%    
}
%>

<%if(rs.getString("pp_at") == null)
{
    
}
else
{
%>
<p class="ll">GULCOM404 &nbsp Personality Psychology</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("pp_at")%>; color: orange; font-weight: bold;"><%=rs.getString("pp_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("pp_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("pp_ac")%></label>
  
  <br></br>
</div>
<%    
}
%>

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
