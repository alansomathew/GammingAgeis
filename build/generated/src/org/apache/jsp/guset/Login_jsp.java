package org.apache.jsp.guset;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!--<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>-->\n");
      out.write("        ");
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login</title>\n");
      out.write("<!--        <link rel=\"stylesheet\" href=\"assets/css/bulma.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/app.css\">\n");
      out.write("-->    <link //rel=\"stylesheet\" href=\"assets/css/core.css\">\n");
      out.write("<!--    </head>-->\n");
      out.write("    \n");
      out.write("<!--    <body>\n");
      out.write("        <h1 align=\"center\"><u>Login</u></h1>-->\n");
      out.write("       ");
 if(request.getParameter("txt_usnme")!=null && request.getParameter("txt_password")!=null)
       {
          String selc="select * from tbl_players where player_uname='"+request.getParameter("txt_usnme")+"' and player_password='"+request.getParameter("txt_password")+"'";
        ResultSet rs1=con.select(selc);
        String sel1="select * from tbl_admin where admin_uname='"+request.getParameter("txt_usnme")+"' and admin_password='"+request.getParameter("txt_password")+"'";
        ResultSet rs2=con.select(sel1);
        String sel2="select * from tbl_subadmin where subadmin_uname='"+request.getParameter("txt_usnme")+"' and subadmin_password='"+request.getParameter("txt_password")+"'";
        ResultSet rs3=con.select(sel2);
         String sel3="select * from tbl_community where community_uname='"+request.getParameter("txt_usnme")+"' and community_password='"+request.getParameter("txt_password")+"' and community_status='1'" ;
        ResultSet rs4=con.select(sel3);
        if(rs1.next())
        {
            session.setAttribute("uid",rs1.getString("player_id"));
            session.setAttribute("uname",rs1.getString("player_name"));
          response.sendRedirect("../Players/index.jsp");
        }
        else if(rs4.next())
        {
            session.setAttribute("cid",rs4.getString("community_id"));
             session.setAttribute("cname",rs4.getString("community_name"));
          response.sendRedirect("../Community/index.html");
        }
        else if(rs3.next())
        {
            session.setAttribute("sid",rs3.getString("subadmin_id"));
            session.setAttribute("sname",rs3.getString("subadmin_name"));
            
          response.sendRedirect("../SubAdmin/index.html");
        }
        else if(rs2.next())
        {
          response.sendRedirect("../admin/index.html");
        }
        else
        {
            
      out.write("\n");
      out.write("         <script>alert('Invalid User')</script>\n");
      out.write("        ");

        
        }
       }
       
        
        
        
      out.write("\n");
      out.write("<!--        \n");
      out.write("        <div id=\"tab\">\n");
      out.write("        <form>\n");
      out.write("            <table  align=\"center\" >\n");
      out.write("                <tr>\n");
      out.write("                    <td>User Name:</td>\n");
      out.write("                    <td><input type=\"text\"  name=\"txt_usnme\" required=\"required\" autocomplete=\"off\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password:</td>\n");
      out.write("                    <td><input type=\"text\"  name=\"txt_password\" required=\"required\" autocomplete=\"off\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr align=\"center\">\n");
      out.write("                    <td colspan=\"2\"  align=\"center\"><input type=\"submit\" name=\"btnsave\">\n");
      out.write("                        <input type=\"reset\" name=\"btnreset\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    ");
      out.write("\n");
      out.write("</html>-->\n");
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
      out.write("\t<title>Login V1</title>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<!--===============================================================================================-->\t\n");
      out.write("<link rel=\"icon\" type=\"image/png\" href=\"../temp/login-form-v1/Login_v1/images/icons/favicon.ico\"/>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../temp/login-form-v1/Login_v1/vendor/bootstrap/css/bootstrap.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../temp/login-form-v1/Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../temp/login-form-v1/Login_v1/vendor/animate/animate.css\">\n");
      out.write("<!--===============================================================================================-->\t\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../temp/login-form-v1/Login_v1/vendor/css-hamburgers/hamburgers.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../temp/login-form-v1/Login_v1/vendor/select2/select2.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../temp/login-form-v1/Login_v1/css/util.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../temp/login-form-v1/Login_v1/css/main.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t\n");
      out.write("\t<div class=\"limiter\">\n");
      out.write("\t\t<div class=\"container-login100\">\n");
      out.write("\t\t\t<div class=\"wrap-login100\">\n");
      out.write("\t\t\t\t<div class=\"login100-pic js-tilt\" data-tilt>\n");
      out.write("\t\t\t\t\t<img src=\"../temp/login-form-v1/Login_v1/images/img-01.png\" alt=\"IMG\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<form class=\"login100-form validate-form\">\n");
      out.write("\t\t\t\t\t<span class=\"login100-form-title\">\n");
      out.write("\t\t\t\t\t\tLogin\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Valid email is required: ex@abc.xyz\">\n");
      out.write("                                            <input class=\"input100\" type=\"text\" name=\"txt_usnme\" placeholder=\"Username\" autocomplete=\"off\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-user\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 validate-input\" data-validate = \"Password is required\">\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"password\" name=\"txt_password\" placeholder=\"Password\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\n");
      out.write("\t\t\t\t\t\t<span class=\"symbol-input100\">\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-lock\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn\">\n");
      out.write("\t\t\t\t\t\t<button class=\"login100-form-btn\">\n");
      out.write("\t\t\t\t\t\t\tLogin\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"text-center p-t-12\">\n");
      out.write("\t\t\t\t\t\t<span class=\"txt1\">\n");
      out.write("\t\t\t\t\t\t\tForgot\n");
      out.write("\t\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t\t<a class=\"txt2\" href=\"#\">\n");
      out.write("\t\t\t\t\t\t\tUsername / Password?\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"text-center p-t-136\">\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                            Create your Account<br>\n");
      out.write("                                                        <a class=\"txt2\" href=\"player_reg.jsp\">Player</a> /<a class=\"txt2\" href=\"Community_reg.jsp\"> Community</a>\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-long-arrow-right m-l-5\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t\n");
      out.write("<!--===============================================================================================-->\t\n");
      out.write("\t<script src=\"../temp/login-form-v1/Login_v1/vendor/jquery/jquery-3.2.1.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../temp/login-form-v1/Login_v1/vendor/bootstrap/js/popper.js\"></script>\n");
      out.write("\t<script src=\"../temp/login-form-v1/Login_v1/vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../temp/login-form-v1/Login_v1/vendor/select2/select2.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../temp/login-form-v1/Login_v1/vendor/tilt/tilt.jquery.min.js\"></script>\n");
      out.write("\t<script >\n");
      out.write("\t\t$('.js-tilt').tilt({\n");
      out.write("\t\t\tscale: 1.1\n");
      out.write("\t\t})\n");
      out.write("\t</script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../temp/login-form-v1/Login_v1/js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
