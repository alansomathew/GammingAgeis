<%-- 
    Document   : slot
    Created on : 5 Jan, 2021, 11:51:21 AM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
      <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SLOT REGISTRATION</title>
        <%@include file="Head.jsp" %>
    </head>
    <body>
    <%
        String plytype="",ins="",c="",cid="",edname="",ddty="";
        if(request.getParameter("btnsave")!=null)
        { 
             cid=request.getParameter("txtid");
             ddty=request.getParameter("ddltype");
              plytype=request.getParameter("txt_name");
      
                ins="insert into tbl_slot(slot_no,type_id) values('"+plytype+"','"+ddty+"')";
                //out.print(ins);
        if(con.executeCommand(ins))
        {
          
        }
               
               
                
            }
       
            %>
            
        <div id="tab">
            <h3 align="center"><u>SLOT REGISTRATION</u></h3>
        <form>
            <table align="center">
                <tr>
                <td>Type:</td>
                    <td>
                        <select name="ddltype">
                            <option>
                               ---- Select----
                            </option>
                                  <%
                                  String sel1="select * from tbl_type";
                                    ResultSet rs1=con.select(sel1);
                                    while(rs1.next())
                                     {
                                  
                                 %> 
                                 <option value="<%=rs1.getString("type_id")%>"><%=rs1.getString("type_name")%></option>
                                 <%
                         
        }
                  %> 
                        </select></td>
                </tr>
                 <tr>
                    <td>Slot:</td>
                    <td><input type="text" name="txt_name" value="<%= c %>" required="required" autocomplete="off"></td>
            </tr>
                <tr>
                    <td colspan="4"  align="center"><input type="submit" name="btnsave">
                        <input type="reset" name="btnreset"></td>
                </tr>
            </table>
                    
            <table>
                <tr>
                    <td>Sl.No</td>
                    <td>Type</td>
                    <td>Slot</td>
                </tr>
                
                   <%
        int i=0;
        String sel="select * from tbl_slot s inner join tbl_type t on s.type_id=t.type_id";
        ResultSet rs=con.select(sel);
        while(rs.next())
        {
            i++;
                   
        
        %>
                   <tr>
                       <td><%out.println(i);%></td>
                       <td><%=rs.getString("type_name")%></td>
                    <td><%=rs.getString("slot_no")%></td>
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
