/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DB.DBconnector;
import DTO.UserDTO;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author hp
 */
public class SelectSessionAuth 
{
  public boolean isSelect(UserDTO user)
  {
    String username = user.getUsername();
    String Session = user.getSession();
    
    try
    {
      Statement st = DBconnector.getStatement();
      String q = "SELECT * FROM allotedsession WHERE faculty_id = '"+username+"'";
      
      ResultSet rs = st.executeQuery(q);
      if(rs.next())
      {
        if(Session == null)
        {
          return false;  
        }    
        else if(rs.getString("alloted_session1").equals(Session) || rs.getString("alloted_session2").equals(Session) || rs.getString("alloted_session3").equals(Session) || rs.getString("alloted_session4").equals(Session)) 
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
