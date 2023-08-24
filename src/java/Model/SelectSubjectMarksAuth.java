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
public class SelectSubjectMarksAuth 
{
   public boolean isSelect(UserDTO user)
  {
   String username = user.getUsername();
   String branch =  user.getBranch();
   String sem = user.getSem();
   String subject = user.getSubject();
   String Session = user.getSession();
   
    try
    {
      Statement st = DBconnector.getStatement();
      String q = "SELECT * FROM allotedsubject WHERE alloted_branch = '"+branch+"' && alloted_semester = '"+sem+"' && faculty_id = '"+username+"' && student_session = '"+Session+"'";
      
      ResultSet rs = st.executeQuery(q);
      if(rs.next())
      {
        if(subject == null)
        {
          return false;  
        }    
        else if(subject.equalsIgnoreCase(rs.getString("alloted_subject1")) || subject.equalsIgnoreCase(rs.getString("alloted_subject2")))
        {
            
          return true;  
        }    
      }    
    }   
    catch(SQLException e)
    {
      System.out.println(e);  
    }    
    return false;  
  }  
}
