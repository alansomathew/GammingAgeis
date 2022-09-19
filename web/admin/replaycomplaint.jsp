<%-- 
    Document   : replaycomplaint
    Created on : 4 Jan, 2021, 12:49:20 PM
    Author     : alans
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reply Complaint</title>
        <%@include file="Head.jsp" %>
    </head>
    <body>
        <% 
            String feed="",ins="";
        if(request.getParameter("btnsave")!=null)
        { 
            //cid=request.getParameter("txtid");
            feed=request.getParameter("txt_feed");
            ins="update tbl_complaint set complaint_reply='"+request.getParameter("txt_feed")+"' where complaint_id='"+request.getParameter("cid")+"'";
            //out.print(ins);
        if(con.executeCommand(ins))
        {
        %>
            
            <script>alert('Reply Sumbitted sucessfully')</script>
          
        <%
          
        }
        }
               
        %> 
                
  <div id="tab">
        <h1 align="center"><u>REPLY</u></h1>
        
        <form>
            <input type="hidden" value="<%=request.getParameter("replyid")%>" name="cid">
            <table  align="center" border="2">
                <tr>
                
                    <td>Reply:</td><td><textarea name="txt_feed" required="required"></textarea></td>
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
    <%@include file="Foot.jsp" %>
</html>
