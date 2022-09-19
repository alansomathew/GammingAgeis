package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
