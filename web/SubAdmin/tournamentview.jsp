<%-- 
    Document   : tournamentview
    Created on : 22 Dec, 2020, 2:14:09 PM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp" %>
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tournament List</title>
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
        <h3 align="center"><u> TOURNAMENT LIST</u></h3>
        <%
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_tournament where tournament_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("tournamentview.jsp");
        }
        if(request.getParameter("acceptid")!=null)
        {
            String accpt="update tbl_tournament set tournament_status='2' where tournament_id=('"+request.getParameter("acceptid")+"')";
            con.executeCommand(accpt);
            response.sendRedirect("tournamentview.jsp");
        }
        if(request.getParameter("blockid")!=null)
        {
            String blk="update tbl_tournament set tournament_status='0'where tournament_id=('"+request.getParameter("blockid")+"')";
            con.executeCommand(blk);
            response.sendRedirect("tournamentview.jsp");
        }
        %>
        <form >
          <table border="2">
              <tr><ul>Accepted LIST</ul></tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Date</td>
                    <td>Time</td>
                    <td>Mode</td>
                    <td>Type</td>
                    <td>Pay Type</td>
                    <td>Action</td>
                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_tournament t inner join tbl_community c on t.community_id=c.community_id inner join tbl_mode m on m.mode_id=t.mode_id inner join tbl_type tp on tp.type_id=t.type_id where t.tournament_status='2' and c.district_id='"+di+"'";
        //out.println(sela);
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
                    <td><%=rsa.getString("tournament_fee")%></td>
                    <td>
                        <a href="tournamentview.jsp?blockid=<%=rsa.getString("tournament_id")%>" >Block</a>
                        <a href="tournamentview.jsp?delid=<%=rsa.getString("tournament_id")%>" >Delete</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
          </table><b></b>
          <br>
             <table border="2">
                      
                 <tr><ul>BLOCKED LIST</ul></tr>
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Date</td>
                    <td>Time</td>
                    <td>Mode</td>
                    <td>Type</td>
                    <td>Pay Type</td>
                    <td>Action</td>
                </tr>
                
                   <%
        int j=0;
        String sel1="select * from tbl_tournament t inner join tbl_community c on t.community_id=c.community_id inner join tbl_mode m on m.mode_id=t.mode_id inner join tbl_type tp on tp.type_id=t.type_id where t.tournament_status='0' and c.district_id='"+di+"'";
        ResultSet rs1=con.select(sel1);
        while(rs1.next())
        {
            j++;
                   
        
        %>
                   <tr>
                       <td><%out.println(j);%></td>
                   <td><%=rs1.getString("tournament_name")%></td>
                    <td><%=rs1.getString("tournament_date")%></td>
                    <td><%=rs1.getString("tournament_time")%></td>
                    <td><%=rs1.getString("mode_name")%></td>
                    <td><%=rs1.getString("type_name")%></td>
                    <td><%=rs1.getString("tournament_fee")%></td>
                    <td>
                        <a href="tournamentview.jsp?acceptid=<%=rs1.getString("tournament_id")%>" >Unblock</a>
                        <a href="tournamentview.jsp?delid=<%=rs1.getString("tournament_id")%>" >Delete</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                  
        </table>
                  <br>
                   <table border="2">
                       <tr><ul>WAITING LIST</ul></tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Date</td>
                    <td>Time</td>
                    <td>Mode</td>
                    <td>Type</td>
                    <td>Pay Type</td>
                    <td>Action</td>
                </tr>
                   <%
        int k=0;
        String sel5="select * from tbl_tournament t inner join tbl_community c on t.community_id=c.community_id inner join tbl_mode m on m.mode_id=t.mode_id inner join tbl_type tp on tp.type_id=t.type_id where t.tournament_status='1' and c.district_id='"+di+"'";
        //out.println(sela);
        ResultSet rs5=con.select(sel5);
        while(rs5.next())
        {
            k++;
                   
        
        %>
                   <tr>
                       <td><%out.println(k);%></td>
                       <td><%=rs5.getString("tournament_name")%></td>
                    <td><%=rs5.getString("tournament_date")%></td>
                    <td><%=rs5.getString("tournament_time")%></td>
                    <td><%=rs5.getString("mode_name")%></td>
                    <td><%=rs5.getString("type_name")%></td>
                    <td><%=rs5.getString("tournament_fee")%></td>
                    <td>
                        <a href="tournamentview.jsp?acceptid=<%=rs5.getString("tournament_id")%>" >Accept</a>
                        <a href="tournamentview.jsp?delid=<%=rs5.getString("tournament_id")%>" >Delete</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
          </table><b></b>
       </form>
        </div>
        <%@include file="Foot.jsp" %>
    </body>
</html>
