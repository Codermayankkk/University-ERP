package Controller;

import DTO.UserDTO;
import Model.InsertStudentAttendaceListAuth;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mayank_matkar
 */
public class InsertStudentAttendanceListChecker extends HttpServlet 
{

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
      response.sendRedirect("ERP login.html");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
       String branch = request.getParameter("branch");
       String year = request.getParameter("year");
       String sem = request.getParameter("sem");
       String Session = request.getParameter("Session");
       String section = request.getParameter("section");
       String name = request.getParameter("name");
       String student_id = request.getParameter("student_id");
       
       UserDTO user = new UserDTO();
       user.setName(name);
       user.setUsername(student_id);
       user.setSection(section);
       user.setSession(Session);
       user.setSem(sem);
       user.setBranch(branch);
       
       InsertStudentAttendaceListAuth i1 = new InsertStudentAttendaceListAuth();
       boolean insert = i1.isInsert(user);
       
       if(insert)
       {
         response.sendRedirect("CreateClassERP.jsp");
       }   
       else
       {
         response.sendRedirect("UploadedAt.jsp");
       }    
    }
}
