<%-- 
    Document   : Ajaxdelete
    Created on : Jan 5, 2021, 7:21:10 PM
    Author     : PSST
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String ins="delete from tbl_applytournament where tournament_id='"+request.getParameter("t")+"' and player_id='"+session.getAttribute("uid")+"'";
             con.executeCommand(ins);
             out.println("<script>alert('"+ins+"');</script>");
             
                  %> 
                  
    </body>
</html>
