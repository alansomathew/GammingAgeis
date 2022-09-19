<%-- 
    Document   : Place
    Created on : 1 Dec, 2020, 10:49:44 AM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PLACE REGISTRATION</title>
        <%@include file="Head.jsp" %>
    </head>
    <body>
        <h3 align="center"><u>Add Your Location here</u></h3>
        <%
        String disname="",ins="",plcname="";
        if(request.getParameter("btnsave")!=null)
        { 
            disname=request.getParameter("ddldistrict");
            plcname=request.getParameter("txtPlace");
            ins="insert into tbl_place(district_id,place_name) values('"+disname+"','"+plcname+"')";
        if(con.executeCommand(ins))
        {
            %>
            
        <script>alert('Value inserted sucessfully');</script>
          
            <%
          
        }
            }
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_place where place_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("place.jsp");
        }
        %>
        <div id="tab">
        <form>
            <table align="center">
                <tr>
                    <td>
                        District:
                    </td>
                    <td>
                        <select name="ddldistrict">
                            <option>
                               ---- Select----
                            </option>
                                  <%
                                  String sel="select * from tbl_district";
                                    ResultSet rs=con.select(sel);
                                    while(rs.next())
                                     {
                                  
                                 %> 
                                 <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>
                                 <%
                         
        }
                  %> 
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Place:</td>
                    <td><input type="text" name="txtPlace" required="required" autocomplete="off"></td>
            </tr>
            <tr>
                    <td colspan="2"  align="center"><input type="submit" name="btnsave">
                        <input type="reset" name="btnreset"></td>
                </tr>
        </table>
</form>
         <table>
                             <tr>
                    <td>Sl.No</td>
                    <td>District</td>
                    <td>Place</td>
                    <td>Action</td>
                </tr>    
                  
                               <%
        int i=0;
        String selc="select * from tbl_place s inner join tbl_district c on s.district_id=c.district_id";
        ResultSet rs1=con.select(selc);
        
        while(rs1.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                    <td><%=rs1.getString("district_name")%></td>
                    <td><%=rs1.getString("place_name")%></td>
                    <td>
                        <a href="place.jsp?delid=<%=rs1.getString("place_id")%>" >Delete</a>
                    </td>
                   </tr> 
                    <%
                         
        }
                  %> 
                    
                
                        </table>  
        </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>