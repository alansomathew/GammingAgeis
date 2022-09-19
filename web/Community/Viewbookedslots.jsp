<%-- 
    Document   : Viewbookedslots
    Created on : 23 Feb, 2021, 2:00:58 PM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
        
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tournament List</title>
         <link rel="stylesheet" href="../form.css">
    </head>
    <body>
        <div id="tab">
        <h3 align="center"><u> Booked Tournament LIST</u></h3>
        <%
            String delid=request.getParameter("delid");
            String cid=session.getAttribute("cid").toString();
//        if(request.getParameter("delid")!=null)
//        {
//            String del="delete from tbl_applytournament where applytournament_id=('"+request.getParameter("delid")+"')";
//            con.executeCommand(del);
//            response.sendRedirect("ViewBookedtournaments.jsp");
//        }
                   %>
      
            <table align="center" border="2">
            <%
             String sel="select * from tbl_applytournament a inner join tbl_tournament t on a.tournament_id=t.tournament_id inner join tbl_mode m on t.mode_id=m.mode_id inner join tbl_type ty on t.type_id=ty.type_id inner join tbl_community c on t.community_id=c.community_id where t.community_id='"+cid+"' and a.tournament_id='"+request.getParameter("delid")+"'";
    
        ResultSet rs=con.select(sel);
        if(rs.next())
        {
           
                   
        
        %>
                   <tr>
                     
                       <td><%=rs.getString("tournament_name")%></td>
                    <td><%=rs.getString("tournament_date")%></td>
                    <td><%=rs.getString("tournament_time")%></td>
                    <td><%=rs.getString("mode_name")%></td>
                    <td><%=rs.getString("type_name")%></td>
                     
                    
                   </tr> 
                   
            </table>
            <br>
            <%
            
            if(rs.getString("id").equals("Not Yet Declared") && rs.getString("pass").equals("Not Yet Declared"))
            {
                
                %>
                
                
                <form>
                <table style="width: 50%;" align="center">
                <tr>
                    <td style="width: 15%;">
                        <input type="text" placeholder="Enter Tournament Id" name="id">
                        <input type="hidden" value="<%=delid%>" name="delid">
                    </td>
                    <td style="width: 15%;">
                        <input type="text" placeholder="Enter Tournament Password" name="pass">
                    </td>
                    <td  style="width: 15%;"    >
                        <input type="submit" value="Send" name="btn">
                    </td>
                </tr>
            </table>
            </form>
                
                
                <%
            }
            else
            {
                %>
                
                <table  align="center">
                <tr>
                    <td>
                      ID : <%=rs.getString("id")%>
                    </td>
                    <td>
                      Password : <%=rs.getString("pass")%>
                    </td>
                   
                </tr>
            </table>
                
                <%
            }
        }
            
            %>
            <br>
          <table align="center">
              <tr></tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Slot</td>

                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_applytournament a inner join tbl_tournament t on a.tournament_id=t.tournament_id inner join tbl_players pl on a.player_id=pl.player_id inner join tbl_slot sl on a.slot_id=sl.slot_id inner join tbl_community c on t.community_id=c.community_id where a.tournament_id='"+request.getParameter("delid")+"'";
//    out.println(sela);
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                    <td><%=rsa.getString("player_name")%></td>
                    <td><%=rsa.getString("slot_no")%></td>
                    
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
          </table><b></b>
     
        </div>
        <%@include file="footer.jsp" %>
    <%
    
    if(request.getParameter("btn")!=null)
    {
        String up="update tbl_applytournament set id='"+request.getParameter("id")+"',pass='"+request.getParameter("pass")+"' where tournament_id='"+request.getParameter("delid")+"'";
        if(con.executeCommand(up))
        {
            %> 
      <script type="text/javascript">
            setTimeout(function(){window.location.href='Viewbookedslots.jsp?delid=<%=request.getParameter("delid")%>'},100);
        </script>
     <%
        }
        
    }
    
    
    %>
    </body>
</html>