<%-- 
    Document   : viewfeedback
    Created on : 4 Jan, 2021, 12:22:46 PM
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
        <div id="tab">
        <h3 align="center"><u> FEEDBACK LIST</u></h3>
        <%
        %>
        <form >
          <table border="2">
              <tr>FEEDBACK LIST</tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Feedback</td>
                    <td>Date</td>
                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_feedback";
       //out.println(sela);
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                       <td><%=rsa.getString("feedback_description")%></td>
                    <td><%=rsa.getString("feedback_date")%></td>
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
