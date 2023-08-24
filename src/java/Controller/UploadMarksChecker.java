package Controller;

import DTO.UserDTO;
import Model.UploadMarksAuth;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mayank_matkar
 */
public class UploadMarksChecker extends HttpServlet 
{

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
      response.sendRedirect("ERP login.html");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
      String student_id = request.getParameter("student_id");
      String marks = request.getParameter("marks");
      String ta = request.getParameter("ta");
      String sem = request.getParameter("sem");
      String subject = request.getParameter("subject");
      String Session = request.getParameter("Session");
      
      UserDTO user = new UserDTO();
      user.setSession(Session);
      user.setStudent_id(student_id);
      user.setSubject(subject);
      user.setSem(sem);
      user.setAt(marks);
      user.setAc(ta);
      
      UploadMarksAuth u1 = new UploadMarksAuth();
      boolean isUpload = u1.isUpload(user);
      
      if(isUpload)
      {
        response.sendRedirect("Upload Marks.jsp");
      }   
      else
      {
        response.sendRedirect("Upload Marks.jsp");
      }    
    }
}
