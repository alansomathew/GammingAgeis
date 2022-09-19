<%-- 
    Document   : Ajaxinsert
    Created on : Jan 5, 2021, 4:46:11 PM
    Author     : PSST
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
             String sel="",id="";
             sel="select * from tbl_applytournament where player_id='"+session.getAttribute("uid")+"' and tournament_id='"+request.getParameter("t")+"'";
             
             ResultSet rs=con.select(sel);
             
             if(rs.next())
             {
               id=rs.getString("player_id");  
             }
             
             if(id.equals(""))
             {
             String ins="insert into tbl_applytournament(tournament_id,player_id,slot_id,slot_status)values('"+request.getParameter("t")+"','"+session.getAttribute("uid")+"','"+request.getParameter("s")+"','1')";
             con.executeCommand(ins);
            
             }
             
             
             
                  %> 