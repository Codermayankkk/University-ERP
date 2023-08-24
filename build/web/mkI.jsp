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
              String q = "SELECT * FROM mkI WHERE student_id = '"+username+"'";
          
              ResultSet rs = st.executeQuery(q);
             if(rs.next())
             { 
          %>
        <center><h2><%=rs.getString("student_name")%></h2></center>
           <div>
               <label for="userid" id="label-userid">BTMACS101N &nbsp;Mathematics-I</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">17</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("m1_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("m1_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>
            
           <div>
               <label for="userid" id="label-userid">BTCS103N &nbsp;Computer System Organization</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("cso_marks")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("cso_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("cso_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>
               
           <div>
               <label for="userid" id="label-userid">BTEC104 &nbsp;Digital Logic And Circuit Design</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">16</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("dlcd_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
              <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("dlcd_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>    
               
           <div>
               <label for="userid" id="label-userid">BTCS101N &nbsp;Introduction to Computer Science and Engineering</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">12</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("icse_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("icse_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>
               
           <div>
               <label for="userid" id="label-userid">BTCS201N &nbsp;Data Structure and Algorithm</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">17</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("dsa_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("dsa_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>    
               
            <div>
               <label for="userid" id="label-userid">BTCS102N &nbsp;Principle of C Language</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">14</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("c_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("c_marks")%></label>
               
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
