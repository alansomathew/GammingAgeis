<%-- 
    Document   : HomePage
    Created on : 1 Dec, 2020, 2:47:09 PM
    Author     : alanso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Player Homepage</title>
         <link rel="stylesheet" href="../form.css">
    </head>
    <body>
         <div id="tab">
        <% 
            String uname=session.getAttribute("uname").toString();
            
            %>
        
        <h1>Welcome <% out.println(uname);%></h1>
      
        <a href="ViewProfile.jsp">My Profile</a>
        <a href="EditProfile.jsp">Edit Profile</a>
        <a href="ChangePass.jsp">Change Password</a>
        <a href="tournamentlist.jsp">Tournaments</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="complaint.jsp">Complaint</a>
        <a href="ViewBookedtournaments.jsp">Booked Tournaments</a>
        
        <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
