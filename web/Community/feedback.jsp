<%-- 
    Document   : feedback
    Created on : 4 Jan, 2021, 11:19:00 AM
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
        <title>Feedback</title>
         <link rel="stylesheet" href="../form.css">
    </head>
    <body>
         <div id="tab">
        <% 
            String feed="",ins="";
        if(request.getParameter("btnsave")!=null)
        { 
            //cid=request.getParameter("txtid");
            feed=request.getParameter("txt_feed");
            ins="insert into tbl_feedback(feedback_description,feedback_date) values('"+feed+"',curdate())";
            //out.print(ins);
        if(con.executeCommand(ins))
        {
        %>
            
            <script>alert('Feedback Sumbitted sucessfully')</script>
          
        <%
          
        }
        }
               
        %> 
                
  
        <h1 align="center"><u>FEEDBACK</u></h1>
        
        <form>
            <table  align="center" border="2">
                <tr>
                    <td>Feedback:</td><td><textarea name="txt_feed" required="required"></textarea></td>
                </tr>
                
                <tr align="center">
                    <td colspan="2"  align="center"><input type="submit" name="btnsave">
                        <input type="reset" name="btnreset">
                    </td>
                </tr>
            </table>
        </form>
         </div>
    </body>
    <%@include file="footer.jsp" %>
</html>
