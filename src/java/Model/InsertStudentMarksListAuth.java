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
public class InsertStudentMarksListAuth 
{
   public boolean isInsert(UserDTO user)
  {
       String branch = user.getBranch();
       String sem = user.getSem();
       String Session = user.getSession();
       String name = user.getName();
       String student_id = user.getUsername();
       
       try
       {
         Statement st = DBconnector.getStatement();
         String q = "SELECT student_id FROM mk"+sem+" WHERE student_branch = '"+branch+"' && student_session = '"+Session+"'";
         
         ResultSet rs = st.executeQuery(q);
         while(rs.next())
         {
           if(rs.getString("student_id").equals(student_id))
           {
             return false;
           }
         }    
       }   
       catch(SQLException e)
       {
         System.out.println(e);
       }    
      
       try
       {
          Statement st = DBconnector.getStatement();
          String q = "INSERT INTO mk"+sem+"(student_id, student_name, student_branch, student_session) VALUES('"+student_id+"', '"+name+"', '"+branch+"', '"+Session+"')";
         
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
    return false;  
  }
}
