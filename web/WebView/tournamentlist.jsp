<%-- 
    Document   : tournamentlist
    Created on : 22 Dec, 2020, 3:17:08 PM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tournament List</title>
         <link rel="stylesheet" href="../form.css">
    </head>
    <body>
        <div id="tab" align="center" style="margin-top: 200px">
        <%
            String di="";
        session.setAttribute("player", request.getParameter("id"));
        String selc="select * from tbl_players p inner join tbl_place pl on p.place_id=pl.place_id where player_id='"+session.getAttribute("player")+"'";
        //out.println(selc);
            ResultSet rs9=con.select(selc);
            if(rs9.next())
            {
                di=rs9.getString("district_id");
                out.println();
            }
        %>
        <h3 align="center"><u> TOURNAMENT LIST</u></h3>
        <form>
            <table border="" align="center">
              <tr>
                   <%
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
        %> 
                  
                       <td><%out.println(i);%>
                       <br><%=rsa.getString("tournament_name")%>
                       <br><%=rsa.getString("tournament_date")%>
                       <br><%=rsa.getString("tournament_time")%>
                       <br><%=rsa.getString("mode_name")%>
                       <br><%=rsa.getString("type_name")%>
                       <br><%=rsa.getString("tournament_fee")%>
                       <br><a href="registertour.jsp?regid=<%=rsa.getString("tournament_id")%>">Register</a>
                       </td>
                  
    
                    <%
                    if(z==3)
                    {
                        out.println("</tr><tr>");
                        z=0;
                    }
                         
        }
                  
        else
        
            {
                z++;
        %>
                 
                       <td><%out.println(j);%>
                       <br><%=rsa.getString("tournament_name")%>
                       <br><%=rsa.getString("tournament_date")%>
                       <br><%=rsa.getString("tournament_time")%>
                       <br><%=rsa.getString("mode_name")%>
                       <br><%=rsa.getString("type_name")%>
                       <br><%=rsa.getString("tournament_fee")%>
                       <br><%=rsa.getString("tournament_fees")%>
                       <br><a href="registertour.jsp?regid=<%=rsa.getString("tournament_id")%>">Register</a>
                       </td>
                   
        
                    <%
                     if(z==3)
                    {
                        out.println("</tr><tr>");
                        z=0;
                    }
                         
        }
        }
                  %> 
                </table>
       
       </form>
         </div>
                <br><br><br><br><br>
    </body>
</html>