<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
  
    <option>-----Select Place----</option>
         <%
                                  String sel1="select * from tbl_place where district_id='"+request.getParameter("disid")+"'";
                                    ResultSet rs1=con.select(sel1);
                                    while(rs1.next())
                                     {
                                  
                                 %> 
                                 <option value="<%=rs1.getString("place_id")%>"><%=rs1.getString("place_name")%></option>
                                 <%
                         
        }
   %>