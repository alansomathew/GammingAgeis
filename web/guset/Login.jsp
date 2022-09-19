<%-- 
    Document   : Login
    Created on : 1 Dec, 2020, 11:54:17 AM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>-->
        <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
<!--        <link rel="stylesheet" href="assets/css/bulma.css">
    <link rel="stylesheet" href="assets/css/app.css">
-->    <link //rel="stylesheet" href="assets/css/core.css">
<!--    </head>-->
    
<!--    <body>
        <h1 align="center"><u>Login</u></h1>-->
       <% if(request.getParameter("txt_usnme")!=null && request.getParameter("txt_password")!=null)
       {
          String selc="select * from tbl_players where player_uname='"+request.getParameter("txt_usnme")+"' and player_password='"+request.getParameter("txt_password")+"'";
        ResultSet rs1=con.select(selc);
        String sel1="select * from tbl_admin where admin_uname='"+request.getParameter("txt_usnme")+"' and admin_password='"+request.getParameter("txt_password")+"'";
        ResultSet rs2=con.select(sel1);
        String sel2="select * from tbl_subadmin where subadmin_uname='"+request.getParameter("txt_usnme")+"' and subadmin_password='"+request.getParameter("txt_password")+"'";
        ResultSet rs3=con.select(sel2);
         String sel3="select * from tbl_community where community_uname='"+request.getParameter("txt_usnme")+"' and community_password='"+request.getParameter("txt_password")+"' and community_status='1'" ;
        ResultSet rs4=con.select(sel3);
        if(rs1.next())
        {
            session.setAttribute("uid",rs1.getString("player_id"));
            session.setAttribute("uname",rs1.getString("player_name"));
          response.sendRedirect("../Players/index.jsp");
        }
        else if(rs4.next())
        {
            session.setAttribute("cid",rs4.getString("community_id"));
             session.setAttribute("cname",rs4.getString("community_name"));
          response.sendRedirect("../Community/index.html");
        }
        else if(rs3.next())
        {
            session.setAttribute("sid",rs3.getString("subadmin_id"));
            session.setAttribute("sname",rs3.getString("subadmin_name"));
            
          response.sendRedirect("../SubAdmin/index.html");
        }
        else if(rs2.next())
        {
          response.sendRedirect("../admin/index.html");
        }
        else
        {
            %>
         <script>alert('Invalid User')</script>
        <%
        
        }
       }
       
        
        
        %>
<!--        
        <div id="tab">
        <form>
            <table  align="center" >
                <tr>
                    <td>User Name:</td>
                    <td><input type="text"  name="txt_usnme" required="required" autocomplete="off"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text"  name="txt_password" required="required" autocomplete="off"></td>
                </tr>
                <tr align="center">
                    <td colspan="2"  align="center"><input type="submit" name="btnsave">
                        <input type="reset" name="btnreset"></td>
                </tr>
            </table>
        </form>
        </div>
    </body>
    <%--<%@include file="footer.jsp" %>--%>
</html>-->




















<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V1</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
<link rel="icon" type="image/png" href="../temp/login-form-v1/Login_v1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v1/Login_v1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v1/Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v1/Login_v1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v1/Login_v1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v1/Login_v1/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v1/Login_v1/css/util.css">
	<link rel="stylesheet" type="text/css" href="../temp/login-form-v1/Login_v1/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="../temp/login-form-v1/Login_v1/images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form">
					<span class="login100-form-title">
						Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                            <input class="input100" type="text" name="txt_usnme" placeholder="Username" autocomplete="off">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="txt_password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						
                                            Create your Account<br>
                                                        <a class="txt2" href="player_reg.jsp">Player</a> /<a class="txt2" href="Community_reg.jsp"> Community</a>
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="../temp/login-form-v1/Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../temp/login-form-v1/Login_v1/vendor/bootstrap/js/popper.js"></script>
	<script src="../temp/login-form-v1/Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../temp/login-form-v1/Login_v1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../temp/login-form-v1/Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="../temp/login-form-v1/Login_v1/js/main.js"></script>

</body>
</html>