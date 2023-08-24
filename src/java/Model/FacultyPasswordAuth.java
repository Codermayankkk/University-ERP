package Model;

import DB.DBconnector;
import DTO.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mayank_matkar
 */
public class FacultyPasswordAuth 
{
  public boolean isFPassword(UserDTO user)
  {
      String username = user.getUsername();
      String old = user.getOld();
      String New = user.getNew();
      String confirm = user.getConfirm();
      String faculty_password = null;
      
      try
      {
         Statement st = DBconnector.getStatement();
         String q = "SELECT faculty_password FROM faculty WHERE faculty_id = '"+username+"'";
         
         ResultSet rs = st.executeQuery(q);
         if(rs.next())
         {
           faculty_password = rs.getString("faculty_password");
         }    
      }   
      catch(SQLException e)
      {
        System.out.println(e);   
      }  
      if(old.equals(faculty_password) && New.equals(confirm))
      {
        try
        {
          Statement st = DBconnector.getStatement();
          String q = "UPDATE faculty SET faculty_password = '"+confirm+"' WHERE faculty_id = '"+username+"'";
          
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
