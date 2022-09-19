<%-- 
    Document   : Community_reg
    Created on : 15 Dec, 2020, 11:38:58 AM
    Author     : alans0
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%--<%@include file="head.jsp" %>--%>
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<title>Player Registration</title>-->
        <script src="../JQuery/jQuery.js" type="text/javascript"></script>
        <script>
            function getplace(did)
{
	//alert(a);
	$.ajax({url:"AjaxPlace.jsp?disid="+did,
	success: function(result){
	$("#ddlplace").html(result);}});
}
        </script>
    </head>
    <body>
<!--        <div id="tab">-->
        
<!--       <form method="post" enctype="multipart/form-data" action="CommunityUploadAction.jsp">
            <table align="center" border="2" cellpading="10">-->
<!--                <tr>
                    <td>Community Name:</td><td><input type="text" name="txt_name" required="required" autocomplete="off"></td>
                </tr>
                <tr>
                    <td>Phone Number:</td><td><input type="text" name="txt_phno" required="required" autocomplete="off" pattern="[0-9+]{10,13}"></td>
                </tr>
                <tr>
                    <td>Email:</td><td><input type="email" name="txt_email" required="required" autocomplete="off"></td>
                </tr>
                <tr>
                    <td>Logo:</td><td><input type="file" name="txt_logo" required="required"></td>
                </tr>
                <tr>
                    <td>License:</td><td><input type="file" name="txt_file" required="required"></td>
                </tr>
                <tr>
                <td>District:</td>
                    <td>
                        <select name="ddldistrict" onchange="getplace(this.value)">
                            <option>
                               ---- Select----
                            
                        </select></td>
                </tr>
                <tr>
                    <td>username:</td><td><input type="text" name="txt_usnme" required="required" autocomplete="off"></td>
                </tr>
                <tr>
                    <td>password:</td><td><input type="password" name="txt_pass" required="required" autocomplete="off" pattern="[a-zA-Z0-9]{6-9}"></td>
                </tr>
                <tr>
                    <td colspan="2"  align="center"><input type="submit" name="btnsave">
                        <input type="reset" name="btnreset"></td>
                </tr>
            </table>
       </form>
        </div>-->
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
                    
                </div>
                <div class="signup-form">
                    <div id="tab">
                    <form method="POST" class="register-form" id="register-form" enctype="multipart/form-data" action="CommunityUploadAction.jsp">
                        <h2>Community registration form</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Name :</label>
                                <input type="text" name="txt_name" id="name" required="required" autocomplete="off"/>
                            </div>
                            <div class="form-group">
                                <label for="father_name">Contact :</label>
                                <input type="text" name="txt_phno" id="father_name" required="required" autocomplete="off" pattern="[0-9+]{10,13}"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email">Email ID :</label>
                            <input type="email" name="txt_email" id="email" required="required" autocomplete="off" />
                        </div>
                        <div class="form-group">
                            <label for="address">Logo :</label>
                            <input type="file" name="txt_logo" id="address" required="required"/>
                        </div>
                        
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">District :</label>
                                <div class="form-select">
                                    <select  id="state" name="ddldistrict" onchange="getplace(this.value)">
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
                           
                        </div>
                        
                        <div class="form-group">
                            <label for="pincode">Liscence :</label>
                            <input type="file" name="txt_file" id="pincode" required="required">
                        </div>
                                    
                                    <div class="form-group">
                            <label for="pincode">username :</label>
                            <input type="text" name="txt_usnme" id="pincode" required="required" autocomplete="off">
                        </div>
                                    
                                    <div class="form-group">
                            <label for="pincode">Password :</label>
                            <input type="text" name="txt_pass" id="pincode"  required="required" autocomplete="off" pattern="[a-zA-Z0-9]{6-9}">
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

    </div>

    <!-- JS -->
    <script src="../temp/colorlib-regform-15/colorlib-regform-15/vendor/jquery/jquery.min.js"></script>
    <script src="../temp/colorlib-regform-15/colorlib-regform-15/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>

