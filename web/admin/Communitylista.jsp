<%-- 
    Document   : Communitylista
    Created on : 21 Dec, 2020, 11:34:46 AM
    Author     : alanso
--%>    

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Players List</title>
        <%@include file="Head.jsp" %>
    </head>
    <body>
        <h3 align="center"><u> COMMUNITY LIST</u></h3>
        <%
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_community where community_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("Communitylist.jsp");
        }
        %>
        <div id="tab">
        <form >
          <table border="2">
              <tr>Accepted LIST</tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Phone Number</td>
                    <td>Mail</td>
                    <td>Action</td>
                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_community where community_status='1'";
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                       <td><%=rsa.getString("community_name")%></td>
                    <td><%=rsa.getString("community_contact")%></td>
                    <td><%=rsa.getString("community_email")%></td>
                    <td>
                        <a href="Communitylist.jsp?delid=<%=rsa.getString("community_id")%>" >Delete</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
          </table><b></b>
       </form>
        </div>
    
    </body>
    <%@include file="Foot.jsp" %>
</html>
