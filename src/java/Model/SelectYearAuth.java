package Model;

import DB.DBconnector;
import DTO.UserDTO;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author mayank_matkar
 */
public class SelectYearAuth 
{
   public boolean isSelect(UserDTO user)
   {
     String year = user.getYear();
     String username = user.getUsername();
       System.out.println(year);
     try
     {
       Statement st = DBconnector.getStatement();
       String q = "SELECT * FROM allotedyear WHERE faculty_id = '"+username+"'";
       
       ResultSet rs = st.executeQuery(q);
       if(rs.next())
       {
         if(year == null)
         {
           return false;
         }    
           else if(year.equalsIgnoreCase(rs.getString("year1")) || year.equalsIgnoreCase(rs.getString("year2")) || year.equalsIgnoreCase(rs.getString("year3")) || year.equalsIgnoreCase(rs.getString("year4"))) 
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
