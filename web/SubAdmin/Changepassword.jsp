<%-- 
    Document   : Changepassword
    Created on : 15 Dec, 2020, 3:13:30 PM
    Author     : alans
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%--<%@include file="Head.jsp" %>--%>
        <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<title>Change Password</title>-->
    </head>
    <body>
        <%
            String pass="";
          String cid=session.getAttribute("sid").toString();
          if(cid !=null)
        {
            String selc="select * from tbl_subadmin where subadmin_id='"+ cid+"'";
            ResultSet rs1=con.select(selc);
            if(rs1.next())
            {
                pass=rs1.getString("subadmin_password");
            }
         if(request.getParameter("btnsave")!=null)
        {
             String o=request.getParameter("oldpass");
            
            
             if(o.equals(pass))
             {
                String n=request.getParameter("newpass");
                String c=request.getParameter("conpass");
                 if(n.equals(c))
                 {
                      String upd="update tbl_subadmin set subadmin_password='"+request.getParameter("newpass")+"' where subadmin_id='"+ cid+"'";
                      if(con.executeCommand(upd))
                           {
                           %><script>alert('Password Changed sucessfully')</script><%
                               response.sendRedirect("ViewProfile.jsp");
            
          
                           }
                      
              }
                 else
                      {
                          %><script>alert('Password Not Matched')</script><%
                      }
                 }
             else
                      {
                          %><script>alert('Old Password Not Correct')</script><%
                      }
             }
         }
             %>
<!--             <div id="tab">
        <h1>Change Your Password here</h1>
        <form>
            <table>
                 <tr>
                    <td>Old Password:</td>
                    <td><input type="password" name="oldpass" required="required" autocomplete="off" pattern="[a-zA-Z0-9]{6-9}"></td>
                </tr>
                 <tr>
                    <td>New password:</td>
                    <td><input type="password" name="newpass" required="required" autocomplete="off" pattern="[a-zA-Z0-9]{6-9}"></td>
                </tr>
                 <tr>
                    <td>Confirm Password:</td>
                    <td><input type="password" name="conpass" required="required" autocomplete="off" pattern="[a-zA-Z0-9]{6-9}"></td>              
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="btnsave" value="UPDATE">
                        <input type="reset" name="btnreset"></td>
                </tr>

               
            </table>
        </form>
             </div>-->
        <%--<%@include file="Foot.jsp" %>--%>
    </body>
</html>



















<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="../temp/colorlib-regform-7/colorlib-regform-7/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="../temp/colorlib-regform-7/colorlib-regform-7/css/style.css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Change Password</h2>
                        <div id="tab">
                        <form method="POST" class="register-form" id="register-form">
                            
                            
                             <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="text" name="oldpass" id="pass" placeholder="Old Password"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="text" name="newpass" id="pass" placeholder="New Password"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="conpass" id="re_pass" placeholder="Repeat your new password"/>
                            </div>
<!--                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>-->
                            <div class="form-group form-button">
                                <input type="submit" name="btnsave" id="signup" class="form-submit" value="Update"/>
                            </div>
                            <div class="signup-image">
                       
                        <a href="index.html" class="signup-image-link">Don't Change</a>
                    </div>
                        </form>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>

       

    </div>

    <!-- JS -->
    <script src="../temp/colorlib-regform-7/colorlib-regform-7/vendor/jquery/jquery.min.js"></script>
    <script src="../temp/colorlib-regform-7/colorlib-regform-7/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
