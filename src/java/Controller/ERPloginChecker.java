package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DTO.UserDTO;
import Model.StudentAuthenticator;
import Model.FacultyAuthenticator;


/**
 *
 * @author mayank_matkar
 */
public class ERPloginChecker extends HttpServlet 
{

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("ERP login.html");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
       String username= request.getParameter("username");
       String password  = request.getParameter("password");
       String maincaptcha = request.getParameter("mainc");
       String inputcaptcha = request.getParameter("inputc");
        
       UserDTO user = new UserDTO();
       user.setUsername(username);
       user.setPassword(password);
       user.setMaincaptcha(maincaptcha);
       user.setInputcaptcha(inputcaptcha);
       
       FacultyAuthenticator f1 = new FacultyAuthenticator();
       boolean faculty = f1.isFaculty(user);
       
       StudentAuthenticator s1 = new StudentAuthenticator();
       boolean student = s1.isStudent(user);
       
       if(student)
       {
         HttpSession session = request.getSession(true);
         session.setAttribute("username",username);
         response.sendRedirect("Student homepage.jsp");
       } 
       else if(faculty)
       {
         HttpSession session = request.getSession(true);
         session.setAttribute("username",username);
         response.sendRedirect("faculty homepage.jsp");
       }   
       else
       {
         response.sendRedirect("ERP login.html");  
       }    
    }
    
}
