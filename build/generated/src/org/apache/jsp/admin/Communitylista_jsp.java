package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Communitylista_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
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
      out.write("        <h3 align=\"center\"><u> COMMUNITY LIST</u></h3>\n");
      out.write("        ");

        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_community where community_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
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
        String sela="select * from tbl_community where community_status='1'";
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
      out.write("       </form>\n");
      out.write("    \n");
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
