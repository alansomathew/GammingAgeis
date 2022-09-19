<%-- 
    Document   : complaint
    Created on : 4 Jan, 2021, 12:39:43 PM
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
        <title>Feedback</title>
    </head>
    <body>
        <div id="tab">
        <% 
            String udi=session.getAttribute("sid").toString();
            String feed="",ins="",cmpdt="";
        if(request.getParameter("btnsave")!=null)
        { 
            //cid=request.getParameter("txtid");
            feed=request.getParameter("txt_feed");
            ins="insert into tbl_complaint(complaint_description,complaint_date,subadmin_id) values('"+feed+"',curdate(),'"+udi+"')";
            //out.print(ins);
        if(con.executeCommand(ins))
        {
        %>
            
            <script>alert('Complaint Sumbitted sucessfully')</script>
          
        <%
          
        }
        }
               
        %> 
                
  
        <h1 align="center"><u>COMPLAINT</u></h1>
        
        <form>
            <table  align="center" border="2">
                <tr>
                    <td>Complaint:</td><td><textarea name="txt_feed"  required="required"></textarea></td>
                </tr>
                
                <tr align="center">
                    <td colspan="2"  align="center"><input type="submit" name="btnsave">
                        <input type="reset" name="btnreset">
                    </td>
                </tr>
            </table>
            <table border="2">
              <tr>COMPLAINT LIST</tr>            
                <tr>
                    <td>Sl.No</td>
                    
                    <td>Complaint</td>
                    <td>Date</td>
                    <td>Reply</td>
                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_complaint where subadmin_id='"+udi+"'";
       //out.println(sela);
        ResultSet rsa=con.select(sela);
        while(rsa.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                       <td><%=rsa.getString("complaint_description")%></td>
                    <td><%=rsa.getString("complaint_date")%></td>
                    <td><%=rsa.getString("complaint_reply")%></td>
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
