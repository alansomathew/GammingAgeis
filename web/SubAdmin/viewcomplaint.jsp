<%-- 
    Document   : viewcomplaint
    Created on : 4 Jan, 2021, 11:38:51 AM
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
        <title>Complaint List</title>
    </head>
    <body>
        <div id="tab">
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
        <h3 align="center"><u> COMMUNITY LIST</u></h3>
        <%
        %>
        <form >
          <table border="2">
              <tr>PLAYER COMPLAINT LIST</tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Complaint</td>
                    <td>Date</td>
                    <td>Action</td>
                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_complaint c inner join tbl_players p on c.player_id=p.player_id inner join tbl_place pl on pl.place_id=p.place_id  where pl.district_id='"+di+"'";
       //out.println(sela);
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                       <td><%=rsa.getString("player_name")%></td>
                       <td><%=rsa.getString("complaint_description")%></td>
                    <td><%=rsa.getString("complaint_date")%></td>
                    <td>
                        <a href="replaycomplaint.jsp?replyid=<%=rsa.getString("complaint_id")%>" >Reply</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
        </table>
        <table border="2">
              <tr>COMMUNITY COMPLAINT LIST</tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Complaint</td>
                    <td>Date</td>
                    <td>Action</td>
                </tr>
                   <%
        int j=0;
        String sel="select * from tbl_complaint c inner join tbl_community p on c.community_id=p.community_id where p.district_id='"+di+"'";
       //out.println(sel);
        ResultSet rs=con.select(sel);
        while(rs.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                       <td><%=rs.getString("community_name")%></td>
                       <td><%=rs.getString("complaint_description")%></td>
                    <td><%=rs.getString("complaint_date")%></td>
                    <td>
                        <a href="replaycomplaint.jsp?replyid=<%=rs.getString("complaint_id")%>" >Reply</a>
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
