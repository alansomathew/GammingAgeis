package org.apache.jsp.guset;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.util.Date;

public final class player_005freg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("              ");
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Player Registration</title>\n");
      out.write("        <script src=\"../JQuery/jQuery.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            function getplace(did)\n");
      out.write("{\n");
      out.write("\t//alert(did);\n");
      out.write("\t$.ajax({url:\"AjaxPlace.jsp?disid=\"+did,\n");
      out.write("\tsuccess: function(result){\n");
      out.write("\t$(\"#ddlplace\").html(result);}});\n");
      out.write("}\n");
      out.write("        </script>\n");
      out.write("              ");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div id=\"tab\">\n");
      out.write("        <!--<h3 align=\"center\"><u> PLAYER REGISTRATION</u></h3>-->\n");
      out.write("      \n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    ");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("    <title>Sign Up Form by Colorlib</title>\n");
      out.write("\n");
      out.write("    <!-- Font Icon -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/colorlib-regform-15/colorlib-regform-15/fonts/material-icon/css/material-design-iconic-font.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Main css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/colorlib-regform-15/colorlib-regform-15/css/style.css\">\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <div class=\"main\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"signup-content\">\n");
      out.write("                <div class=\"signup-img\">\n");
      out.write("                    <!--<img src=\"../temp/colorlib-regform-15/colorlib-regform-15/images/signup-img.jpg\" alt=\"\">-->\n");
      out.write("                </div>\n");
      out.write("                <div class=\"signup-form\">\n");
      out.write("                    <form method=\"POST\" class=\"register-form\" id=\"register-form\" enctype=\"multipart/form-data\" action=\"UserUploadAction.jsp\">\n");
      out.write("                        <h2>Player registration form</h2>\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"name\">Name :</label>\n");
      out.write("                                <input type=\"text\" name=\"txt_name\" id=\"name\" required=\"required\" autocomplete=\"off\"/>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"player_id\">Player Id :</label>\n");
      out.write("                                <input type=\"text\" name=\"txt_id\" id=\"player_id\" required=\"required\" autocomplete=\"off\" pattern=\"[0-9+]{10-16}\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"address\">Address :</label>\n");
      out.write("                            <input type=\"text\" name=\"txt_address\" id=\"address\" required=\"required\" autocomplete=\"off\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-radio\">\n");
      out.write("                            <label for=\"gender\" class=\"radio-label\">Gender :</label>\n");
      out.write("                            <div class=\"form-radio-item\">\n");
      out.write("                                <input type=\"radio\" name=\"txt_gender\" id=\"male\" value=\"male\" required=\"required\">\n");
      out.write("                                <label for=\"male\">Male</label>\n");
      out.write("                                <span class=\"check\"></span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-radio-item\">\n");
      out.write("                                <input type=\"radio\" name=\"txt_gender\" id=\"female\"  value=\"male\" required=\"required\">\n");
      out.write("                                <label for=\"female\">Female</label>\n");
      out.write("                                <span class=\"check\"></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-row\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"state\">District :</label>\n");
      out.write("                                <div class=\"form-select\">\n");
      out.write("                                    <select  id=\"did\" name=\"ddldistrict\" onchange=\"getplace(this.value)\">\n");
      out.write("                                        <option>\n");
      out.write("                               ---- Select----\n");
      out.write("                            </option>\n");
      out.write("                                  ");

                                  String sel="select * from tbl_district";
                                    ResultSet rs=con.select(sel);
                                    while(rs.next())
                                     {
                                  
                                 
      out.write(" \n");
      out.write("                                 <option value=\"");
      out.print(rs.getString("district_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("district_name"));
      out.write("</option>\n");
      out.write("                                 ");

                         
        }
                  
      out.write(" \n");
      out.write("                                    </select>\n");
      out.write("                                    <span class=\"select-icon\"><i class=\"zmdi zmdi-chevron-down\"></i></span>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"city\">City :</label>\n");
      out.write("                                <div class=\"form-select\">\n");
      out.write("                                    <select name=\"ddlplace\" id=\"ddlplace\">\n");
      out.write("                                        \n");
      out.write("                            <option>\n");
      out.write("                               ---- Select----\n");
      out.write("                            </option>\n");
      out.write("                                    </select>\n");
      out.write("                                    <span class=\"select-icon\"><i class=\"zmdi zmdi-chevron-down\"></i></span>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                                    <div class=\"form-group\" >\n");
      out.write("                            <label for=\"birth_date\">DOB :</label>\n");
      out.write("                            <input type=\"date\" name=\"txt_date\" id=\"date\" placeholder=\"DD/MM/YYYY\" required=\"required\" onchange=\"age();\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\" i>\n");
      out.write("                            <label for=\"pincode\">Contact :</label>\n");
      out.write("                            <input type=\"text\" name=\"txt_phno\" id=\"pincode\" required=\"required\" autocomplete=\"off\" pattern=\"[0-9+]{10,13}\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"course\">Player Type :</label>\n");
      out.write("                            <div class=\"form-select\">\n");
      out.write("                                <select name=\"ddlplrtype\" id=\"course\">\n");
      out.write("                                     <option>\n");
      out.write("                               ---- Select----\n");
      out.write("                            </option>\n");
      out.write("                                  ");

                                  String sel2="select * from tbl_playertype";
                                    ResultSet rs2=con.select(sel2);
                                    while(rs2.next())
                                     {
                                  
                                 
      out.write(" \n");
      out.write("                                 <option value=\"");
      out.print(rs2.getString("playertype_id"));
      out.write('"');
      out.write('>');
      out.print(rs2.getString("player_type"));
      out.write("</option>\n");
      out.write("                                 ");

                         
        }
                  
      out.write(" \n");
      out.write("                                </select>\n");
      out.write("                                <span class=\"select-icon\"><i class=\"zmdi zmdi-chevron-down\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                                \n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                            <label for=\"email\">Photo:</label>\n");
      out.write("                            <input type=\"file\" name=\"txt_file\" id=\"email\" required=\"required\"  />\n");
      out.write("                        </div>\n");
      out.write("                                \n");
      out.write("                                \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label for=\"email\">Email ID :</label>\n");
      out.write("                            <input type=\"email\" name=\"txt_email\" id=\"email\" required=\"required\" autocomplete=\"off\"/>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                         <div class=\"form-group\">\n");
      out.write("                            <label for=\"email\">Ussername :</label>\n");
      out.write("                            <input type=\"text\" name=\"txt_usnme\" id=\"email\" required=\"required\" autocomplete=\"off\" />\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                         <div class=\"form-group\">\n");
      out.write("                            <label for=\"email\">Password :</label>\n");
      out.write("                            <input type=\"password\" name=\"txt_pass\" id=\"email\" required=\"required\" autocomplete=\"off\" pattern=\"[a-zA-Z0-9]{6-9}\"/>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-submit\">\n");
      out.write("                            <input type=\"submit\" value=\"Reset All\" class=\"submit\" name=\"btnreset\" id=\"reset\" />\n");
      out.write("                            <input type=\"submit\" value=\"Submit Form\" class=\"submit\" name=\"btnsave\" id=\"submit\" />\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                        \n");
      out.write("                                    <label><a href=\"Login.jsp\" class=\"signup-image-link\">I am already member</a></label>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- JS -->\n");
      out.write("    <script src=\"../temp/colorlib-regform-15/colorlib-regform-15/vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../temp/colorlib-regform-15/colorlib-regform-15/js/main.js\"></script>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <script>\n");
      out.write("                                    \n");
      out.write("     function age() { \n");
      out.write("            var date =  \n");
      out.write("                document.getElementById('date').value; \n");
      out.write("              \n");
      out.write("            var inpDate = new Date(date); \n");
      out.write("            var currDate = new Date(); \n");
      out.write("              \n");
      out.write("            if(inpDate.setHours(0, 0, 0, 0) >=  \n");
      out.write("                    currDate.setHours(0, 0, 0, 0)) \n");
      out.write("            { \n");
      out.write("                alert(\"Invalid date\");\n");
      out.write("                setTimeout(function(){window.location.href='player_reg.jsp'},100);\n");
      out.write("            }  \n");
      out.write("           \n");
      out.write("            \n");
      out.write("                 var dob = document.getElementById('date').value; \n");
      out.write("    //calculate month difference from current date in time  \n");
      out.write("    var month_diff = Date.now() - dob.getTime();  \n");
      out.write("      \n");
      out.write("    //convert the calculated difference in date format  \n");
      out.write("    var age_dt = new Date(month_diff);   \n");
      out.write("      \n");
      out.write("    //extract year from date      \n");
      out.write("    var year = age_dt.getUTCFullYear();  \n");
      out.write("      \n");
      out.write("    //now calculate the age of the user  \n");
      out.write("    var age = Math.abs(year - 1970);  \n");
      out.write("      \n");
      out.write("    //display the calculated age  \n");
      out.write("                   if(age < 16)\n");
      out.write("                   {\n");
      out.write("                        alert(\"Age is less than 16!\");\n");
      out.write("                setTimeout(function(){window.location.href='player_reg.jsp'},100);\n");
      out.write("                    \n");
      out.write("                   }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("        } \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    </script>\n");
      out.write("</body><!-- This templates was made by Colorlib (https://colorlib.com) -->\n");
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
