package Model;

import DB.DBconnector;
import DTO.UserDTO;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mayank_matkar
 */
public class UploadAttendanceAuth 
{
  public boolean isUpload(UserDTO user)
  {
     String student_id = user.getStudent_id();
     String subject = user.getSubject();
     String sem = user.getSem();
     String at = user.getAt();
     String ac = user.getAc();
     String pc = user.getPc();
     String Session = user.getSession();
     
     try
     {
       Statement st = DBconnector.getStatement();
       String q = "UPDATE at"+sem+" SET "+subject+"_at = '"+at+"', "+subject+"_pc = '"+pc+"', "+subject+"_ac = '"+ac+"' WHERE student_id = '"+student_id+"' && student_session = '"+Session+"'";
       
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
