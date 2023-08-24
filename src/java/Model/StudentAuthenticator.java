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

public class StudentAuthenticator 
{
  public boolean isStudent(UserDTO user)
  {
    String username = user.getUsername();
    String password = user.getPassword();
    String maincaptcha = user.getMaincaptcha();
    String inputcaptcha = user.getInputcaptcha();
    String studentpassword = "";
      
    try
    {
      Statement st = DBconnector.getStatement();
      String q = "SELECT student_password FROM student WHERE student_id = '"+username+"'";
      
      ResultSet rs = st.executeQuery(q);
      if(rs.next())
      {
         studentpassword = rs.getString("student_password");
      }    
    }    
    catch(SQLException e)
    {
      System.out.println(e);
    }    
    
    if(username != null && password != null && !username.trim().equals("") && password.equals(studentpassword) && maincaptcha.equals(inputcaptcha))
    {  
       return true; 
    }
      return false;      
  }        
}
