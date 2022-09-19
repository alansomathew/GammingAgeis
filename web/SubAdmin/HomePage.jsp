<%-- 
    Document   : HomePage
    Created on : 14 Dec, 2020, 12:37:20 PM
    Author     : alans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subadmin Homepage</title>
    </head>
    <body>
        <% 
            String sname=session.getAttribute("sname").toString();
            
            %>
        <div id="tab">
        <h1>Welcome <% out.println(sname);%></h1>
        <table border="1">
            <tr><td><a href="ViewProfile.jsp">My Profile</a></td>
       <td> <a href="EditProfile.jsp">Edit Profile</a></td>
        <td><a href="Changepassword.jsp">Change Password</a></td>
       <td> <a href="Communitylist.jsp">Community List</a></td>
        <td><a href="Playerlist.jsp">Player List</a></td>
        <td> <a href="tournamentview.jsp">Tournament List</a></td>
        <td><a href="viewcomplaint.jsp">complaint List</a></td>
        <td> <a href="complaint.jsp">Complaint</a></td>
        <td> <a href="feedback.jsp">feedback</a></td>
            </tr>
        </table>
        </div>
        <%@include file="Foot.jsp" %>
    </body>
</html>
