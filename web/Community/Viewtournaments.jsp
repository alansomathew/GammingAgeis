<%-- 
    Document   : Viewtournaments
    Created on : 23 Feb, 2021, 2:19:19 PM
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
            String cid=session.getAttribute("cid").toString();
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
                    <td>Tournament Name</td>
                    <td>Date</td>
                    <td>Time</td>
                    <td>Mode</td>
                    <td>Type</td>
                    <td>Action</td>

                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_tournament t inner join tbl_mode m on t.mode_id=m.mode_id inner join tbl_type ty on t.type_id=ty.type_id inner join tbl_community c on t.community_id=c.community_id where t.community_id='"+cid+"'";
    
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                       <td><%=rsa.getString("tournament_name")%></td>
                    <td><%=rsa.getString("tournament_date")%></td>
                    <td><%=rsa.getString("tournament_time")%></td>
                    <td><%=rsa.getString("mode_name")%></td>
                    <td><%=rsa.getString("type_name")%></td>
                     <td>
                        <a href="Viewbookedslots.jsp?delid=<%=rsa.getString("tournament_id")%>" >Bookings</a>
                    </td>
                    
                   </tr> 
                    <%
                    
                         
        }
                  %> 
                    
                
          </table><b></b>
       </form>
        </div>
                  <br><br><br>
        <%@include file="footer.jsp" %>
    
    </body>
</html>
