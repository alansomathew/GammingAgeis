<%-- 
    Document   : mode_reg
    Created on : 21 Dec, 2020, 8:08:47 PM
    Author     : alans
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
      <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GAME MODE REGISTRATION</title>
        <%@include file="Head.jsp" %>
    </head>
    <body>
    <%
        String plytype="",ins="",c="",cid="",edname="";
        if(request.getParameter("btnsave")!=null)
        { 
             cid=request.getParameter("txtid");
              plytype=request.getParameter("txt_name");
            if(cid.equals(""))
            {
                ins="insert into tbl_mode(mode_name) values('"+plytype+"')";
                //out.print(ins);
        if(con.executeCommand(ins))
        {
            %>
            
            <script>alert('Value inserted sucessfully')</script>
          
            <%
          
        }
               
               
                
            }
        else
            {        
           String upd="update tbl_mode set mode_name='"+plytype+"' where mode_id='"+cid+"'";
                if(con.executeCommand(upd))
        {
            %><script>alert('Value updated sucessfully')</script><%
            
          
        }
           
            }
        }
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_mode where mode_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("mode_reg.jsp");
        }
        if(request.getParameter("editid")!=null)
        {
            String selc="select * from tbl_mode where mode_id=('"+request.getParameter("editid")+"')";
            ResultSet rs1=con.select(selc);
            if(rs1.next())
            {
                cid=rs1.getString("mode_id");
                c=rs1.getString("mode_name");
            }
        }
            %>
            
        <div id="tab">
            <h3 align="center"><u>GAME MODE REGISTRATION</u></h3>
        <form>
            <table align="center">
                <tr>
                    <td>Mode Type:</td>
                    <td><input type="hidden" name="txtid" value="<%= cid %>"></td>
                    <td><input type="text" name="txt_name" value="<%= c %>" required="required" autocomplete="off"></td>
                </tr>
                <tr>
                    <td colspan="4"  align="center"><input type="submit" name="btnsave">
                        <input type="reset" name="btnreset"></td>
                </tr>
            </table>
                    
            <table>
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Action</td>
                </tr>
                
                   <%
        int i=0;
        String sel="select * from tbl_mode";
        ResultSet rs=con.select(sel);
        while(rs.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                    <td><%=rs.getString("mode_name")%></td>
                    <td>
                        <a href="mode_reg.jsp?delid=<%=rs.getString("mode_id")%>" >Delete</a>
                        <a href="mode_reg.jsp?editid=<%=rs.getString("mode_id")%>" >Edit</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
        </table>
        </form>
        </div>
    </body>
     <%@include file="Foot.jsp" %>
</html>
