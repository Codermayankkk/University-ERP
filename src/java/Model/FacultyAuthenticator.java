package Model;

/**
 *
 * @author mayank_matkar
 */
import java.sql.Statement;
import java.sql.SQLException;
import java.sql.ResultSet;
import DTO.UserDTO;
import DB.DBconnector;

public class FacultyAuthenticator 
{
  public boolean isFaculty(UserDTO user)  
  {
     String username = user.getUsername();
     String password = user.getPassword();
     String maincaptcha = user.getMaincaptcha();
     String inputcaptcha = user.getInputcaptcha();
    
     String facultypassword = "";
     
     try
     {
       Statement st = DBconnector.getStatement();
       String q = "SELECT faculty_password FROM faculty WHERE faculty_id = '"+username+"'";
       
       ResultSet rs = st.executeQuery(q);
       if(rs.next())
       {
         facultypassword = rs.getString(1);
       } 
     }  
       catch(SQLException e)
       {
         System.out.println(e);     
       }
     
     if(username != null && password != null && !username.trim().equals("") && password.equals(facultypassword) && maincaptcha.equals(inputcaptcha))
     {
       return true;  
     }   
    return false;   
  }        
}
