package Model;

/**
 *
 * @author mayank_matkar
 */
import DB.DBconnector;
import DTO.UserDTO;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FacultyEnrollAuth 
{
  public boolean isFenroll(UserDTO user)
  {
    String username = user.getUsername();
    String New = user.getNew();
    String confirm = user.getConfirm();
    
    String faculty_id = null;
    try
    {
       Statement st = DBconnector.getStatement();
       String q = "SELECT faculty_id FROM faculty";
       
       ResultSet rs = st.executeQuery(q);
       while(rs.next())
       {
         faculty_id = rs.getString("faculty_id");
       }    
    }    
    catch(SQLException e)
    {
      System.out.println(e);  
    }    
    if(username.equals(faculty_id))
    {
       return false; 
    }    
    else if(New.equals(confirm))
    {
      try
      {
        Statement st = DBconnector.getStatement();
        String q = "INSERT INTO faculty(faculty_id, faculty_password) VALUES('"+username+"', '"+confirm+"')";
        
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
