package org.apache.jsp.WebView;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class tournamentlist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Tournament List</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"../form.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div id=\"tab\">\n");
      out.write("        ");

            String di="";
        String udi=session.getAttribute("uid").toString();
        String selc="select * from tbl_players p inner join tbl_place pl on p.place_id=pl.place_id where player_id='"+udi+"'";
        //out.println(selc);
            ResultSet rs9=con.select(selc);
            if(rs9.next())
            {
                di=rs9.getString("district_id");
                out.println();
            }
        
      out.write("\n");
      out.write("        <h3 align=\"center\"><u> TOURNAMENT LIST</u></h3>\n");
      out.write("        <form>\n");
      out.write("            <table border=\"\" align=\"center\">\n");
      out.write("              <tr>\n");
      out.write("                   ");

        int i=0,j=0,z=0;
        String sela="select * from tbl_tournament t inner join tbl_community c on t.community_id=c.community_id inner join tbl_mode m on m.mode_id=t.mode_id inner join tbl_type tp on tp.type_id=t.type_id where t.tournament_status='2' and c.district_id='"+di+"'";
       // out.println(sela);
        
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
            j++;
            
             String tf=rsa.getString("tournament_fee");  
        if(tf.equals("free"))
        {
            z++;
        
      out.write(" \n");
      out.write("                  \n");
      out.write("                       <td>");
out.println(i);
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("tournament_name"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("tournament_date"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("tournament_time"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("mode_name"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("type_name"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("tournament_fee"));
      out.write("\n");
      out.write("                       <br><a href=\"registertour.jsp?regid=");
      out.print(rsa.getString("tournament_id"));
      out.write("\">Register</a>\n");
      out.write("                       </td>\n");
      out.write("                  \n");
      out.write("    \n");
      out.write("                    ");

                    if(z==3)
                    {
                        out.println("</tr><tr>");
                        z=0;
                    }
                         
        }
                  
        else
        
            {
                z++;
        
      out.write("\n");
      out.write("                 \n");
      out.write("                       <td>");
out.println(j);
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("tournament_name"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("tournament_date"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("tournament_time"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("mode_name"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("type_name"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("tournament_fee"));
      out.write("\n");
      out.write("                       <br>");
      out.print(rsa.getString("tournament_fees"));
      out.write("\n");
      out.write("                       <br><a href=\"registertour.jsp?regid=");
      out.print(rsa.getString("tournament_id"));
      out.write("\">Register</a>\n");
      out.write("                       </td>\n");
      out.write("                   \n");
      out.write("        \n");
      out.write("                    ");

                     if(z==3)
                    {
                        out.println("</tr><tr>");
                        z=0;
                    }
                         
        }
        }
                  
      out.write(" \n");
      out.write("                </table>\n");
      out.write("       \n");
      out.write("       </form>\n");
      out.write("         </div>\n");
      out.write("                <br><br><br><br><br>\n");
      out.write("    </body>\n");
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
