<%-- 
    Document   : Communitylist
    Created on : 15 Dec, 2020, 12:24:42 PM
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
        <title>Players List</title>
    </head>
    <body>
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
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_community where community_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("Communitylist.jsp");
        }
        if(request.getParameter("acceptid")!=null)
        {
            String accpt="update tbl_community set community_status='1' where community_id=('"+request.getParameter("acceptid")+"')";
            con.executeCommand(accpt);
            response.sendRedirect("Communitylist.jsp");
        }
        if(request.getParameter("blockid")!=null)
        {
            String blk="update tbl_community set community_status='0'where community_id=('"+request.getParameter("blockid")+"')";
            con.executeCommand(blk);
            response.sendRedirect("Communitylist.jsp");
        }
        %>
        <div id="tab">
        <form >
          <table border="2">
              <tr><ul>Accepted LIST</ul></tr>            
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Phone Number</td>
                    <td>Mail</td>
                    <td>Action</td>
                </tr>
                   <%
        int i=0;
        String sela="select * from tbl_community where community_status='1' and district_id='"+di+"'";
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
                        <a href="Communitylist.jsp?blockid=<%=rsa.getString("community_id")%>" >Block</a>
                        <a href="Communitylist.jsp?delid=<%=rsa.getString("community_id")%>" >Delete</a>
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
                    <td>Phone Number</td>
                    <td>Mail</td>
                    <td>Action</td>
                </tr>
                
                   <%
        int j=0;
        String sel1="select * from tbl_community where community_status='0'and district_id='"+di+"'";
        ResultSet rs1=con.select(sel1);
        while(rs1.next())
        {
            j++;
                   
        
        %>
                   <tr>
                       <td><%out.println(j);%></td>
                    <td><%=rs1.getString("community_name")%></td>
                    <td><%=rs1.getString("community_contact")%></td>
                    <td><%=rs1.getString("community_email")%></td>
                    <td>
                        <a href="Communitylist.jsp?acceptid=<%=rs1.getString("community_id")%>" >Accept</a>
                        <a href="Communitylist.jsp?delid=<%=rs1.getString("community_id")%>" >Delete</a>
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
