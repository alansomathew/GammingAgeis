<%-- 
    Document   : Playerlist
    Created on : 15 Dec, 2020, 6:53:54 PM
    Author     : alans
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp" %>
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Players List</title>
    </head>
    <body>
        <%
            String di="";
        String udi=session.getAttribute("sid").toString();
        String selc="select * from tbl_subadmin where subadmin_id='"+udi+"'";
            ResultSet rs9=con.select(selc);
            if(rs9.next())
            {
                di=rs9.getString("district_id");
            }
        %>
        <h3 align="center"><u> PLAYERS LIST</u></h3>
        <%
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_players where player_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("Playerlist.jsp");
        }
        if(request.getParameter("blockid")!=null)
        {
            String blk="update tbl_players set player_status='1' where player_id=('"+request.getParameter("blockid")+"')";
            con.executeCommand(blk);
            response.sendRedirect("Playerlist.jsp");
        }
        if(request.getParameter("unblockid")!=null)
        {
            String unblk="update tbl_players set player_status='0'where player_id=('"+request.getParameter("unblockid")+"')";
            con.executeCommand(unblk);
            response.sendRedirect("Playerlist.jsp");
        }
        %>
        <div id="tab">
        <form >
          <table border="2">
              <tr><ul>UNBLOCKED LIST</ul></tr>     
              
              
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Game Id</td>
                    <td>Address</td>
                    <td>Phone Number</td>
                    <td>Gender</td>
                    <td>Mail</td>
                    <td>Action</td>
                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_players a inner join tbl_place d on a.place_id=d.place_id where player_status='0'and district_id='"+di+"'";
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                    <td><%=rsa.getString("player_name")%></td>
                    <td><%=rsa.getString("game_id")%></td>
                    <td><%=rsa.getString("player_address")%></td>
                    <td><%=rsa.getString("player_contact")%></td>
                    <td><%=rsa.getString("player_gender")%></td>
                    <td><%=rsa.getString("player_email")%></td>
                    <td>
                        <a href="Playerlist.jsp?blockid=<%=rsa.getString("player_id")%>" >Block</a>
                        <a href="Playerlist.jsp?delid=<%=rsa.getString("player_id")%>" >Delete</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
          </table><b></b>
          <br>
          <br>
             <table border="2">
                      
                 <tr><ul>BLOCKED LIST</ul></tr>
               
                
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Game Id</td>
                    <td>Address</td>
                    <td>Phone Number</td>
                    <td>Gender</td>
                    <td>Mail</td>
                    <td>Action</td>
                </tr>
                
                   <%
        int j=0;
        String sel1="select * from tbl_players a inner join tbl_place d on a.place_id=d.place_id where player_status='1'and district_id='"+di+"'";
        ResultSet rs1=con.select(sel1);
        while(rs1.next())
        {
            j++;
                   
        
        %>
                   <tr>
                       <td><%out.println(j);%></td>
                    <td><%=rs1.getString("player_name")%></td>
                    <td><%=rs1.getString("game_id")%></td>
                    <td><%=rs1.getString("player_address")%></td>
                    <td><%=rs1.getString("player_contact")%></td>
                    <td><%=rs1.getString("player_gender")%></td>
                    <td><%=rs1.getString("player_email")%></td>
                    <td>
                        <a href="Playerlist.jsp?unblockid=<%=rs1.getString("player_id")%>" >UnBlock</a>
                        <a href="Playerlist.jsp?delid=<%=rs1.getString("player_id")%>" >Delete</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
        </table>
       </form>
        </div>
        <%@include file="Foot.jsp" %>
    </body>
</html>
