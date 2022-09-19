package org.apache.jsp.SubAdmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Communitylist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/SubAdmin/head.jsp");
    _jspx_dependants.add("/SubAdmin/footer.jsp");
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
      out.write("        ");
      out.write(" <title>GAMING AGEIS</title>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    \n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:400,700\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Great+Vibes\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/open-iconic-bootstrap.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/animate.css\">\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/owl.carousel.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/owl.theme.default.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/magnific-popup.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/aos.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/ionicons.min.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/bootstrap-datepicker.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/jquery.timepicker.css\">\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/flaticon.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/icomoon.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"../temp/coffee/css/style.css\">\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("  \t<nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light\" id=\"ftco-navbar\">\n");
      out.write("\t    <div class=\"container\">\n");
      out.write("\t      <a class=\"navbar-brand\" href=\"index.html\">Gaming<small>Ageis</small></a>\n");
      out.write("\t      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("\t        <span class=\"oi oi-menu\"></span> Menu\n");
      out.write("\t      </button>\n");
      out.write("\t      <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\n");
      out.write("\t        <ul class=\"navbar-nav ml-auto\">\n");
      out.write("<!--\t          <li class=\"nav-item active\"><a href=\"index.html\" class=\"nav-link\">Home</a></li>\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"menu.html\" class=\"nav-link\">Menu</a></li>\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"services.html\" class=\"nav-link\">Services</a></li>-->\n");
      out.write("\t          <!--<li class=\"nav-item\"><a href=\"blog.html\" class=\"nav-link\">Blog</a></li>-->\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"about.html\" class=\"nav-link\">About</a></li>\n");
      out.write("\t          <li class=\"nav-item dropdown\">\n");
      out.write("              <a class=\"nav-link dropdown-toggle\" href=\"room.html\" id=\"dropdown04\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Users</a>\n");
      out.write("              <div class=\"dropdown-menu\" aria-labelledby=\"dropdown04\">\n");
      out.write("              \t<a class=\"dropdown-item\" href=\"Playerlist.jsp\">Player</a>\n");
      out.write("                <a class=\"dropdown-item\" href=\"Communitylist.jsp\">Community</a>\n");
      out.write("<!--                <a class=\"dropdown-item\" href=\"room.html\">Cart</a>\n");
      out.write("                <a class=\"dropdown-item\" href=\"checkout.html\">Checkout</a>-->\n");
      out.write("              </div>\n");
      out.write("            </li>\n");
      out.write("\t          <li class=\"nav-item\"><a href=\"Login.jsp\" class=\"nav-link\">Login</a></li>\n");
      out.write("\t          <!--<li class=\"nav-item cart\"><a href=\"cart.html\" class=\"nav-link\"><span class=\"icon icon-shopping_cart\"></span><span class=\"bag d-flex justify-content-center align-items-center\"><small>1</small></span></a></li>-->\n");
      out.write("\t        </ul>\n");
      out.write("\t      </div>\n");
      out.write("\t\t  </div>\n");
      out.write("\t  </nav>\n");
      out.write("    <!-- END nav -->\n");
      out.write("    <br>\n");
      out.write("    <br><br>\n");
      out.write("    <br><br>\n");
      out.write("    <br><br>\n");
      out.write("    <br>");
      out.write("\n");
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
      out.write("        <title>Players List</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String di="";
        String udi=session.getAttribute("sid").toString();
        String selc="select * from tbl_subadmin where subadmin_id='"+udi+"'";
            ResultSet rs9=con.select(selc);
            if(rs9.next())
            {
                di=rs9.getString("district_id");
            }
        
      out.write("\n");
      out.write("        <h3 align=\"center\"><u> COMMUNITY LIST</u></h3>\n");
      out.write("        ");

        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_community where community_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("Communitylist.jsp");
        }
        if(request.getParameter("acceptid")!=null)
        {
            String accpt="update tbl_community set community_status='1' where community_id=('"+request.getParameter("acceptid")+"')";
            con.executeCommand(accpt);
            response.sendRedirect("Communitylist.jsp");
        }
        if(request.getParameter("blockid")!=null)
        {
            String blk="update tbl_community set community_status='0'where community_id=('"+request.getParameter("blockid")+"')";
            con.executeCommand(blk);
            response.sendRedirect("Communitylist.jsp");
        }
        
      out.write("\n");
      out.write("        <form >\n");
      out.write("          <table border=\"2\">\n");
      out.write("              <tr>Accepted LIST</tr>            \n");
      out.write("                <tr>\n");
      out.write("                    <td>Sl.No</td>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>Phone Number</td>\n");
      out.write("                    <td>Mail</td>\n");
      out.write("                    <td>Action</td>\n");
      out.write("                </tr>\n");
      out.write("                   ");

        int i=0;
        String sela="select * from tbl_community where community_status='1' and district_id='"+di+"'";
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
      out.print(rsa.getString("community_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rsa.getString("community_contact"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rsa.getString("community_email"));
      out.write("</td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"Communitylist.jsp?blockid=");
      out.print(rsa.getString("community_id"));
      out.write("\" >Block</a>\n");
      out.write("                        <a href=\"Communitylist.jsp?delid=");
      out.print(rsa.getString("community_id"));
      out.write("\" >Delete</a>\n");
      out.write("                    </td>\n");
      out.write("                   </tr> \n");
      out.write("                    ");

                         
        }
                  
      out.write(" \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("          </table><b></b>\n");
      out.write("             <table border=\"2\">\n");
      out.write("                      \n");
      out.write("                <tr>BLOCKED LIST</tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Sl.No</td>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>Phone Number</td>\n");
      out.write("                    <td>Mail</td>\n");
      out.write("                    <td>Action</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                   ");

        int j=0;
        String sel1="select * from tbl_community where community_status='0'and district_id='"+di+"'";
        ResultSet rs1=con.select(sel1);
        while(rs1.next())
        {
            j++;
                   
        
        
      out.write("\n");
      out.write("                   <tr>\n");
      out.write("                       <td>");
out.println(j);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("community_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("community_contact"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("community_email"));
      out.write("</td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"Communitylist.jsp?acceptid=");
      out.print(rs1.getString("community_id"));
      out.write("\" >Accept</a>\n");
      out.write("                        <a href=\"Communitylist.jsp?delid=");
      out.print(rs1.getString("community_id"));
      out.write("\" >Delete</a>\n");
      out.write("                    </td>\n");
      out.write("                   </tr> \n");
      out.write("                    ");

                         
        }
                  
      out.write(" \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("        </table>\n");
      out.write("       </form>\n");
      out.write("        ");
      out.write(" <footer class=\"ftco-footer ftco-section img\">\n");
      out.write("    \t<div class=\"overlay\"></div>\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row mb-5\">\n");
      out.write("          <div class=\"col-lg-3 col-md-6 mb-5 mb-md-5\">\n");
      out.write("            <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("              <h2 class=\"ftco-heading-2\">About Us</h2>\n");
      out.write("              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\n");
      out.write("              <ul class=\"ftco-footer-social list-unstyled float-md-left float-lft mt-5\">\n");
      out.write("                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-twitter\"></span></a></li>\n");
      out.write("                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-facebook\"></span></a></li>\n");
      out.write("                <li class=\"ftco-animate\"><a href=\"#\"><span class=\"icon-instagram\"></span></a></li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("<!--          <div class=\"col-lg-4 col-md-6 mb-5 mb-md-5\">\n");
      out.write("            <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("              <h2 class=\"ftco-heading-2\">Recent Blog</h2>\n");
      out.write("              <div class=\"block-21 mb-4 d-flex\">\n");
      out.write("                <a class=\"blog-img mr-4\" style=\"background-image: url(../temp/coffee/images/image_1.jpg);\"></a>\n");
      out.write("                <div class=\"text\">\n");
      out.write("                  <h3 class=\"heading\"><a href=\"#\">Even the all-powerful Pointing has no control about</a></h3>\n");
      out.write("                  <div class=\"meta\">\n");
      out.write("                    <div><a href=\"#\"><span class=\"icon-calendar\"></span> Sept 15, 2018</a></div>\n");
      out.write("                    <div><a href=\"#\"><span class=\"icon-person\"></span> Admin</a></div>\n");
      out.write("                    <div><a href=\"#\"><span class=\"icon-chat\"></span> 19</a></div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <div class=\"block-21 mb-4 d-flex\">\n");
      out.write("                <a class=\"blog-img mr-4\" style=\"background-image: url(../temp/coffee/images/image_2.jpg);\"></a>\n");
      out.write("                <div class=\"text\">\n");
      out.write("                  <h3 class=\"heading\"><a href=\"#\">Even the all-powerful Pointing has no control about</a></h3>\n");
      out.write("                  <div class=\"meta\">\n");
      out.write("                    <div><a href=\"#\"><span class=\"icon-calendar\"></span> Sept 15, 2018</a></div>\n");
      out.write("                    <div><a href=\"#\"><span class=\"icon-person\"></span> Admin</a></div>\n");
      out.write("                    <div><a href=\"#\"><span class=\"icon-chat\"></span> 19</a></div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>-->\n");
      out.write("<!--          <div class=\"col-lg-2 col-md-6 mb-5 mb-md-5\">\n");
      out.write("             <div class=\"ftco-footer-widget mb-4 ml-md-4\">\n");
      out.write("              <h2 class=\"ftco-heading-2\">Services</h2>\n");
      out.write("              <ul class=\"list-unstyled\">\n");
      out.write("                <li><a href=\"#\" class=\"py-2 d-block\">Cooked</a></li>\n");
      out.write("                <li><a href=\"#\" class=\"py-2 d-block\">Deliver</a></li>\n");
      out.write("                <li><a href=\"#\" class=\"py-2 d-block\">Quality Foods</a></li>\n");
      out.write("                <li><a href=\"#\" class=\"py-2 d-block\">Mixed</a></li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </div>-->\n");
      out.write("          <div class=\"col-lg-3 col-md-6 mb-5 mb-md-5\">\n");
      out.write("            <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("            \t<h2 class=\"ftco-heading-2\">Have a Questions?</h2>\n");
      out.write("            \t<div class=\"block-23 mb-3\">\n");
      out.write("\t              <ul>\n");
      out.write("\t                <li><span class=\"icon icon-map-marker\"></span><span class=\"text\">203 Fake St. Mountain View, San Francisco, California, USA</span></li>\n");
      out.write("\t                <li><a href=\"#\"><span class=\"icon icon-phone\"></span><span class=\"text\">+2 392 3929 210</span></a></li>\n");
      out.write("\t                <li><a href=\"#\"><span class=\"icon icon-envelope\"></span><span class=\"text\">info@yourdomain.com</span></a></li>\n");
      out.write("\t              </ul>\n");
      out.write("\t            </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("          <div class=\"col-md-12 text-center\">\n");
      out.write("\n");
      out.write("            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->\n");
      out.write("  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class=\"icon-heart\" aria-hidden=\"true\"></i> by <a href=\"https://colorlib.com\" target=\"_blank\">Colorlib</a>\n");
      out.write("  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("    \n");
      out.write("  \n");
      out.write("\n");
      out.write("  <!-- loader -->\n");
      out.write("  <div id=\"ftco-loader\" class=\"show fullscreen\"><svg class=\"circular\" width=\"48px\" height=\"48px\"><circle class=\"path-bg\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke=\"#eeeeee\"/><circle class=\"path\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke-miterlimit=\"10\" stroke=\"#F96D00\"/></svg></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <script src=\"../temp/coffee/js/jquery.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/jquery-migrate-3.0.1.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/popper.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/bootstrap.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/jquery.easing.1.3.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/jquery.waypoints.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/jquery.stellar.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/owl.carousel.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/aos.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/jquery.animateNumber.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/bootstrap-datepicker.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/jquery.timepicker.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/scrollax.min.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/google-map.js\"></script>\n");
      out.write("  <script src=\"../temp/coffee/js/main.js\"></script>");
      out.write("\n");
      out.write("    </body>\n");
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
