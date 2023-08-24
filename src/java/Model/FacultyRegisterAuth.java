package Model;

/**
 *
 * @author mayank_matkar
 */
import DB.DBconnector;
import DTO.UserDTO;
import java.sql.Statement;
import java.sql.SQLException;

public class FacultyRegisterAuth 
{
  public boolean isFRegister(UserDTO user)
  {
    String username = user.getUsername();
    String name = user.getName();
    String mailid = user.getMailid();
    String address = user.getAddress();
    String city = user.getCity();
    String contactnumber = user.getContactnumber();
    String fathername = user.getFathername();
    String mothername = user.getMothername();
    String qual = user.getQual();
    String post = user.getPost();
    String bloodgrp = user.getBloodgrp();
    String dept = user.getDept();
    String gender = user.getGender();
    
    try
    {
      Statement st = DBconnector.getStatement();
      String q = "UPDATE faculty SET faculty_name = '"+name+"', faculty_mailid = '"+mailid+"', faculty_address = '"+address+"', faculty_city = '"+city+"', faculty_contactnumber = '"+contactnumber+"', faculty_fathername = '"+fathername+"', faculty_mothername = '"+mothername+"', faculty_qualification = '"+qual+"', faculty_post = '"+post+"', faculty_dept = '"+dept+"', faculty_bloodgrp = '"+bloodgrp+"', faculty_gender = '"+gender+"' WHERE faculty_id = '"+username+"'" ;
      
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
