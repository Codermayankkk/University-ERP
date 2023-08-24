package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DTO.UserDTO;
import Model.StudentPasswordAuth;

/**
 *
 * @author mayank_matkar 
 */
public class PasswordChecker extends HttpServlet 
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
      
      StudentPasswordAuth p1 = new StudentPasswordAuth();
      boolean password = p1.isPassword(user);
      
      if(password)
      {
        response.sendRedirect("Student homepage.jsp");  
      }   
      else
      {
        response.sendRedirect("Change Password.jsp");  
      }    
      
    }
    
}
