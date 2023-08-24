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
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import DTO.UserDTO;
import DB.DBconnector;

public class StudentPasswordAuth 
{
  public boolean isPassword(UserDTO user)
  {
    String old = user.getOld();
    String New = user.getNew();
    String confirm = user.getConfirm();
    String username = user.getUsername();
    
    String student_password = "";
    
    try
    {
      Statement st = DBconnector.getStatement();
      String q = "SELECT student_password FROM student WHERE student_id = '"+username+"'";
      
      ResultSet rs = st.executeQuery(q);
      if(rs.next())
      {
        student_password = rs.getString("student_password");
      }    
    }
    catch(SQLException e)
    {
      System.out.println(e);   
    }    
    if(old.equals(student_password) && New.equals(confirm))
    {
      try
      {
        Statement st = DBconnector.getStatement();
        String q = "UPDATE student SET student_password = '"+confirm+"' WHERE student_id = '"+username+"'";
      
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
