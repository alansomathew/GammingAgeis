<%-- 
    Document   : ViewBookedtournaments
    Created on : 23 Feb, 2021, 11:07:52 AM
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
            String uid=session.getAttribute("uid").toString();
//        if(request.getParameter("delid")!=null)
//        {
//            String del="delete from tbl_applytournament where applytournament_id=('"+request.getParameter("delid")+"')";
//            con.executeCommand(del);
//            response.sendRedirect("ViewBookedtournaments.jsp");
//        }
        %>
        <form >
          <table align="center">
              <tr></tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Community Name</td>
                    <td>Date</td>
                    <td>Time</td>
                    <td>Mode</td>
                    <td>Type</td>
                    <td>Slot</td>
                    <td>ID</td>
                    <td>Password</td>

                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_applytournament a inner join tbl_tournament t on a.tournament_id=t.tournament_id inner join tbl_slot sl on a.slot_id=sl.slot_id inner join tbl_mode m on t.mode_id=m.mode_id inner join tbl_type ty on t.type_id=ty.type_id inner join tbl_community c on t.community_id=c.community_id where a.player_id='"+uid+"'";
    
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                       <td><%=rsa.getString("tournament_name")%></td>
                       <td><%=rsa.getString("community_name")%></td>
                    <td><%=rsa.getString("tournament_date")%></td>
                    <td><%=rsa.getString("tournament_time")%></td>
                    <td><%=rsa.getString("mode_name")%></td>
                    <td><%=rsa.getString("type_name")%></td>
                    <td><%=rsa.getString("slot_no")%></td>
                    <td><%=rsa.getString("id")%></td>
                    <td><%=rsa.getString("pass")%></td>
                    
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
          </table><b></b>
       </form>
        </div>
        <%@include file="footer.jsp" %>
    
    </body>
</html>
