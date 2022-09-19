package org.apache.jsp.guset;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class head_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" <title>Coffee - Free Bootstrap 4 Template by Colorlib</title>\n");
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
      out.write("              <a class=\"nav-link dropdown-toggle\" href=\"room.html\" id=\"dropdown04\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">Registration</a>\n");
      out.write("              <div class=\"dropdown-menu\" aria-labelledby=\"dropdown04\">\n");
      out.write("              \t<a class=\"dropdown-item\" href=\"player_reg.jsp\">Player</a>\n");
      out.write("                <a class=\"dropdown-item\" href=\"Community.jsp\">Community</a>\n");
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
