<%-- 
    Document   : player_reg
    Created on : 1 Dec, 2020, 12:13:57 PM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@ page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Player Registration</title>
        <script src="../JQuery/jQuery.js" type="text/javascript"></script>
        <script>
            function getplace(did)
{
	//alert(did);
	$.ajax({url:"AjaxPlace.jsp?disid="+did,
	success: function(result){
	$("#ddlplace").html(result);}});
}
        </script>
              <%--<%@include file="head.jsp" %>--%>
    </head>
    <body>
         <div id="tab">
        <!--<h3 align="center"><u> PLAYER REGISTRATION</u></h3>-->
      
               
               
               
                
                
                
            
        </div>
    </body>
    <%--<%@include file="footer.jsp" %>--%>
</html>












<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="../temp/colorlib-regform-15/colorlib-regform-15/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="../temp/colorlib-regform-15/colorlib-regform-15/css/style.css">
</head>
<body>

    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <!--<img src="../temp/colorlib-regform-15/colorlib-regform-15/images/signup-img.jpg" alt="">-->
                </div>
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form" enctype="multipart/form-data" action="UserUploadAction.jsp">
                        <h2>Player registration form</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Name :</label>
                                <input type="text" name="txt_name" id="name" required="required" autocomplete="off"/>
                            </div>
                            <div class="form-group">
                                <label for="player_id">Player Id :</label>
                                <input type="text" name="txt_id" id="player_id" required="required" autocomplete="off" pattern="[0-9+]{10-16}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address">Address :</label>
                            <input type="text" name="txt_address" id="address" required="required" autocomplete="off"/>
                        </div>
                        <div class="form-radio">
                            <label for="gender" class="radio-label">Gender :</label>
                            <div class="form-radio-item">
                                <input type="radio" name="txt_gender" id="male" value="male" required="required">
                                <label for="male">Male</label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="txt_gender" id="female"  value="male" required="required">
                                <label for="female">Female</label>
                                <span class="check"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">District :</label>
                                <div class="form-select">
                                    <select  id="did" name="ddldistrict" onchange="getplace(this.value)">
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
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="city">City :</label>
                                <div class="form-select">
                                    <select name="ddlplace" id="ddlplace">
                                        
                            <option>
                               ---- Select----
                            </option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                        </div>
                                    <div class="form-group" >
                            <label for="birth_date">DOB :</label>
                            <input type="date" name="txt_date" id="date" placeholder="DD/MM/YYYY" required="required" onchange="age();">
                        </div>
                        <div class="form-group" i>
                            <label for="pincode">Contact :</label>
                            <input type="text" name="txt_phno" id="pincode" required="required" autocomplete="off" pattern="[0-9+]{10,13}">
                        </div>
                        <div class="form-group">
                            <label for="course">Player Type :</label>
                            <div class="form-select">
                                <select name="ddlplrtype" id="course">
                                     <option>
                               ---- Select----
                            </option>
                                  <%
                                  String sel2="select * from tbl_playertype";
                                    ResultSet rs2=con.select(sel2);
                                    while(rs2.next())
                                     {
                                  
                                 %> 
                                 <option value="<%=rs2.getString("playertype_id")%>"><%=rs2.getString("player_type")%></option>
                                 <%
                         
        }
                  %> 
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                           
                                
                                
                        <div class="form-group">
                            <label for="email">Email ID :</label>
                            <input type="email" name="txt_email" id="email" required="required" autocomplete="off"/>
                        </div>
                        
                         <div class="form-group">
                            <label for="email">Ussername :</label>
                            <input type="text" name="txt_usnme" id="email" required="required" autocomplete="off" />
                        </div>
                        
                         <div class="form-group">
                            <label for="email">Password :</label>
                            <input type="password" name="txt_pass" id="email" required="required" autocomplete="off" pattern="[a-zA-Z0-9]{6-9}"/>
                        </div>
                        <div class="form-submit">
                            <input type="submit" value="Reset All" class="submit" name="btnreset" id="reset" />
                            <input type="submit" value="Submit Form" class="submit" name="btnsave" id="submit" />
                        </div>
                    </form>
                                <div class="form-group">
                        
                                    <label><a href="Login.jsp" class="signup-image-link">I am already member</a></label>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="../temp/colorlib-regform-15/colorlib-regform-15/vendor/jquery/jquery.min.js"></script>
    <script src="../temp/colorlib-regform-15/colorlib-regform-15/js/main.js"></script>
    
    
    <script>
                                    
     function age() { 
            var date =  
                document.getElementById('date').value; 
              
            var inpDate = new Date(date); 
            var currDate = new Date(); 
              
            if(inpDate.setHours(0, 0, 0, 0) >=  
                    currDate.setHours(0, 0, 0, 0)) 
            { 
                alert("Invalid date");
                setTimeout(function(){window.location.href='player_reg.jsp'},100);
            }  
           
            
                 var dob = document.getElementById('date').value; 
    //calculate month difference from current date in time  
    var month_diff = Date.now() - dob.getTime();  
      
    //convert the calculated difference in date format  
    var age_dt = new Date(month_diff);   
      
    //extract year from date      
    var year = age_dt.getUTCFullYear();  
      
    //now calculate the age of the user  
    var age = Math.abs(year - 1970);  
      
    //display the calculated age  
                   if(age < 16)
                   {
                        alert("Age is less than 16!");
                setTimeout(function(){window.location.href='player_reg.jsp'},100);
                    
                   }
            
            
        } 
    
    
    </script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
