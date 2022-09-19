<%-- 
    Document   : ViewProfile
    Created on : 4 Dec, 2020, 6:09:04 PM
    Author     : alanso
--%>


<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>-->
        <%//@include file="head.jsp" %>
        <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>-->
<!--         <link rel="stylesheet" href="../form.css">-->
<!--    </head>
    <body>-->
        
<!--         <div id="tab">
        <h1 align="center">My Profile</h1>
        
            <table align="center" border="2">
                <tr>
                    <td>  <img  height="200" width="200"/></td></tr>
                <tr> <td> <h2></h2></td>
                </tr>
                <tr>
                   
                    <td><b>></b></td><br><br>
                </tr>
                <tr>
                    <td><b></b></td><br><br>
                </tr>
                <tr>
                    <td><b></b></td><br><br>
                    
                </tr>
            </table>
         </div>
                <%//@include file="footer.jsp" %>
    </body>
</html>-->


 <% 
            String udi=session.getAttribute("uid").toString();
            
            %>
             <%
                     String sel="select * from tbl_players where player_id='"+udi+"'";
                     //out.println(sel);
                     ResultSet rs=con.select(sel);
                     if(rs.next())
                     {
                    %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V12</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../temp/login-form-v12/Login_v12/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v12/Login_v12/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v12/Login_v12/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v12/Login_v12/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v12/Login_v12/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v12/Login_v12/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v12/Login_v12/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v12/Login_v12/css/util.css">
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v12/Login_v12/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('../temp/login-form-v12/Login_v12/images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				<form class="login100-form validate-form">
					

					<span class="login100-form-title p-t-20 p-b-45">
						<%= rs.getString("player_name") %>
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						<input class="input100" type="text" name="username" value="<%= rs.getString("player_address") %>" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-address-book"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
                                            <input class="input100" type="text" value="<%= rs.getString("player_contact") %>" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-phone"></i>
						</span>
					</div>
                                                <div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
                                            <input class="input100" type="text" value="<%= rs.getString("player_email") %>" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-mail-forward"></i>
						</span>
					</div>

<!--					<div class="container-login100-form-btn p-t-10">
						<button class="login100-form-btn">
							Login
						</button>
					</div>-->

					<div class="text-center w-full p-t-25 p-b-230">
						<a href="index.jsp" class="txt1">
							HomePage
						</a>
					</div><!--

					<div class="text-center w-full">
						<a class="txt1" href="#">
							Create new account
							<i class="fa fa-long-arrow-right"></i>						
						</a>-->
					</div>
				</form>
			</div>
                                                 <% 
                     }
                       %>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
<script src="../temp/login-form-v12/Login_v12/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../temp/login-form-v12/Login_v12/vendor/bootstrap/js/popper.js"></script>
	<script src="../temp/login-form-v12/Login_v12/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../temp/login-form-v12/Login_v12/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../temp/login-form-v12/Login_v12/js/main.js"></script>

</body>
</html>