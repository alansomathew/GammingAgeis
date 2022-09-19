package org.apache.jsp.Players;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Payement_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" >\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <title>CodePen - payment checkout</title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"./style.css\">\n");
      out.write("<style>\n");
      out.write("@import url('https://fonts.googleapis.com/css?family=Baloo+Bhaijaan|Ubuntu');\n");
      out.write("\n");
      out.write("*{\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("  font-family: 'Ubuntu', sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("body{\n");
      out.write("  background: #2196F3;\n");
      out.write("  margin: 0 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".payment{\n");
      out.write("  background: #f9f9f9;\n");
      out.write("  max-width: 360px;\n");
      out.write("  margin: 80px auto;\n");
      out.write("  height: auto;\n");
      out.write("  padding: 35px;\n");
      out.write("  padding-top: 70px;\n");
      out.write("  border-radius: 5px;\n");
      out.write("  position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".payment h2{\n");
      out.write("  text-align: center;\n");
      out.write("  letter-spacing: 2px;\n");
      out.write("  margin-bottom: 40px;\n");
      out.write("  color: #0d3c61;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form .label{\n");
      out.write("  display: block;\n");
      out.write("  color: #555566;\n");
      out.write("  margin-bottom: 6px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".input{\n");
      out.write("  padding: 13px 0px 13px 25px;\n");
      out.write("  width: 100%;\n");
      out.write("  text-align: center;\n");
      out.write("  border: 2px solid #dddddd;\n");
      out.write("  border-radius: 5px;\n");
      out.write("  letter-spacing: 1px;\n");
      out.write("  word-spacing: 3px;\n");
      out.write("  outline: none;\n");
      out.write("  font-size: 16px;\n");
      out.write("  color: #555566;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card-grp{\n");
      out.write("  display: flex;\n");
      out.write("  justify-content: space-between;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card-item{\n");
      out.write("  width: 48%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".space{\n");
      out.write("  margin-bottom: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".icon-relative{\n");
      out.write("  position: relative;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".icon-relative .fas,\n");
      out.write(".icon-relative .far{\n");
      out.write("  position: absolute;\n");
      out.write("  bottom: 12px;\n");
      out.write("  left: 15px;\n");
      out.write("  font-size: 20px;\n");
      out.write("  color: #555555;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn{\n");
      out.write("  margin-top: 40px;\n");
      out.write("  background: #2196F3;\n");
      out.write("  padding: 12px;\n");
      out.write("  text-align: center;\n");
      out.write("  color: #f8f8f8;\n");
      out.write("  border-radius: 5px;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".payment-logo{\n");
      out.write("  position: absolute;\n");
      out.write("  top: -50px;\n");
      out.write("  left: 50%;\n");
      out.write("  transform: translateX(-50%);\n");
      out.write("  width: 100px;\n");
      out.write("  height: 100px;\n");
      out.write("  background: #f8f8f9;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  box-shadow: 0 0 5px rgba(0,0,0,0.2);\n");
      out.write("  text-align: center;\n");
      out.write("  line-height: 85px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".payment-logo:before{\n");
      out.write("  content: \"\";\n");
      out.write("  position: absolute;\n");
      out.write("  top: 5px;\n");
      out.write("  left: 5px;\n");
      out.write("  width: 90px;\n");
      out.write("  height: 90px;\n");
      out.write("  background: #2196F3;\n");
      out.write("  border-radius: 50%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".payment-logo p{\n");
      out.write("  position: relative;\n");
      out.write("  color: #f8f8f8;\n");
      out.write("  font-family: 'Baloo Bhaijaan', cursive;\n");
      out.write("  font-size: 58px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=submit] {\n");
      out.write("\tbackground-color: #2196F3;\n");
      out.write("\tborder: none;\n");
      out.write("\tcolor: #f8f8f8;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (max-width: 420px){\n");
      out.write("  .card-grp{\n");
      out.write("    flex-direction: column;\n");
      out.write("  }\n");
      out.write("  .card-item{\n");
      out.write("    width: 100%;\n");
      out.write("    margin-bottom: 20px;\n");
      out.write("  }\n");
      out.write("  .btn{\n");
      out.write("    margin-top: 20px;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- partial:index.partial.html -->\n");
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.4.2/css/all.css\">\n");
      out.write("\n");
      out.write("<div class=\"wrapper\">\n");
      out.write("  <div class=\"payment\">\n");
      out.write("    <div class=\"payment-logo\">\n");
      out.write("      <p>p</p>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("      <form method=\"post\">\n");
      out.write("    <h2>Payment Gateway</h2>\n");
      out.write("    <div class=\"form\">\n");
      out.write("      <div class=\"card space icon-relative\">\n");
      out.write("        <label class=\"label\">Card holder:</label>\n");
      out.write("        <input type=\"text\" class=\"input\" placeholder=\"Card Holder\" >\n");
      out.write("        <i class=\"fas fa-user\"></i>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"card space icon-relative\">\n");
      out.write("        <label class=\"label\">Card number:</label>\n");
      out.write("        <input type=\"text\" class=\"input\" data-mask=\"0000 0000 0000 0000\" placeholder=\"Card Number\">\n");
      out.write("        <i class=\"far fa-credit-card\"></i>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"card-grp space\">\n");
      out.write("        <div class=\"card-item icon-relative\">\n");
      out.write("          <label class=\"label\">Expiry date:</label>\n");
      out.write("          <input type=\"text\" name=\"expiry-data\" class=\"input\" data-mask=\"00 / 00\" placeholder=\"00 / 00\">\n");
      out.write("          <i class=\"far fa-calendar-alt\"></i>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"card-item icon-relative\">\n");
      out.write("          <label class=\"label\">CVC:</label>\n");
      out.write("          <input type=\"text\" class=\"input\" data-mask=\"000\" placeholder=\"000\">\n");
      out.write("          <i class=\"fas fa-lock\"></i>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("        \n");
      out.write("      <div class=\"btn\">\n");
      out.write("      \t\n");
      out.write("        <input type=\"submit\" name=\"btnpay\" id=\"btnpay\" value=\"Pay\"> \n");
      out.write("      </div> \n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("      </form>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<!-- partial -->\n");
      out.write("  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>\n");
      out.write("<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js'></script>\n");
      out.write("\n");
      out.write("</body>\n");

    String up="";
    if(request.getParameter("btnpay")!=null)
    {
        String select="select max(applytournament_id) as c from tbl_applytournament";
        ResultSet rs= con.select(select);
        if(rs.next())
        {
        up="update tbl_applytournament set applytournament_status='1' where applytournament_id='"+rs.getString("c")+"'";
        
         if(con.executeCommand(up))
         {
             response.sendRedirect("tournamentlist.jsp");
         }
        }
    }

      out.write("\n");
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
