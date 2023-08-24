package Model;

/**
 *
 * @author mayank_matkar
 */

import DTO.UserDTO;
import DB.DBconnector;
import java.sql.Statement;
import java.sql.SQLException;

public class StudentRegisterAuth 
{
  public boolean isRegister(UserDTO user)
  {
    String username = user.getUsername();
    String name = user.getName();
    String mailid = user.getMailid();
    String address = user.getAddress();
    String city = user.getCity();
    String contactnumber = user.getContactnumber();
    String fathername = user.getMothername();
    String mothername = user.getMothername();
    String branch = user.getBranch();
    String year = user.getYear();
    String dept = user.getDept();
    String bloodgrp = user.getBloodgrp();
    String gender = user.getGender();
    String sem = user.getSem(); 
    String Session = user.getSession();
    String section = user.getSection();
    
    try
    {
      Statement st = DBconnector.getStatement();
      String q = "UPDATE student SET student_name = '"+name+"', student_mailid = '"+mailid+"', student_address = '"+address+"', student_city = '"+city+"', student_contactnumber = '"+contactnumber+"', student_fathername = '"+fathername+"', student_mothername = '"+mothername+"', student_branch = '"+branch+"', student_year = '"+year+"', student_dept = '"+dept+"', student_bloodgrp = '"+bloodgrp+"', student_gender = '"+gender+"', student_sem = '"+sem+"', student_session = '"+Session+"', student_section = '"+section+"' WHERE student_id = '"+username+"'";
      
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
