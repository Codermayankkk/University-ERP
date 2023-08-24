package Controller;

import DTO.UserDTO;
import Model.SelectSubjectMarksAuth;
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
public class SelectSubjectMarksChecker extends HttpServlet 
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
      String subject = request.getParameter("subject");
      String sem = request.getParameter("sem");
      String Session = request.getParameter("Session");
      
      UserDTO user = new UserDTO();
      user.setUsername(username);
      user.setBranch(branch);
      user.setSubject(subject);
      user.setSem(sem);
      user.setSession(Session);
 
      SelectSubjectMarksAuth s1 = new SelectSubjectMarksAuth();
      boolean selectsubject = s1.isSelect(user);
      
      if(selectsubject)
      {
        HttpSession session = request.getSession(true);
        session.setAttribute("subject", subject);
        response.sendRedirect("Upload Marks.jsp");
      }   
      else
      {
        response.sendRedirect("Select Marks Subject.jsp");  
      }    
    }  
}
