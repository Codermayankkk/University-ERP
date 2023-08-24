package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DTO.UserDTO;
import Model.FacultyPasswordAuth;
import Model.StudentPasswordAuth;

/**
 *
 * @author mayank_matkar 
 */
public class FacultyPasswordChecker extends HttpServlet 
{

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
      response.sendRedirect("ERP login.html");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
      String old = request.getParameter("cpass");
      String New = request.getParameter("npass");
      String confirm = request.getParameter("cnpass");
      String username = request.getParameter("username");
      
      UserDTO user = new UserDTO();
      user.setOld(old);
      user.setNew(New);
      user.setConfirm(confirm);
      user.setUsername(username);
      
      FacultyPasswordAuth f1 = new FacultyPasswordAuth();
      boolean fpassword = f1.isFPassword(user);
      
      if(fpassword)
      {
        response.sendRedirect("faculty homepage.jsp");  
      }   
      else
      {
        response.sendRedirect("FacultyChangePassword.jsp");  
      }    
    }
    
}
