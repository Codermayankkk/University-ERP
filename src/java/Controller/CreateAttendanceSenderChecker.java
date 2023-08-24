package Controller;

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
public class CreateAttendanceSenderChecker extends HttpServlet 
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
       
       HttpSession session = request.getSession(true);
       session.setAttribute("branch", branch);
       session.setAttribute("year", year);
       session.setAttribute("sem", sem);
       session.setAttribute("Session", Session);
       session.setAttribute("section", section);
       
       response.sendRedirect("CreateClassERP.jsp");
    }
   
    
}
