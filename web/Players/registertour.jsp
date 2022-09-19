<%-- 
    Document   : registertour
    Created on : 5 Jan, 2021, 2:12:18 PM
    Author     : alans
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <script src="../JQuery/jQuery.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
<!--         <meta http-equiv="refresh" content="1">-->
        <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <style>
           
            
            
        </style>
       
        <title>JSP Page</title>
    </head>
    <%
    
  String sel,sno,tid,sell,ss="",cno="",Astatus="",Sstatus="",pid="",apid="",id="",pimg="",fee="";
  pid=session.getAttribute("uid").toString();
  sel="select * from tbl_tournament t inner join tbl_type tt on t.type_id=tt.type_id inner join tbl_slot s on tt.type_id=s.type_id where t.tournament_id='"+request.getParameter("regid")+"'";
  ResultSet rs=con.select(sel);
    // out.println(sel);
    String sel5="select * from tbl_applytournament where  tournament_id='"+request.getParameter("regid")+"' and  player_id='"+session.getAttribute("uid")+"'";
             
             ResultSet rs5=con.select(sel5);
             
             if(rs5.next())
             {
               id=rs5.getString("player_id");
               
             }
             
             
             
    %>
    
    <body align='center'>
       
        <input type="hidden" id="plr" value="<%=id %>">
       
        <i class='fas fa-user' style='font-size:50px;color:red; padding: 20px;'></i>Booked Slots 
       <i class='fas fa-user' style='font-size:50px;color:gray;padding: 20px;'></i>Available Slots
      <i class='fas fa-user' style='font-size:50px;color:green;padding: 20px;'></i>Selected Slots
       
      <br><br><br><br><br>
     
  
      <%
      int i=0;
     
      while(rs.next())
      {
          sno=rs.getString("slot_id");
          tid=rs.getString("tournament_id");
          fee=rs.getString("tournament_fee");
        i++;
        
        sell="select * from tbl_applytournament a inner join tbl_players pl on pl.player_id=a.player_id inner join tbl_slot s on a.slot_id=s.slot_id where a.tournament_id='"+tid+"' and s.slot_id='"+sno+"'"; 
       
         ResultSet rsl=con.select(sell);
         if(rsl.next())
         {
           Astatus=rsl.getString("applytournament_status");
           Sstatus=rsl.getString("slot_status"); 
           apid=rsl.getString("player_id"); 
         }
         
         %>
          
         <%
         
         
         if(Astatus.equals("") && Sstatus.equals(""))
         {
        %>
        <i class='fas fa-user' style='font-size:50px;color:gray;padding: 20px;' id="s<%=sno%>" onclick="insert(<%=sno%>,<%=tid%>),cl(<%=sno%>,<%=tid%>)"></i>  
          <%
          
         }
         else if(Astatus.equals("1") && Sstatus.equals("1"))
         {%>
      <i class='fas fa-user' style='font-size:50px;color:red;padding: 20px;' onclick="alert('Already Booked !!!')"></i>

      <%
      Astatus="";
          Sstatus="";
         }
         else 
         {%>
        <i class='fas fa-user' style='font-size:50px;color:green;padding: 20px;' id="s<%=sno%>" onclick="cl(<%=sno%>,<%=tid%>)"></i>
      <%
      Astatus="";
          Sstatus="";
         }
         
     
      
      if(i==10)
      {
          out.println("<br>");
          i=0;
      }
      }
      
      %>
        <%
      String aid="";
      String sel6="select max(applytournament_id) as aid from tbl_applytournament order by applytournament_id desc";
             
             ResultSet rs6=con.select(sel6);
             
             if(rs6.next())
             {
               aid=rs6.getString("aid");  
               
             
             if(fee.equals("Paid"))
               {
      %>
<span><a href='Payement.jsp?aid=<%=rs6.getString("aid")%>'>Register Now</a></span>
<%
               }
else
             {
                 
             %>
             
             <span><a href='registertour.jsp?zid=<%=rs6.getString("aid")%>'>Register Now</a></span>
             
             
             <%
             
             
             }
             }
             
             
            if(request.getParameter("zid")!=null)
             {
                 String sel6z="select max(applytournament_id) as aid from tbl_applytournament order by applytournament_id desc";
             
             ResultSet rs6z=con.select(sel6z);
             
             if(rs6z.next())
             {
                 String updateQry="update tbl_applytournament set applytournament_status='1' where applytournament_id='"+rs6z.getString("aid")+"' ";
                 
                 if(con.executeCommand(updateQry))
                 {
                      %> 
      <script type="text/javascript">
            alert("Registerd Successfully..");
            setTimeout(function(){window.location.href='tournamentlist.jsp'},100);
        </script>
     <%
                 }
             }
             }
             
             
             %>

     
    </body>
     <script>
            function cl(n,bid)
{
	//alert(n);
		if(document.getElementById('s'+n).style.color=="green")
		{
                    
			document.getElementById('s'+n).style.color="gray";
		
			$.ajax({url:"Ajaxdelete.jsp?s="+n+"&t="+bid,
			success: function(result){
                            
			}});
		}
		else{
			document.getElementById('s'+n).style.color="green";
		}
		
		
	

}
function insert(s,t)
{
  //alert(s+'&'+t);
  if(document.getElementById('s'+s).style.color=="gray")
		{
                    if(document.getElementById("plr").value=="")
                    {
  $.ajax({url:"Ajaxinsert.jsp?s="+s+"&t="+t,
			success: function(result){
                           // alert(result);
			}});
                }else
                {
                     alert("Already Selected !!!");
                     document.getElementById('s'+n).style.color="gray";
                }
                }
}
            </script>
            <%@include file="footer.jsp" %>
</html>
