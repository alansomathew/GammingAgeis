<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
      <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DISTRICT REGISTRATION</title>
      <%@include file="Head.jsp" %>
    </head>
    <body>
    <%
        String dstname="",ins="",c="",cid="",edname="";
        if(request.getParameter("btnsave")!=null)
        { 
             cid=request.getParameter("txtid");
              dstname=request.getParameter("txt_name");
            if(cid.equals(""))
            {
                ins="insert into tbl_district(district_name) values('"+dstname+"')";
        if(con.executeCommand(ins))
        {
            %>
            
            <script>alert('Value inserted sucessfully')</script>
          
            <%
          
        }
               
               
                
            }
        else
            {        
           String upd="update tbl_district set district_name='"+dstname+"' where district_id='"+cid+"'";
                if(con.executeCommand(upd))
        {
            %><script>alert('Value updated sucessfully')</script><%
            
          
        }
           
            }
        }
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_district where district_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("district.jsp");
        }
        if(request.getParameter("editid")!=null)
        {
            String selc="select * from tbl_district where district_id=('"+request.getParameter("editid")+"')";
            ResultSet rs1=con.select(selc);
            if(rs1.next())
            {
                cid=rs1.getString("district_id");
                c=rs1.getString("district_name");
            }
        }
            %>
            
            <div id="tab">
            <h3 align="center"><u>DISTRICT REGISTRATION</u></h3>
        <form>
            <table align="center">
                <tr>
                    <td>District Name:</td>
                    <td><input type="hidden" name="txtid" value="<%= cid %>"><input type="text" name="txt_name" value="<%= c %>" required="required" autocomplete="off"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btnsave">
                        <input type="reset" name="btnreset"></td>
                </tr>
            </table>
                    
            <table>
                <tr>
                    <td>Sl.No</td>
                    <td>Name</td>
                    <td>Action</td>
                </tr>
                
                   <%
        int i=0;
        String sel="select * from tbl_district";
        ResultSet rs=con.select(sel);
        while(rs.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                    <td><%=rs.getString("district_name")%></td>
                    <td>
                        <a href="district.jsp?delid=<%=rs.getString("district_id")%>" >Delete</a>
                        <a href="district.jsp?editid=<%=rs.getString("district_id")%>" >Edit</a>
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