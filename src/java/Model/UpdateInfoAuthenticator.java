/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author mayank_matkar
 */
import DTO.UserDTO;
import DB.DBconnector;
import java.sql.Statement;
import java.sql.SQLException;

public class UpdateInfoAuthenticator 
{
  public boolean isUpdate(UserDTO user)
  {
    String username = user.getUsername();
    String name = user.getName();
    String mailid = user.getMailid();
    String address = user.getAddress();
    String city = user.getCity();
    String contactnumber = user.getContactnumber();
    String fathername = user.getFathername();
    String mothername = user.getMothername();
    String bloodgrp = user.getBloodgrp();
    String gender = user.getGender();
    
    try
    {
      Statement st = DBconnector.getStatement();
      String q = "UPDATE student SET student_name = '"+name+"', student_mailid = '"+mailid+"', student_address = '"+address+"', student_city = '"+city+"', student_contactnumber = '"+contactnumber+"', student_fathername = '"+fathername+"', student_mothername = '"+mothername+"', student_bloodgrp = '"+bloodgrp+"', student_gender = '"+gender+"' WHERE student_id = '"+username+"'";
      
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
