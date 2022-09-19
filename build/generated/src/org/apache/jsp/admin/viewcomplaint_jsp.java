package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class viewcomplaint_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin/Head.jsp");
    _jspx_dependants.add("/admin/Foot.jsp");
  }

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
      out.write("        <title>Complaint List</title>\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <title>Gaming Aegis</title>\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 11]>\n");
      out.write("    \t<script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("    \t<script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    \t<![endif]-->\n");
      out.write("    <!-- Meta -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\n");
      out.write("    <meta name=\"description\" content=\"\" />\n");
      out.write("    <meta name=\"keywords\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"Phoenixcoded\" />\n");
      out.write("    <!-- Favicon icon -->\n");
      out.write("    <link rel=\"icon\" href=\"assets/images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("\n");
      out.write("    <!-- vendor css -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../form.css\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body class=\"\">\n");
      out.write("\t<!-- [ Pre-loader ] start -->\n");
      out.write("\t<div class=\"loader-bg\">\n");
      out.write("\t\t<div class=\"loader-track\">\n");
      out.write("\t\t\t<div class=\"loader-fill\"></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- [ Pre-loader ] End -->\n");
      out.write("\t<!-- [ navigation menu ] start -->\n");
      out.write("\t<nav class=\"pcoded-navbar menu-light \">\n");
      out.write("\t\t<div class=\"navbar-wrapper  \">\n");
      out.write("\t\t\t<div class=\"navbar-content scroll-div \" >\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"\">\n");
      out.write("\t\t\t\t\t<div class=\"main-menu-header\">\n");
      out.write("\t\t\t\t\t\t<img class=\"img-radius\" src=\"assets/images/user/avatar-2.jpg\" alt=\"User-Profile-Image\">\n");
      out.write("\t\t\t\t\t\t<div class=\"user-details\">\n");
      out.write("\t\t\t\t\t\t\t<div id=\"more-details\"> <i class=\"fa fa-caret-down\"></i></div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<ul class=\"nav pcoded-inner-navbar \">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<li class=\"nav-item\">\n");
      out.write("\t\t\t\t\t    <a href=\"index.html\" class=\"nav-link \"><span class=\"pcoded-micon\"><i class=\"feather icon-home\"></i></span><span class=\"pcoded-mtext\">Dashboard</span></a>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t<li class=\"nav-item pcoded-hasmenu\">\n");
      out.write("\t\t\t\t\t    <a href=\"#!\" class=\"nav-link \"><span class=\"pcoded-micon\"><i class=\"feather icon-layout\"></i></span><span class=\"pcoded-mtext\">Location</span></a>\n");
      out.write("\t\t\t\t\t    <ul class=\"pcoded-submenu\">\n");
      out.write("                                                <li><a href=\"district.jsp\">District</a></li>\n");
      out.write("                                                <li><a href=\"place.jsp\">Place</a></li>\n");
      out.write("\t\t\t\t\t    </ul>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("                                        <li class=\"nav-item pcoded-hasmenu\">\n");
      out.write("\t\t\t\t\t    <a href=\"#!\" class=\"nav-link \"><span class=\"pcoded-micon\"><i class=\"feather icon-layout\"></i></span><span class=\"pcoded-mtext\">Sub Admin</span></a>\n");
      out.write("\t\t\t\t\t    <ul class=\"pcoded-submenu\">\n");
      out.write("                                                <li><a href=\"subadmin.jsp\">Sub Admin</a></li>\n");
      out.write("\t\t\t\t\t    </ul>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("                                        <li class=\"nav-item pcoded-hasmenu\">\n");
      out.write("\t\t\t\t\t    <a href=\"#!\" class=\"nav-link \"><span class=\"pcoded-micon\"><i class=\"feather icon-layout\"></i></span><span class=\"pcoded-mtext\">Basic Data</span></a>\n");
      out.write("\t\t\t\t\t    <ul class=\"pcoded-submenu\">\n");
      out.write("                                                <li><a href=\"playertype.jsp\">Players Type</a></li>\n");
      out.write("                                                <li><a href=\"type_reg.jsp\">Player Mode</a></li>\n");
      out.write("                                                <li><a href=\"mode_reg.jsp\">Prespective</a></li>\n");
      out.write("                                                <li><a href=\"slot.jsp\">Slot</a></li>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t    </ul>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("                                        <li class=\"nav-item pcoded-hasmenu\">\n");
      out.write("\t\t\t\t\t    <a href=\"#!\" class=\"nav-link \"><span class=\"pcoded-micon\"><i class=\"feather icon-layout\"></i></span><span class=\"pcoded-mtext\">Management</span></a>\n");
      out.write("\t\t\t\t\t    <ul class=\"pcoded-submenu\">\n");
      out.write("                                                <li><a href=\"Communitylista.jsp\">Community</a></li>\n");
      out.write("                                                <li><a href=\"playerlist.jsp\">Player</a></li>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t    </ul>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("                                        <li class=\"nav-item pcoded-hasmenu\">\n");
      out.write("\t\t\t\t\t    <a href=\"#!\" class=\"nav-link \"><span class=\"pcoded-micon\"><i class=\"feather icon-layout\"></i></span><span class=\"pcoded-mtext\">Complaint & Feedback</span></a>\n");
      out.write("\t\t\t\t\t    <ul class=\"pcoded-submenu\">\n");
      out.write("                                                <li><a href=\"viewcomplaint.jsp\">Complaint</a></li>\n");
      out.write("                                                <li><a href=\"viewfeedback.jsp\">Feedback</a></li>\n");
      out.write("\t\t\t\t\t    </ul>\n");
      out.write("\t\t\t\t\t</li>\n");
      out.write("\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("                            \n");
      out.write("\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</nav>\n");
      out.write("\t<!-- [ navigation menu ] end -->\n");
      out.write("\t<!-- [ Header ] start -->\n");
      out.write("\t<header class=\"navbar pcoded-header navbar-expand-lg navbar-light header-blue\">\n");
      out.write("\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t<div class=\"m-header\">\n");
      out.write("\t\t\t\t\t<a class=\"mobile-menu\" id=\"mobile-collapse\" href=\"#!\"><span></span></a>\n");
      out.write("\t\t\t\t\t<a href=\"#!\" class=\"b-brand\">\n");
      out.write("\t\t\t\t\t\t<!-- ========   change your logo hear   ============ -->\n");
      out.write("                                                <h5 class=\"logo\"> Gaming Ages </h5  >\n");
      out.write("\t\t\t\t\t\t<img src=\"assets/images/logo-icon.png\" alt=\"\" class=\"logo-thumb\">\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t<a href=\"#!\" class=\"mob-toggler\">\n");
      out.write("\t\t\t\t\t\t<i class=\"feather icon-more-vertical\"></i>\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"collapse navbar-collapse\">\n");
      out.write("\t\t\t\t\t<ul class=\"navbar-nav mr-auto\">\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#!\" class=\"pop-search\"><i class=\"feather icon-search\"></i></a>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"search-bar\">\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control border-0 shadow-none\" placeholder=\"Search hear\">\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"button\" class=\"close\" aria-label=\"Close\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<span aria-hidden=\"true\">&times;</span>\n");
      out.write("\t\t\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t</header>\n");
      out.write("\t<!-- [ Header ] end -->\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\n");
      out.write("<!-- [ Main Content ] start -->\n");
      out.write("<div class=\"pcoded-main-container\">\n");
      out.write("   <div class=\"pcoded-content\">\n");
      out.write("       \n");
      out.write("       <br><br><br><br><br><br>");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String sid="";
        String udi=session.getAttribute("sid").toString();
        String selc="select * from tbl_subadmin where subadmin_id='"+sid+"'";
            ResultSet rs9=con.select(selc);
            if(rs9.next())
            {
                sid=rs9.getString("district_id");
            }
        
      out.write("\n");
      out.write("        <div id=\"tab\">\n");
      out.write("        <h3 align=\"center\"><u> COMMUNITY LIST</u></h3>\n");
      out.write("        ");

        
      out.write("\n");
      out.write("        <form >\n");
      out.write("          <table border=\"2\">\n");
      out.write("              <tr>COMPLAINT LIST</tr>            \n");
      out.write("                <tr>\n");
      out.write("                    <td>Sl.No</td>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>Complaint</td>\n");
      out.write("                    <td>Date</td>\n");
      out.write("                    <td>Action</td>\n");
      out.write("                </tr>\n");
      out.write("                   ");

        int i=0;
        String sela="select * from tbl_complaint c inner join tbl_subadmin p on c.subadmin_id=p.subadmin_id inner join tbl_district pl on pl.district_id=p.district_id where c.player_id='0'";
       //out.println(sela);
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        
      out.write("\n");
      out.write("                   <tr>\n");
      out.write("                       <td>");
out.println(i);
      out.write("</td>\n");
      out.write("                       <td>");
      out.print(rsa.getString("subadmin_name"));
      out.write("</td>\n");
      out.write("                       <td>");
      out.print(rsa.getString("complaint_description"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rsa.getString("complaint_date"));
      out.write("</td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"replaycomplaint.jsp?replyid=");
      out.print(rsa.getString("complaint_id"));
      out.write("\" >Reply</a>\n");
      out.write("                    </td>\n");
      out.write("                   </tr> \n");
      out.write("                    ");

                         
        }
                  
      out.write(" \n");
      out.write("        </table>\n");
      out.write("       </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("     ");
      out.write(" <br><br><br><br><br><br>\n");
      out.write(" \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- [ breadcrumb ] end -->\n");
      out.write("        <!-- [ Main Content ] start -->\n");
      out.write("        \n");
      out.write("       \n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"assets/js/vendor-all.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/plugins/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/ripple.js\"></script>\n");
      out.write("   <script src=\"assets/js/pcoded.min.js\"></script>\n");
      out.write("   \n");
      out.write("<script src=\"assets/js/plugins/apexcharts.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- custom-chart js -->\n");
      out.write("<script src=\"assets/js/pages/dashboard-main.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
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
