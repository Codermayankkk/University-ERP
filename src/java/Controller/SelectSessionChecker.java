package Controller;

import DTO.UserDTO;
import Model.SelectSessionAuth;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mayank_matkar
 */
public class SelectSessionChecker extends HttpServlet 
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
      String branch = request.getParameter("branch");
      String Session = request.getParameter("Session");

      UserDTO user = new UserDTO();
      user.setUsername(username);
      user.setSession(Session);
      
      SelectSessionAuth s1 = new SelectSessionAuth();
      boolean selectsession = s1.isSelect(user);
      
      if(selectsession)
      {
        HttpSession session = request.getSession(true);
        session.setAttribute("branch", branch);
        session.setAttribute("Session", Session);
        response.sendRedirect("Select Year.jsp");
      }   
      else
      {
        response.sendRedirect("Select Session.jsp");  
      }    
    }
}
