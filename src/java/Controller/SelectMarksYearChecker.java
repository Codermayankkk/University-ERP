package Controller;

import DTO.UserDTO;
import Model.SelectMarksYearAuth;
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
public class SelectMarksYearChecker extends HttpServlet 
{
 @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
      response.sendRedirect("ERP login.html"); 
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
      String year = request.getParameter("year");
      String username = request.getParameter("username");
      String branch = request.getParameter("branch");
      String Session = request.getParameter("Session");
      
      UserDTO user = new UserDTO();
      user.setYear(year);
      user.setUsername(username);
      
      SelectMarksYearAuth s1 = new SelectMarksYearAuth();
      boolean selectyear = s1.isSelect(user);
      
      if(selectyear)
      {
        HttpSession session = request.getSession(true);
        session.setAttribute("year", year);
        session.setAttribute("branch", branch);
        session.setAttribute("Session", Session);
        response.sendRedirect("Select Marks Semester.jsp");
      }   
      else
      {
        response.sendRedirect("Select Marks Year.jsp");  
      }    
    }
}
