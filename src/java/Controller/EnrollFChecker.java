package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DTO.UserDTO;
import javax.servlet.http.HttpSession;
import Model.FacultyEnrollAuth;

/**
 *
 * @author mayank_matkar
 */
public class EnrollFChecker extends HttpServlet 
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
      String New = request.getParameter("new");
      String confirm = request.getParameter("confirm");
        
      UserDTO user = new UserDTO();
      user.setUsername(username);
      user.setNew(New);
      user.setConfirm(confirm);
      
      FacultyEnrollAuth f1 = new FacultyEnrollAuth();
      boolean fenroll = f1.isFenroll(user);
           
      if(fenroll)
      { 
        HttpSession session = request.getSession(true);
        session.setAttribute("username", username);
        response.sendRedirect("RegisterFInfo.jsp");
      }    
      else
      {
        response.sendRedirect("ERP FRegister.html");  
      }    
    }
}