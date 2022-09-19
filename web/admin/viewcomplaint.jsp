<%-- 
    Document   : viewcomplaint
    Created on : 4 Jan, 2021, 12:45:41 PM
    Author     : alans
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint List</title>
        <%@include file="Head.jsp" %>
    </head>
    <body>
        <%
            String sid="";
        String udi=session.getAttribute("sid").toString();
        String selc="select * from tbl_subadmin where subadmin_id='"+sid+"'";
            ResultSet rs9=con.select(selc);
            if(rs9.next())
            {
                sid=rs9.getString("district_id");
            }
        %>
        <div id="tab">
        <h3 align="center"><u> COMMUNITY LIST</u></h3>
        <%
        %>
        <form >
          <table border="2">
              <tr>COMPLAINT LIST</tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Complaint</td>
                    <td>Date</td>
                    <td>Action</td>
                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_complaint c inner join tbl_subadmin p on c.subadmin_id=p.subadmin_id inner join tbl_district pl on pl.district_id=p.district_id where c.player_id='0'";
       //out.println(sela);
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                       <td><%=rsa.getString("subadmin_name")%></td>
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
       </form>
        </div>
    </body>
     <%@include file="Foot.jsp" %>
</html>
