<%-- 
    Document   : EditProfile
    Created on : 4 Dec, 2020, 6:19:31 PM
    Author     : alanso
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%--<%@include file="head.jsp" %>--%>
        <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<title>Edit profile</title>-->
         <!--<link rel="stylesheet" href="../form.css">-->
    </head>
    <body>
<!--         <div id="tab">-->
    <%
         String editid=session.getAttribute("uid").toString();
        String nme="",num="",adres="",mail="",gid="",gtype="",pti="";
         String selc="select * from tbl_players p inner join tbl_playertype pt on p.playertype_id=pt.playertype_id where player_id='"+ editid+"'";
            ResultSet rs1=con.select(selc);
            if(rs1.next())
            {
                nme=rs1.getString("player_name");
                num= rs1.getString("player_contact");
                adres=rs1.getString("player_address");
                mail= rs1.getString("player_email");
                gid= rs1.getString("game_id");
                pti=rs1.getString("playertype_id");
            
                
            }
        if(request.getParameter("btnsave")!=null)
        {
         String upd="update tbl_players set player_name='"+request.getParameter("txtname")+"',player_contact='"+request.getParameter("txtphno")+"',player_address='"+request.getParameter("txtaddress")+"',player_email='"+request.getParameter("txtmail")+"',game_id='"+request.getParameter("txt_id")+"',playertype_id='"+request.getParameter("ddlplrtype")+"' where player_id='"+editid+"'";
        out.println(upd);
         if(con.executeCommand(upd))
        {
            %><script>alert('Value updated sucessfully')</script><%
            response.sendRedirect("index.jsp");
          
        }
        }
         %>
<!--        <h1>Edit Profile here</h1>
        <form>
             <table align="center" cellpading="10">
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="txtname" value="" required="required" autocomplete="off"></td>
                </tr>
                <tr>
                    <td>Phone NO.:</td>
                    <td><input type="text" name="txtphno"  value="" required="required" autocomplete="off" pattern="[0-9+]{10,13}"></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><textarea name="txtaddress" rows="5" required="required"> </textarea></td>
                </tr>
                <tr>
                    <td>Email-ID:</td>
                    <td><input type="email" name="txtmail" value=""></td>
                </tr>
                <tr>
                    <td>Player Id:</td>
                    <td><input type="number" name="txt_id" value="" required="required" ></td>
                </tr>
               <tr>
                <td>Player Type:</td>
                    <td>
                        <select name="ddlplrtype">
                            <option>
                               ---- Select----
                            
                        </select></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="btnsave" value="UPDATE">
                        <input type="reset" name="btnreset"></td>
                </tr>
            </table>
      </form>
         </div>-->
                        <%--<%@include file="footer.jsp" %>--%>
    </body>
</html>














