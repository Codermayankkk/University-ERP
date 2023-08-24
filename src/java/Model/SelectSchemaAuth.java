package Model;

import DB.DBconnector;
import DTO.UserDTO;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author mayank_matkar
 */
public class SelectSchemaAuth 
{
  public boolean isSelect(UserDTO user)
  {
    String username = user.getUsername();
    String schema = user.getSchema();

    try
    {
      Statement st = DBconnector.getStatement();
      String q = "SELECT * FROM allotedschema WHERE faculty_id = '"+username+"'";
      
      ResultSet rs = st.executeQuery(q);
      if(rs.next())
      { 
        if(schema == null)
        {
          return false;  
        }        
        else if(schema.equalsIgnoreCase(rs.getString("schema1")) || schema.equalsIgnoreCase(rs.getString("schema2")) || schema.equalsIgnoreCase(rs.getString("schema3")))
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
