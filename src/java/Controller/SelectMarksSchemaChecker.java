package Controller;

import DTO.UserDTO;
import Model.SelectMarksSchemaAuth;
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
public class SelectMarksSchemaChecker extends HttpServlet 
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
      String schema = request.getParameter("schema");
      String branch = request.getParameter("branch");
      
      UserDTO user = new UserDTO();
      user.setSchema(schema);
      user.setUsername(username);
      
      SelectMarksSchemaAuth s1 = new SelectMarksSchemaAuth();
      boolean select = s1.isSelect(user);
      
      if(select)
      {  
        HttpSession session = request.getSession(true);
        session.setAttribute("schema", schema);
        session.setAttribute("branch", branch);
        response.sendRedirect("Select Marks Subject.jsp");
      }   
      else
      {
        response.sendRedirect("Select Marks Schema.jsp");
      }    
    }
}
     