<%-- 
    Document   : playerlist
    Created on : 7 Dec, 2020, 2:58:51 PM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="../JQuery/jQuery.js" type="text/javascript"></script>
        <script>
            function getplayer(did)
{
	//alert(a);
	$.ajax({url:"AjaxPlayer.jsp?disid="+did,
	success: function(result){
          //  alert(result)
	$("#ddlplace").html(result);}});
}
        </script>
        <title>Players List</title>
        <%@include file="Head.jsp" %>
    </head>
    <body>
        <%
        String ddldistrict="";
        %>
        <h3 align="center"><u> PLAYERS LIST</u></h3>
        <%
        if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_players where player_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("playerlist.jsp");
        }
        %>
        <div id="tab">
        <form >
            
          <table border="2">
              <tr>
                <td>District:</td>
                    <td>
                        <select name="ddldistrict" onchange="getplayer(this.value)">
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
                        </select></td>
                </tr>
          </table>
        
                        <div id="ddlplace">
                        </div>
                        <b></b>
       </form>
                        </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>
