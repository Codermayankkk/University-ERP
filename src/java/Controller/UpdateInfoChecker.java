package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DTO.UserDTO;
import Model.UpdateInfoAuthenticator;

/**
 *
 * @author mayank_matkar
 */

public class UpdateInfoChecker extends HttpServlet 
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
      String name = request.getParameter("name");
      String mailid = request.getParameter("mailid");
      String address = request.getParameter("address");
      String city = request.getParameter("city");
      String contactnumber = request.getParameter("contactnumber");
      String fathername = request.getParameter("fathername");
      String mothername = request.getParameter("mothername");
      String bloodgrp = request.getParameter("bloodgrp");
      String gender = request.getParameter("gender");
      
      UserDTO user = new UserDTO();
      user.setUsername(username);
      user.setName(name);
      user.setMailid(mailid);
      user.setAddress(address);
      user.setCity(city);
      user.setContactnumber(contactnumber);
      user.setFathername(fathername);
      user.setMothername(mothername);
      user.setBloodgrp(bloodgrp);
      user.setGender(gender);
      
      UpdateInfoAuthenticator u1 = new UpdateInfoAuthenticator();
      boolean update = u1.isUpdate(user);
      
      if(update)
      {
        response.sendRedirect("MyInfo.jsp");
      }   
      else
      {
         response.sendRedirect("UpdateInfo.jsp");
      }    
    }
}
