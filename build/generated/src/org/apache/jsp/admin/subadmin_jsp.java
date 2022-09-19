package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class subadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Sub admin Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h3 align=\"center\"><u> SUBADMIN REGISTRATION</u></h3>\n");
      out.write("         ");

        String subname="",ins="",subadd="",subph="",subgen="",dst="",mail="",uname="",subpass="",c="",cid="",cadd="",cph="",cm="",cun="",cpass="",di="",gen="";
        if(request.getParameter("btnsave")!=null)
        { 
            subname=request.getParameter("txt_name");
            subadd=request.getParameter("txt_address");
            subph=request.getParameter("txt_phno");
            subgen=request.getParameter("txt_gender");
            dst=request.getParameter("ddldistrict");
            mail=request.getParameter("txt_email");
            uname=request.getParameter("txt_usnme");
            subpass=request.getParameter("txt_pass");
            cid=request.getParameter("txtid");
            if(cid.equals(""))
            {
          ins="insert into tbl_subadmin(subadmin_name,subadmin_address,subadmin_contact,subadmin_email,subadmin_gender,subadmin_uname,subadmin_password,district_id) values('"+subname+"','"+subadd+"','"+subph+"','"+mail+"','"+subgen+"','"+uname+"','"+subpass+"','"+dst+"')";
         // out.println(ins);
          if(con.executeCommand(ins))
        {
            
      out.write("\n");
      out.write("            \n");
      out.write("            <script>alert('Value inserted sucessfully')</script>\n");
      out.write("          \n");
      out.write("            ");

          
        }
        }
        else
            {        
           String upd="update tbl_subadmin set subadmin_name='"+subname+"',subadmin_address='"+subadd+"',subadmin_contact='"+subph+"',subadmin_email='"+mail+"',subadmin_gender='"+subgen+"',subadmin_uname='"+uname+"',subadmin_password='"+subpass+"',district_id='"+dst+"' where subadmin_id='"+cid+"'";
                //out.println(upd);
           if(con.executeCommand(upd))
        {
            
      out.write("<script>alert('Value updated sucessfully')</script>");

            
          
        }
           
            }
        }
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_subadmin where subadmin_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("subadmin.jsp");
        }
         if(request.getParameter("editid")!=null)
        {
            String selc="select * from tbl_subadmin where subadmin_id=('"+request.getParameter("editid")+"')";
            ResultSet rs1=con.select(selc);
            if(rs1.next())
            {
                cid=rs1.getString("subadmin_id");
                c=rs1.getString("subadmin_name");
                cadd=rs1.getString("subadmin_address");
                cph=rs1.getString("subadmin_contact");
                cm=rs1.getString("subadmin_email");
                cun=rs1.getString("subadmin_uname");
                cpass=rs1.getString("subadmin_password");
                di=rs1.getString("district_id");
                gen=rs1.getString("subadmin_gender");
                //out.println(cid);
            }
        }
        
      out.write("\n");
      out.write("        <form method=\"post\">\n");
      out.write("            <table align=\"center\" border=\"2\">\n");
      out.write("                <tr>  \n");
      out.write("                    \n");
      out.write("                    <td>Sub Admin Name:</td><td><input type=\"text\" name=\"txt_name\" value=\"");
      out.print(c);
      out.write("\"><input type=\"hidden\" name=\"txtid\" value=\"");
      out.print(cid);
      out.write("\" required=\"required\" autocomplete=\"off\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Phone Number:</td><td><input type=\"text\" name=\"txt_phno\" value=\"");
      out.print(cph);
      out.write("\" required=\"required\" autocomplete=\"off\" pattern=\"[0-9+]{10,13}\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender:</td><td><input type=\"radio\" name=\"txt_gender\" value=\"male\" ");
if(gen.equals("male")){out.print("checked");}
      out.write(" required=\"required\" autocomplete=\"off\">Male\n");
      out.write("                        <input type=\"radio\" name=\"txt_gender\" value=\"female\"");
if(gen.equals("female")){out.print("checked");}
      out.write(" required=\"required\" autocomplete=\"off\">Female</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address:</td><td><textarea name=\"txt_address\" required=\"required\">");
out.println(cadd);
      out.write("</textarea></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email:</td><td><input type=\"email\" name=\"txt_email\" value=\"");
      out.print(cm);
      out.write("\" required=\"required\" autocomplete=\"off\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                <td>District:</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddldistrict\">\n");
      out.write("                            <option>\n");
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
if(rs.getString("district_id").equals(di)){out.print("selected");}
      out.write('>');
      out.print(rs.getString("district_name"));
      out.write("</option>\n");
      out.write("                                 ");

                         
        }
                  
      out.write(" \n");
      out.write("                        </select></td>\n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("                <tr>\n");
      out.write("                    <td>username:</td><td><input type=\"text\" name=\"txt_usnme\" value=\"");
      out.print(cun);
      out.write("\" required=\"required\" autocomplete=\"off\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>password:</td><td><input type=\"password\" name=\"txt_pass\" value=\"");
      out.print(cpass);
      out.write("\" required=\"required\" autocomplete=\"off\" pattern=\"[a-zA-Z0-9]{6-9}\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\"  align=\"center\"><input type=\"submit\" name=\"btnsave\">\n");
      out.write("                        <input type=\"reset\" name=\"btnreset\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("                        <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Sl.No</td>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td>Phone Number</td>\n");
      out.write("                    <td>Gender</td>\n");
      out.write("                    <td>Mail</td>\n");
      out.write("                    <td>District</td>\n");
      out.write("                    <td>Action</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                   ");

        int i=0;
        String sela="select * from tbl_subadmin a inner join tbl_district d on a.district_id=d.district_id ";
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        
      out.write("\n");
      out.write("                   <tr>\n");
      out.write("                       <td>");
out.println(i);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rsa.getString("subadmin_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rsa.getString("subadmin_address"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rsa.getString("subadmin_contact"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rsa.getString("subadmin_gender"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rsa.getString("subadmin_email"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rsa.getString("district_name"));
      out.write("</td>\n");
      out.write("\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"subadmin.jsp?delid=");
      out.print(rsa.getString("subadmin_id"));
      out.write("\" >Delete</a>\n");
      out.write("                        <a href=\"subadmin.jsp?editid=");
      out.print(rsa.getString("subadmin_id"));
      out.write("\" >Edit</a>\n");
      out.write("                    </td>\n");
      out.write("                   </tr> \n");
      out.write("                    ");

                         
        }
                  
      out.write(" \n");
      out.write("                    \n");
      out.write("                \n");
      out.write("        </table>\n");
      out.write("       </form>\n");
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
