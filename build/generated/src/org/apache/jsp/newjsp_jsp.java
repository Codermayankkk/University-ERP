package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DB.DBconnector;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>SVVV ERP</title>\n");
      out.write("        <script src=\"https://kit.fontawesome.com/57eeca9c9a.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <style>\n");
      out.write("body \n");
      out.write("{\n");
      out.write("  font-family: Arial, Helvetica, sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar \n");
      out.write("{\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: dodgerblue;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar a \n");
      out.write("{\n");
      out.write("  float: left;\n");
      out.write("  font-size: 16px;\n");
      out.write("  color: white;\n");
      out.write("  font-weight: bold;\n");
      out.write("  text-align: center;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown \n");
      out.write("{\n");
      out.write("  float: left;\n");
      out.write("  overflow: hidden;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown .dropbtn \n");
      out.write("{\n");
      out.write("  font-weight: bold;\n");
      out.write("  font-size: 16px;  \n");
      out.write("  border: none;\n");
      out.write("  outline: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 16px;\n");
      out.write("  background-color:inherit;\n");
      out.write("  font-family: inherit;\n");
      out.write("  margin: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".navbar a:hover, .dropdown:hover .dropbtn \n");
      out.write("{\n");
      out.write("  background-color: orange;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content \n");
      out.write("{\n");
      out.write("  display: none;\n");
      out.write("  position: absolute;\n");
      out.write("  background-color: dodgerblue;\n");
      out.write("  min-width: 160px;\n");
      out.write("  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);\n");
      out.write("  z-index: 1;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a \n");
      out.write("{\n");
      out.write("  float: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 12px 16px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: block;\n");
      out.write("  text-align: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown-content a:hover \n");
      out.write("{\n");
      out.write("  background-color: orange;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown:hover .dropdown-content \n");
      out.write("{\n");
      out.write("  display: block;\n");
      out.write("}\n");
      out.write("form \n");
      out.write("{\n");
      out.write("    background-color: whitesmoke;\n");
      out.write("    max-width: 300px;\n");
      out.write("    margin: 50px auto;\n");
      out.write("    padding: 20px 20px;\n");
      out.write("    box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);\n");
      out.write("}\n");
      out.write(".form-control \n");
      out.write("{\n");
      out.write("    text-align: left;\n");
      out.write("    margin-bottom: 10px;\n");
      out.write("}\n");
      out.write(".form-control label \n");
      out.write("{\n");
      out.write("    display: block;\n");
      out.write("    margin-bottom: 10px;\n");
      out.write("}\n");
      out.write(".form-control input,\n");
      out.write(".form-control select,\n");
      out.write(".form-control textarea \n");
      out.write("{\n");
      out.write("    border: 1px solid #777;\n");
      out.write("    border-radius: 2px;\n");
      out.write("    font-family: inherit;\n");
      out.write("    padding: 10px;\n");
      out.write("    display: block;\n");
      out.write("    width: 22%;\n");
      out.write("    \n");
      out.write("    border-radius: 4px;\n");
      out.write("    box-sizing: border-box;\n");
      out.write("    border: 2px solid dodgerblue;\n");
      out.write("    border-radius: 12px;\n");
      out.write("    padding: 5px;\n");
      out.write("}\n");
      out.write("label\n");
      out.write("{\n");
      out.write("  font-weight: bold;\n");
      out.write("  font-family: sans-serif;  \n");
      out.write("  color: dodgerblue;  \n");
      out.write("}\n");
      out.write("button[type=submit] \n");
      out.write("{\n");
      out.write("  width: 50%;\n");
      out.write("  background-color: orange;\n");
      out.write("  color: white;\n");
      out.write("  padding: 6px 5px;\n");
      out.write("  margin: 5px 80px;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 4px;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("::-webkit-scrollbar \n");
      out.write("{\n");
      out.write("  width: 10px;\n");
      out.write("}\n");
      out.write("::-webkit-scrollbar-track \n");
      out.write("{\n");
      out.write("  box-shadow: inset 0 0 5px grey; \n");
      out.write("  border-radius: 10px;\n");
      out.write("}\n");
      out.write("::-webkit-scrollbar-thumb \n");
      out.write("{\n");
      out.write("  background: dodgerblue; \n");
      out.write("  border-radius: 10px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");

            String username = (String)session.getAttribute("username");
            String branch = request.getParameter("branch");
            String year = request.getParameter("year");
            String sem = request.getParameter("sem");
            String Session = request.getParameter("Session");
            String section = request.getParameter("section");
            
            try
            {
              Statement st = DBconnector.getStatement();
              String q = "SELECT * FROM allotedsection WHERE faculty_id = '"+username+"'";
              
              ResultSet rs = st.executeQuery(q);
              if(rs.next())
              {
          
      out.write("\n");
      out.write("<div class=\"navbar\">\n");
      out.write("    <img src = \"images/svvv.jpg\" alt = \"image not found\" height= \"40\" width= \"40\" style=\"float: left; border-radius: 50%; padding: 3px 3px\"/>\n");
      out.write("    <a href=\"faculty homepage.jsp\">Home</a>\n");
      out.write("    <div class=\"dropdown\">\n");
      out.write("    <button class=\"dropbtn\">Profile &nbsp;<i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"dropdown-content\">\n");
      out.write("      <a href=\"PersonalInfo.jsp\"><i class=\"fa-regular fa-user\"></i>&nbsp;&nbsp;Personal Info</a>\n");
      out.write("      <a href=\"FacultyChangePassword.jsp\"><i class=\"fa-solid fa-key\"></i>&nbsp;Change Password</a>\n");
      out.write("      <a href=\"#\"><i class=\"fa-solid fa-receipt\"></i>&nbsp;&nbsp;Salary Slip</a>\n");
      out.write("    </div>\n");
      out.write("  </div> \n");
      out.write("  \n");
      out.write("   <div class=\"dropdown\">\n");
      out.write("    <button class=\"dropbtn\">Examination &nbsp;<i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"dropdown-content\">\n");
      out.write("      <a href=\"Faculty Attendance.jsp\"><i class=\"fa-solid fa-book\"></i>&nbsp;&nbsp;Student Attendance</a>\n");
      out.write("      <a href=\"#\"><i class=\"fa-solid fa-chart-column\"></i>&nbsp;&nbsp;Student Marks</a>\n");
      out.write("      <a href=\"Create Attendance ERP.jsp\"><i class=\"fa-solid fa-plus\"></i>&nbsp;&nbsp;Create Attendance ERP</a>\n");
      out.write("      <a href=\"#\"><i class=\"fa-solid fa-plus\"></i>&nbsp;&nbsp;Create Marks ERP</a>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"dropdown\">\n");
      out.write("    <button class=\"dropbtn\">Timing &nbsp;<i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"dropdown-content\">\n");
      out.write("      <a href=\"#\"><i class=\"fa-solid fa-clipboard-user\"></i>&nbsp;&nbsp;Time of report</a>\n");
      out.write("      <a href=\"#\"><i class=\"fa-solid fa-right-from-bracket\"></i>&nbsp;&nbsp;Time of leave</a>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"dropdown\">\n");
      out.write("    <button class=\"dropbtn\">Alloted Section &nbsp;<i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"dropdown-content\">\n");
      out.write("       ");
if(rs.getString("sec_1").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          
      out.write("<a href=\"");
      out.print(rs.getString("sec_1"));
      out.write(".jsp\">");
      out.print(rs.getString("sec_1"));
      out.write("</a>");
    
        }
        
      out.write("\n");
      out.write("        \n");
      out.write("        ");
if(rs.getString("sec_2").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          
      out.write("<a href=\"");
      out.print(rs.getString("sec_2"));
      out.write(".jsp\">");
      out.print(rs.getString("sec_2"));
      out.write("</a>");
    
        }
        
      out.write("\n");
      out.write("          \n");
      out.write("        ");
if(rs.getString("sec_3").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          
      out.write("<a href=\"");
      out.print(rs.getString("sec_3"));
      out.write(".jsp\">");
      out.print(rs.getString("sec_3"));
      out.write("</a>");
  
        }
        
      out.write(" \n");
      out.write("          \n");
      out.write("        ");
if(rs.getString("sec_4").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          
      out.write("<a href=\"");
      out.print(rs.getString("sec_4"));
      out.write(".jsp\">");
      out.print(rs.getString("sec_4"));
      out.write("</a>");
    
        }
        
      out.write("  \n");
      out.write("        \n");
      out.write("        ");
if(rs.getString("sec_5").equalsIgnoreCase("none"))
        {
            
        }
        else
        {
          
      out.write("<a href=\"");
      out.print(rs.getString("sec_5"));
      out.write(".jsp\">");
      out.print(rs.getString("sec_5"));
      out.write("</a>");
    
        }
        
      out.write("  \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <a href=\"logout.jsp\" style=\"float:right;\"><i class=\"fa-solid fa-power-off\"></i>&nbsp;&nbsp;Logout</a>\n");
      out.write("</div>    \n");
      out.write("        <br></br>    \n");
      out.write("        <h2 style=\"color: dodgerblue; text-align: center; margin: 0;\">Your alloted class students detail</h2>\n");

          }
             }
            catch(SQLException e)
            {
              System.out.println(e); 
            }
            
            try
            {
              Statement st = DBconnector.getStatement();
              String q = "SELECT * FROM student WHERE student_branch = Btech(MBA) && student_section = I && student_session = 2021-2025 && student_year = 2nd year && student_sem = IV";
              
              ResultSet rs = st.executeQuery(q);
              while(rs.next())
              {

      out.write("\n");
      out.write("<form action=\"#\">\n");
      out.write("      <div class=\"form-control\">\n");
      out.write("          <label>Student Name : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"black\" style=\"font-weight: lighter;\">");
      out.print(rs.getString("student_name"));
      out.write("</font></label>\n");
      out.write("          <label>Enrollment id : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"black\" style=\"font-weight: lighter;\">");
      out.print(rs.getString("student_id"));
      out.write("</font></label>\n");
      out.write("          \n");
      out.write("          <label>Student Section : &nbsp;&nbsp;&nbsp;&nbsp;<font color=\"black\" style=\"font-weight: lighter;\">");
      out.print(section);
      out.write("</font></label>\n");
      out.write("          <label>Student Year : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=\"black\" style=\"font-weight: lighter;\">");
      out.print(year);
      out.write("</font></label>\n");
      out.write("          \n");
      out.write("          <label>Student Branch : &nbsp;&nbsp;&nbsp;&nbsp;<font color=\"black\" style=\"font-weight: lighter;\">");
      out.print(branch);
      out.write("</font></label>\n");
      out.write("          <label>Student Session : &nbsp;&nbsp;&nbsp;<font color=\"black\" style=\"font-weight: lighter;\">");
      out.print(Session);
      out.write("</font></label><br/>\n");
      out.write("      \n");
      out.write("          <button type=\"submit\">Create ");
      out.print(rs.getString("student_name"));
      out.write(" ERP for ");
      out.print(sem);
      out.write(" attendance</button>\n");
      out.write("          \n");
      out.write("      </div>    \n");
      out.write("</form>\n");
 
              }
            }
            catch(SQLException e)
            {
              System.out.println(e);
            }
System.out.println(branch);

      out.write("    \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
