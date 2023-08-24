/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author mayank_matkar
 */

import DTO.UserDTO;
import DB.DBconnector;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EnrollAuthenticator 
{
   public boolean isEnroll(UserDTO user)
   {
      String username = user.getUsername();
      String New = user.getNew();
      String confirm = user.getConfirm();
      String student_id = "";
      
      try
      {
        Statement st = DBconnector.getStatement();
        String q = "SELECT student_id FROM student";
        
        ResultSet rs = st.executeQuery(q);
        while(rs.next())
        {
          student_id = rs.getString("student_id");
        }    
      } 
      catch(SQLException e)
      {
          System.out.println(e);  
      }    
      if(username.equals(student_id))
      {    
        return false;
      }
      else if(New.equals(confirm))
      {
        try
         {
           Statement st = DBconnector.getStatement();
           String q = "INSERT INTO student(student_id, student_password) VALUES('"+username+"', '"+confirm+"')";
         
           int i = st.executeUpdate(q);
           if(i>0)
           {
             return true;  
           }      
         }    
         catch(SQLException e)
         {
            System.out.println(e);    
         }  
      }    
      return false;
   }        
}
