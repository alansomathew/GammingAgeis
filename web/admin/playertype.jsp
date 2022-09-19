<%-- 
    Document   : playertype
    Created on : 14 Dec, 2020, 11:42:08 AM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
      <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PLAYER TYPE REGISTRATION</title>
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
                ins="insert into tbl_playertype(player_type) values('"+plytype+"')";
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
           String upd="update tbl_playertype set player_type='"+plytype+"' where playertype_id='"+cid+"'";
                if(con.executeCommand(upd))
        {
            %><script>alert('Value updated sucessfully')</script><%
            
          
        }
           
            }
        }
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_playertype where playertype_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("playertype.jsp");
        }
        if(request.getParameter("editid")!=null)
        {
            String selc="select * from tbl_playertype where playertype_id=('"+request.getParameter("editid")+"')";
            ResultSet rs1=con.select(selc);
            if(rs1.next())
            {
                cid=rs1.getString("playertype_id");
                c=rs1.getString("player_type");
            }
        }
            %>
            
        <div id="tab">
            <h3 align="center"><u>PLAYER TYPE REGISTRATION</u></h3>
        <form>
            <table align="center">
                <tr>
                    <td>Player Type:</td>
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
        String sel="select * from tbl_playertype";
        ResultSet rs=con.select(sel);
        while(rs.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                    <td><%=rs.getString("player_type")%></td>
                    <td>
                        <a href="playertype.jsp?delid=<%=rs.getString("playertype_id")%>" >Delete</a>
                        <a href="playertype.jsp?editid=<%=rs.getString("playertype_id")%>" >Edit</a>
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