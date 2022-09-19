<%-- 
    Document   : HomePage
    Created on : 15 Dec, 2020, 12:47:10 PM
    Author     : alanso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Community Homepage</title>
         <link rel="stylesheet" href="../form.css">
    </head>
    <body>
         <div id="tab">
        <% 
            String uname=session.getAttribute("cname").toString();
            
            %>
        
        <h1>Welcome <% out.println(uname);%></h1>
      
        <a href="ViewProfile.jsp">My Profile</a>
        <a href="EditProfile.jsp">Edit Profile</a>
        <a href="Changepassword.jsp">Change Password</a>
        <a href="tournament.jsp">Create Tournament</a>
        <a href="complaint.jsp">Complaints</a>
        <a href="feedback.jsp">Feedback</a>
        <a href="Viewtournaments.jsp">Tournaments</a>
         </div>
    </body>
    
    <%@include file="footer.jsp" %>
</html>
