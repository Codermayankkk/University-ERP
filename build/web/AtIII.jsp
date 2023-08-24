<%-- 
    Document   : At3
    Created on : 15 Jul, 2023, 12:21:46 AM
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
              String q = "SELECT * FROM AtIII WHERE student_id = '"+username+"'";
          
              ResultSet rs = st.executeQuery(q);
             if(rs.next())
             { 
          %>
<h1>Semester - III &nbsp Attendance</h1>

<p class="ll">BTCS301N &nbsp Descrete Structure</p>

<div class="container">
  <div class="skills html" style="width: <%=rs.getString("ds_at")%>; color: orange; font-weight: bold;"><%=rs.getString("ds_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ds_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ds_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTCS302N &nbsp Analysis and Design of Algorithm</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("ada_at")%>; color: orange; font-weight: bold;"><%=rs.getString("ada_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ada_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("ada_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTCS303N &nbsp Computer Graphics and Multimedia</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("cgm_at")%>; color: orange; font-weight: bold;"><%=rs.getString("cgm_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cgm_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cgm_ac")%></label>
  
  <br></br><br></br><br/>
</div>

<p class="ll">BTIT301N &nbsp Computer Networks</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("cn_at")%>; color: orange; font-weight: bold;"><%=rs.getString("cn_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cn_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("cn_ac")%></label>
  
  <br></br><br></br><br/>
</div>  
 
  <p class="ll">BTDSE311N &nbsp Information Theory and Coding</p>
<div class="container">
  <div class="skills html" style="width: <%=rs.getString("itc_at")%>; color: orange; font-weight: bold;"><%=rs.getString("itc_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("itc_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("itc_ac")%></label>
  
  <br></br><br></br><br/>
</div>

  <%if(rs.getString("shh_at") == null)
  {
      
  }
  else
  {
  %>
    <p class="ll">GULS101 &nbsp Stress and Human Health</p>
  <div class="container">
  <div class="skills html" style="width: <%=rs.getString("shh_at")%>; color: orange; font-weight: bold;"><%=rs.getString("shh_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("shh_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("shh_ac")%></label>
  
  <br></br>
</div>
  <%   
  }
  %>
  
<%if(rs.getString("pfi_at") == null)
  {
      
  }
  else
  {
  %>
    <p class="ll">BECOM103 &nbsp Personality Finance and Investment</p>
  <div class="container">
  <div class="skills html" style="width: <%=rs.getString("pfi_at")%>; color: orange; font-weight: bold;"><%=rs.getString("pfi_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("pfi_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("pfi_ac")%></label>
  
  <br></br>
</div>
  <%   
  }
  %>  
  
 <%if(rs.getString("img_at") == null)
  {
      
  }
  else
  {
  %>
    <p class="ll">ARC102N(P) &nbsp Image Editing</p>
  <div class="container">
  <div class="skills html" style="width: <%=rs.getString("img_at")%>; color: orange; font-weight: bold;"><%=rs.getString("img_at")%></div>
  
  <label>Present Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("img_pc")%></label>
  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <label>Absent Days &nbsp; = </label>
  &nbsp;
  <label><%=rs.getString("img_ac")%></label>
  
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
