package Controller;

import DTO.UserDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.StudentRegisterAuth;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mayank_matkar
 */
public class ERPregisterChecker extends HttpServlet 
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
      String branch = request.getParameter("branch");
      String year = request.getParameter("year");
      String dept = request.getParameter("dept");
      String bloodgrp = request.getParameter("bloodgrp");
      String gender = request.getParameter("gender");
      String sem = request.getParameter("sem");
      String Session = request.getParameter("Session");
      String section = request.getParameter("section");
      
      UserDTO user = new UserDTO();
      user.setUsername(username);
      user.setName(name);
      user.setMailid(mailid);
      user.setAddress(address);
      user.setCity(city);
      user.setContactnumber(contactnumber);
      user.setFathername(fathername);
      user.setMothername(mothername);
      user.setBranch(branch);
      user.setYear(year);
      user.setDept(dept);
      user.setBloodgrp(bloodgrp);
      user.setGender(gender);
      user.setSem(sem);
      user.setSession(Session);
      user.setSection(section);
      
      StudentRegisterAuth r1 = new StudentRegisterAuth();
      boolean register = r1.isRegister(user);
      
      if(register)
      {
        HttpSession session = request.getSession(true);
        session.setAttribute("username", username);
        response.sendRedirect("RegisterProfile.jsp");
      }   
      else
      {
        response.sendRedirect("register2.jsp");
      }    
    }
  
}
