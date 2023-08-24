<%-- 
    Document   : Sem1
    Created on : 13 Jul, 2023, 2:01:43 AM
    Author     : mayank_matkar
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="DB.DBconnector" %>
<!DOCTYPE html>
<html>
    <head>
        <title>SVVV ERP</title>
<style>
*
{
  background: gainsboro;  
}
div 
{
  background-color: white;
  width: 300px;
  border: 4px solid dodgerblue;
  padding: 10px;
  margin: 30px 500px;
  text-align: left;
}
h2
{
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
            
            if(username == null || username.trim().equals(""))
            {
               response.sendRedirect("ERP login.html");
            }
            
            try
            {
              Statement st = DBconnector.getStatement();
              String q = "SELECT * FROM mkII WHERE student_id = '"+username+"'";
          
              ResultSet rs = st.executeQuery(q);
             if(rs.next())
             { 
          %>
        <center><h2><%=rs.getString("student_name")%></h2></center>
           <div>
               <label for="userid" id="label-userid">BTMACS201N &nbsp;Mathematics-II</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("m2_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("m2_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("m2_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>
            
           <div>
               <label for="userid" id="label-userid">HUCS101 &nbsp;Communication Skills</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("cs_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("cs_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("cs_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>
               
           <div>
               <label for="userid" id="label-userid">BTPH101 &nbsp; Applied Physics</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("ap_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("ap_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
              <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("ap_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>    
               
           <div>
               <label for="userid" id="label-userid">BTCS202N &nbsp;Object Oriented Programming</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("oop_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("oop_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("oop_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>
               
           <div>
               <label for="userid" id="label-userid">BTCS203N &nbsp;Operating System</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("os_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("os_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("os_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>    
               
            <div>
               <label for="userid" id="label-userid">BTIT201N &nbsp;Data Communication</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("dc_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("dc_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("dc_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>   
               
           <div>
               <label for="userid" id="label-userid">BTCS204N &nbsp; Principle of Programming Language</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("ppl_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("ppl_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("ppl_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
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

