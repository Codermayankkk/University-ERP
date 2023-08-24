package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DTO.UserDTO;
import Model.FacultyRegisterAuth;
import javax.servlet.http.HttpSession;
/**
 *
 * @author mayank_matkar
 */
public class FRegisterChecker extends HttpServlet 
{
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
      response.sendRedirect("ERP FRegister.html");
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
      String qual = request.getParameter("qual");
      String post = request.getParameter("post");
      String dept = request.getParameter("dept");
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
      user.setQual(qual);
      user.setPost(post);
      user.setDept(dept);
      user.setBloodgrp(bloodgrp);
      user.setGender(gender);
      
      FacultyRegisterAuth f1 = new FacultyRegisterAuth();
      boolean fregister = f1.isFRegister(user);
      
      if(fregister)
      {
        response.sendRedirect("FacultyProfile.jsp");
      }   
      else
      {
        response.sendRedirect("ERP login.html");
      }    
    }  
}