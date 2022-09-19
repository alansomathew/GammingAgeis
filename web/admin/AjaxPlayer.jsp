<%-- 
    Document   : AjaxPlayer
    Created on : 6 Jan, 2021, 3:22:24 PM
    Author     : alans
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajax Player</title>
    </head>
    <body>
        <form>
        
                  <table border="2">
              <tr>PLAYER LIST</tr>            
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
        String sela="select * from tbl_players p inner join tbl_place pl on p.place_id=pl.place_id inner join tbl_district d on pl.district_id=d.district_id where player_status='0' and pl.district_id='"+request.getParameter("disid")+"'";
       //out.println(sela);
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
                        <a href="playerlist.jsp?delid=<%=rsa.getString("player_id")%>" >Delete</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
          </table><b></b>
       </form>
    </body>
</html>
