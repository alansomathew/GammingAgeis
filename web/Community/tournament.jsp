<%-- 
    Document   : tournament
    Created on : 21 Dec, 2020, 2:40:49 PM
    Author     : alanso
--%>
<%-- 
    Document   : subadmin
    Created on : 14 Dec, 2020, 12:38:12 PM
    Author     : alanso
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
              
               <script>
function ShowHideDiv() 
    {
        var chkYes = document.getElementById("chkYes");
        var dvtext1 = document.getElementById("dvtext1");
        var dvtext2 = document.getElementById("dvtext2");
        
        
         
        dvtext1.style.display = chkYes.checked ? "block" : "none";
        dvtext2.style.display = chkYes.checked ? "block" : "none";
      
        
    }
</script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tournament</title>
         <link rel="stylesheet" href="../form.css">
    </head>
    <body>
         <div id="tab">
        <h3 align="center"><u> TOURNAMENT REGISTRATION</u></h3>
         <%
        String touname="",ins="",dt="",touty="",ddty="",tout="",toudes="",toulk="",toumd="",toupy="",cid="",tfee="";
        //String uname=session.getAttribute("cid").toString();
        if(request.getParameter("btnsave")!=null)
        { 
            touname=request.getParameter("txt_name");
            dt=request.getParameter("txt_date");
            tout=request.getParameter("txt_time");
            toumd=request.getParameter("txt_mode");
            ddty=request.getParameter("ddltype");
            toudes=request.getParameter("txt_des");
            toupy=request.getParameter("txt_ptype");
            toulk=request.getParameter("txt_link");
            tfee=request.getParameter("tfees");
            String uname=session.getAttribute("cid").toString();
       
          ins="insert into tbl_tournament(tournament_name,tournament_discription,tournament_date,tournament_time,mode_id,type_id,tournament_fee,tournament_link,community_id,tournament_fees) values('"+touname+"','"+toudes+"','"+dt+"','"+tout+"','"+toumd+"','"+ddty+"','"+toupy+"','"+toulk+"','"+uname+"','"+tfee+"')";
          //out.println(ins);
          if(con.executeCommand(ins))
        {
            %>
            
            <script>alert('Value inserted sucessfully')</script>
          
            <%
          
        }
       
        
         
        }
        %>
        <form method="post">
            <table align="center">
                <tr>  
                    
                    <td>Tournament Name:</td>
                    <td><input type="text" name="txt_name"> <input type="hidden" name="txtid" required="required" autocomplete="off"></td>
                    </tr>
                
                <tr>
                    <td>Date:</td>
                    <td><input type="date" name="txt_date" id="date" required="required" autocomplete="off" onchange="age();"></td>
                </tr>
                
                <tr>
                    <td>Time:</td>
                    <td><input type="time" name="txt_time" id="time" required="required" autocomplete="off"></td>
                </tr>
                
                <tr>
                <td>Mode:</td>
                    <td>
                        <select name="txt_mode">
                            <option>
                               ---- Select----
                            </option>
                                  <%
                                  String sel="select * from tbl_mode";
                                    ResultSet rs=con.select(sel);
                                    while(rs.next())
                                     {
                                  
                                 %> 
                                 <option value="<%=rs.getString("mode_id")%>"><%=rs.getString("mode_name")%></option>
                                 <%
                         
        }
                  %> 
                        </select></td>
                </tr>
                
                <tr>
                <tr>
                    <td>Description:</td><td><textarea name="txt_des" required="required" ></textarea></td>
                </tr>
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
                

            </tr>
            
            <tr>
                 <td>Pay Type:</td>
                 <td>
                     <label for="chkYes">
                    <input type="radio" id="chkYes" name="txt_ptype" value="Paid" onclick="ShowHideDiv()" />Paid
                    </label>

                    <label for="chkNo">
                    <input type="radio" id="chkNo" name="txt_ptype" value="Free" onclick="ShowHideDiv()" />Free
                    </label>
                 </td>
            </tr>
            <tr>
                <td><div id="dvtext1" class="dv" style="display: none">Registration Fee:</div></td>
                     
                    
                <td><div id="dvtext2" class="dv" style="display: none">
                        <input type="text" id="txtBox" name="tfees" /></div>
                    </td>
                  
                    
                </tr>

                <tr>
                    <td>Link:</td>
                    <td><input type="text" name="txt_link" required="required" autocomplete="off"></td>
                </tr>
                
                <tr>
                    <td colspan="2"  align="center"><input type="submit" name="btnsave">
                        <input type="reset" name="btnreset"></td>
                </tr>
            </table>
       </form>
         </div>
          <br><br><br> 
          
          
          
          <script>
          function age() { 
            var date =  
                document.getElementById('date').value; 
              
            var inpDate = new Date(date); 
            var currDate = new Date(); 
              
            if(inpDate.setHours(0, 0, 0, 0) <=  
                    currDate.setHours(0, 0, 0, 0)) 
            { 
                alert("Invalid date");
                setTimeout(function(){window.location.href='tournament.jsp'},100);
            }  
           
//            
//                 var dob = document.getElementById('date').value; 
//    //calculate month difference from current date in time  
//    var month_diff = Date.now() - dob.getTime();  
//      
//    //convert the calculated difference in date format  
//    var age_dt = new Date(month_diff);   
//      
//    //extract year from date      
//    var year = age_dt.getUTCFullYear();  
//      
//    //now calculate the age of the user  
//    var age = Math.abs(year - 1970);  
//      
//    //display the calculated age  
//                   if(age < 16)
//                   {
//                        alert("Age is less than 16!");
//                setTimeout(function(){window.location.href='player_reg.jsp'},100);
//                    
//                   }
//            
//            
        } 
    </script>
    <br>
    </body>
    <%@include file="footer.jsp" %>
</html>