<!--<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		 MATERIAL DESIGN ICONIC FONT 
		<link rel="stylesheet" href="../temp/colorlib-regform-17/colorlib-regform-17/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		 STYLE CSS 
		<link rel="stylesheet" href="../temp/colorlib-regform-17/colorlib-regform-17/css/style.css">
	</head>

	<body>

		<div class="wrapper" style="background-image: url('images/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
                                    <img src="../temp/colorlib-regform-17/colorlib-regform-17/images/registration-form-1 (2).jpg" width="405" height="402"alt="">
				</div>
				<form action="">
					<h3>Update Here</h3>
					<div class="form-group">
						<input type="text" placeholder="First Name" class="form-control" name="txtname" value="<%=nme%>" required="required" autocomplete="off">
						<input type="text" placeholder="Contact" class="form-control" name="txtphno"  value="<%=num%>" required="required" autocomplete="off" pattern="[0-9+]{10,13}">
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Address" class="form-control" name="txtaddress"  value="<%=adres%>" required="required" autocomplete="off">
						<i class="zmdi zmdi-account"></i>
					</div>
					<div class="form-wrapper">
                                            <input type="text" placeholder="Email Address" class="form-control" name="txtmail" value="<%=mail%>" required="required" autocomplete="off">
						<i class="zmdi zmdi-email"></i>
					</div>
					<div class="form-wrapper">
						<select name="ddlplrtype" id="" class="form-control" placeholder="PlayerType">
							
							<option>
                               ---- Select----
                            </option>
                                  
						</select>
						<i class="zmdi zmdi-caret-down" style="font-size: 17px"></i>
					</div>
					<div class="form-wrapper">
						<input type="number" placeholder="Player Id" class="form-control" name="txt_id" value="<%= gid%>" required="required" pattern="[0-9+]{12-16}" >
						<i class="zmdi zmdi-lock"></i>
					</div>
                                                
					<div class="form-group">
						<input type="submit" name="btnsave" value="UPDATE">
                        <input type="reset" name="btnreset">
						<i class="zmdi zmdi-open-in-browser"></i>
					</div>
                                                <br>
                                                <br>
                                                <br>
                                                
                                                <div class="form-wrapper">
                                                    <a href="index.jsp">Don't Change</a>
						
					</div>
					
					
				</form>
			</div>
		</div>
		
	</body> This templates was made by Colorlib (https://colorlib.com) 
</html>-->












<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Gaming Aegis</title>

    <!-- Icons font CSS-->
    <link href="../temp/colorlib-regform-3/colorlib-regform-3/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="../temp/colorlib-regform-3/colorlib-regform-3/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="../temp/colorlib-regform-3/colorlib-regform-3/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="../temp/colorlib-regform-3/colorlib-regform-3/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../temp/colorlib-regform-3/colorlib-regform-3/css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Update Here</h2>
                    <form method="POST">
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Name" name="txtname" value="<%=nme%>" required="required" autocomplete="off">
                        </div>
                        <div class="input-group">
                            <input class="input--style-3 js-datepicker" type="text" placeholder="Contact" name="txtphno"  value="<%=num%>" required="required" autocomplete="off" pattern="[0-9+]{10,13}">
                            <i class="cont"></i>
                        </div>
                            <div class="input-group">
                            <input class="input--style-3 js-datepicker" type="text" placeholder="Address" name="txtaddress"  value="<%=adres%>" required="required" autocomplete="off">
                            <i class="zmdi zmdi-adb input-icon  "></i>
                        </div>
                            <div class="input-group">
                            <input class="input--style-3" type="email" placeholder="Email" name="txtmail" value="<%=mail%>" required="required" autocomplete="off">
                        </div>
                        
                        <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="ddlplrtype" placeholder="PlayerType">
                                    <option disabled="disabled" selected="selected">Player Type</option>
                                     <%
                                  String sel2="select * from tbl_playertype";
                                    ResultSet rs2=con.select(sel2);
                                    while(rs2.next())
                                     {
                                  
                                         %> 
                                 <option value="<%=rs2.getString("playertype_id")%>"<%if(rs2.getString("playertype_id").equals(pti)){out.print("selected");}%>><%=rs2.getString("player_type")%></option>
                                 <%
                         
        }
                                    %>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Player Id" name="txt_id" value="<%= gid%>" required="required" pattern="[0-9+]{12-16}" >
                        </div>
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit" name="btnsave" value="UPDATE">Update</button>
                        </div>
                        <br><br>
                        <div class="p-b-100">
                                                    <a href="index.jsp">Don't Change</a>
						
					</div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="../temp/colorlib-regform-3/colorlib-regform-3/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="../temp/colorlib-regform-3/colorlib-regform-3/vendor/select2/select2.min.js"></script>
    <script src="../temp/colorlib-regform-3/colorlib-regform-3/vendor/datepicker/moment.min.js"></script>
    <script src="../temp/colorlib-regform-3/colorlib-regform-3/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="../temp/colorlib-regform-3/colorlib-regform-3/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->