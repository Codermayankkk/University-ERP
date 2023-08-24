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
              String q = "SELECT * FROM mkIV WHERE student_id = '"+username+"'";
          
              ResultSet rs = st.executeQuery(q);
             if(rs.next())
             { 
          %>
        <center><h2><%=rs.getString("student_name")%></h2></center>
           <div>
               <label for="userid" id="label-userid">ML307 &nbsp; Environmental Management and Sustainability</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("ems_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("ems_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("ems_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>
            
           <div>
               <label for="userid" id="label-userid">BTCS401N &nbsp; Database Management Systems</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("dbms_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("dbms_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("dbms_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>
               
           <div>
               <label for="userid" id="label-userid">BTCS402N &nbsp; Software Engineering and Project Management</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("sepm_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("sepm_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
              <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("sepm_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>    
               
           <div>
               <label for="userid" id="label-userid">BTCS402N &nbsp; Fundatmental Of Design Thinking</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("fdt_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("fdt_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("fdt_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>
               
           <div>
               <label for="userid" id="label-userid">BTDSE411N &nbsp; Principles Of Distributed Systems</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("pds_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("pds_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("pds_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
           </div>    
               
            <div>
               <label for="userid" id="label-userid">GUCOM202 &nbsp;Indirect TAX-Goods and Services Tax</label>
               
               <br></br>
               <label for="userid" id="label-userid">Exam Name</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Total Marks</label>

               &nbsp &nbsp
               <label for="userid" id="label-userid">Obtain Marks</label>
               
               <br></br>
               <label for="userid" id="label-userid">TA/CA :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("itx_ta")%></label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-I :</label>

               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid"><%=rs.getString("itx_marks")%></label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp
               <label for="userid" id="label-userid">20</label>
               
               <br></br>
               <label for="userid" id="label-userid">MSE-II:</label>
               
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
               <label for="userid" id="label-userid"><%=rs.getString("itx_marks")%></label>
               
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
