package Controller;

import DB.DBconnector;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author mayank_matkar
 */

@MultipartConfig

public class UploadChecker extends HttpServlet 
{

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
       response.sendRedirect("ERP login.html");
    }
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
      String username = request.getParameter("username");
      
      Part image = request.getPart("image");
      
      String imagename = image.getSubmittedFileName();
      
      String path = "C:/Users/hp/Documents/NetBeansProjects/Student ERP/web/images/"+imagename;
      
      try
      {
         FileOutputStream fs = new FileOutputStream(path);
         InputStream in = image.getInputStream();
         
         byte[] data = new byte[in.available()];
         in.read(data);
         fs.write(data);
         fs.close();
      }  
      catch(FileNotFoundException e)
      {
        System.out.println(e);
      }    
      
      try
      {
        Statement st = DBconnector.getStatement();
        String q = "UPDATE student SET student_img = '"+imagename+"' WHERE student_id = '"+username+"'";
        
        int i = st.executeUpdate(q);
        if(i>0)
        {
          response.sendRedirect("ERP login.html");
        }  
        else
        {
          response.sendRedirect("RegisterProfile.jsp");
        }    
      } 
      catch(SQLException e)
      {
          System.out.println(e);  
      }    
    }
}
