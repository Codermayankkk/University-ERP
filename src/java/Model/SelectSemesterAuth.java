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
public class SelectSemesterAuth 
{
  public boolean isSelect(UserDTO user)
  {
     String username = user.getUsername();
     String sem = user.getSem();
     
     try
     {
       Statement st = DBconnector.getStatement();
       String q = "SELECT * FROM allotedsemester WHERE faculty_id = '"+username+"'";
       
       ResultSet rs = st.executeQuery(q);
       if(rs.next())
       {
        if(sem == null)
        {
          return false;  
        }
        else if(sem.equalsIgnoreCase(rs.getString("year1sem")) || sem.equalsIgnoreCase(rs.getString("year2sem")) || sem.equalsIgnoreCase(rs.getString("year3sem")) || sem.equalsIgnoreCase(rs.getString("year4sem")))
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
