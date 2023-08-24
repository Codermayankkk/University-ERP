package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DTO.UserDTO;
import Model.EnrollAuthenticator;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mayank_matkar
 */
public class EnrollChecker extends HttpServlet 
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
      
      EnrollAuthenticator e1 = new EnrollAuthenticator();
      boolean enroll = e1.isEnroll(user);
        
      if(enroll)
      {  
        HttpSession session = request.getSession(true);
        session.setAttribute("username", username);
        response.sendRedirect("RegisterInfo.jsp");
      }     
      else
      {
        response.sendRedirect("ERP registration.html");  
      }    
    }
}
