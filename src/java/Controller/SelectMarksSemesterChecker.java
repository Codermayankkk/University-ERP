package Controller;

import DTO.UserDTO;
import Model.SelectMarksSemesterAuth;
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
public class SelectMarksSemesterChecker extends HttpServlet 
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
      String sem = request.getParameter("sem");
      
      UserDTO user = new UserDTO();
      user.setUsername(username);
      user.setSem(sem);
      
      SelectMarksSemesterAuth s1 = new SelectMarksSemesterAuth();
      boolean select = s1.isSelect(user);
      
      if(select)
      {
        HttpSession session = request.getSession(true);
        session.setAttribute("sem", sem);
        response.sendRedirect("Select Marks Schema.jsp");
      }   
      else
      {
        response.sendRedirect("Select Marks Semester.jsp");
      }    
    }
}
