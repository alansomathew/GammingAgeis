<%-- 
    Document   : SubadminView
    Created on : 23 Mar, 2021, 11:43:21 AM
    Author     : alans
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
            <title>Subadmin Details</title>

            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!--===============================================================================================-->	
            <link rel="icon" type="image/png" href="..//temp/Table_Highlight_Vertical_Horizontal/images/icons/favicon.ico"/>
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="..//temp/Table_Highlight_Vertical_Horizontal/vendor/bootstrap/css/bootstrap.min.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="..//temp/Table_Highlight_Vertical_Horizontal/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="..//temp/Table_Highlight_Vertical_Horizontal/vendor/animate/animate.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="..//temp/Table_Highlight_Vertical_Horizontal/vendor/select2/select2.min.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="..//temp/Table_Highlight_Vertical_Horizontal/vendor/perfect-scrollbar/perfect-scrollbar.css">
            <!--===============================================================================================-->
            <link rel="stylesheet" type="text/css" href="..//temp/Table_Highlight_Vertical_Horizontal/css/util.css">
            <link rel="stylesheet" type="text/css" href="..//temp/Table_Highlight_Vertical_Horizontal/css/main.css">
            <!--===============================================================================================-->
        </head>
        <body>

            <div class="limiter">
                <h3 align="center">Sub Admin Details</h3>
                <div class="container-table100">
                    <div class="wrap-table100">
                        <div class="table100 ver1 m-b-110">
                            <table data-vertable="ver1">
                                <thead>
                                    <tr class="row100 head">
                                        <th class="column100 column1" data-column="column1">SI NO</th>
                                        <th class="column100 column2" data-column="column2">Name</th>
                                        <th class="column100 column3" data-column="column3">Address</th>
                                        <th class="column100 column4" data-column="column4">Phone Number</th>
                                        <th class="column100 column5" data-column="column5">Gender</th>
                                        <th class="column100 column6" data-column="column6">Mail</th>
                                        <th class="column100 column7" data-column="column7">District</th>
                                        <th class="column100 column8" data-column="column8">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <%
                                     if(request.getParameter("delid")!=null)
        {
            String del="delete from tbl_subadmin where subadmin_id=('"+request.getParameter("delid")+"')";
            con.executeCommand(del);
            response.sendRedirect("SubadminView.jsp");
        }
                                    int i = 0;
                                    String sela = "select * from tbl_subadmin a inner join tbl_district d on a.district_id=d.district_id ";
                                    ResultSet rsa = con.select(sela);
                                    while (rsa.next()) {
                                        i++;

                                %>

                                <tr class="row100">
                                    <td class="column100 column1" data-column="column1"><%out.println(i);%></td>
                                    <td class="column100 column2" data-column="column2"><%=rsa.getString("subadmin_name")%></td>
                                    <td class="column100 column3" data-column="column3"><%=rsa.getString("subadmin_address")%></td>
                                    <td class="column100 column4" data-column="column4"><%=rsa.getString("subadmin_contact")%></td>
                                    <td class="column100 column5" data-column="column5"><%=rsa.getString("subadmin_gender")%></td>
                                    <td class="column100 column6" data-column="column6"><%=rsa.getString("subadmin_email")%></td>
                                    <td class="column100 column7" data-column="column7"><%=rsa.getString("district_name")%></td>
                                    <td class="column100 column8" data-column="column8">

                                        <a href="SubadminView.jsp?delid=<%=rsa.getString("subadmin_id")%>" >Delete</a>&nbsp;
                                        <a href="subadmin.jsp?editid=<%=rsa.getString("subadmin_id")%>" >Edit</a>

                                    </td>
                                   
                                </tr>

                                <%

                                    }
                                %> 


                                <!--							<tr class="row100">
                                                                                                <td class="column100 column1" data-column="column1">Jane Medina</td>
                                                                                                <td class="column100 column2" data-column="column2">--</td>
                                                                                                <td class="column100 column3" data-column="column3">5:00 PM</td>
                                                                                                <td class="column100 column4" data-column="column4">5:00 PM</td>
                                                                                                <td class="column100 column5" data-column="column5">--</td>
                                                                                                <td class="column100 column6" data-column="column6">9:00 AM</td>
                                                                                                <td class="column100 column7" data-column="column7">--</td>
                                                                                                <td class="column100 column8" data-column="column8">--</td>
                                                                                        </tr>
                                
                                                                                        <tr class="row100">
                                                                                                <td class="column100 column1" data-column="column1">Billy Mitchell</td>
                                                                                                <td class="column100 column2" data-column="column2">9:00 AM</td>
                                                                                                <td class="column100 column3" data-column="column3">--</td>
                                                                                                <td class="column100 column4" data-column="column4">--</td>
                                                                                                <td class="column100 column5" data-column="column5">--</td>
                                                                                                <td class="column100 column6" data-column="column6">--</td>
                                                                                                <td class="column100 column7" data-column="column7">2:00 PM</td>
                                                                                                <td class="column100 column8" data-column="column8">8:00 AM</td>
                                                                                        </tr>
                                
                                                                                        <tr class="row100">
                                                                                                <td class="column100 column1" data-column="column1">Beverly Reid</td>
                                                                                                <td class="column100 column2" data-column="column2">--</td>
                                                                                                <td class="column100 column3" data-column="column3">5:00 PM</td>
                                                                                                <td class="column100 column4" data-column="column4">5:00 PM</td>
                                                                                                <td class="column100 column5" data-column="column5">--</td>
                                                                                                <td class="column100 column6" data-column="column6">9:00 AM</td>
                                                                                                <td class="column100 column7" data-column="column7">--</td>
                                                                                                <td class="column100 column8" data-column="column8">--</td>
                                                                                        </tr>
                                
                                                                                        <tr class="row100">
                                                                                                <td class="column100 column1" data-column="column1">Tiffany Wade</td>
                                                                                                <td class="column100 column2" data-column="column2">8:00 AM</td>
                                                                                                <td class="column100 column3" data-column="column3">--</td>
                                                                                                <td class="column100 column4" data-column="column4">--</td>
                                                                                                <td class="column100 column5" data-column="column5">8:00 AM</td>
                                                                                                <td class="column100 column6" data-column="column6">--</td>
                                                                                                <td class="column100 column7" data-column="column7">5:00 PM</td>
                                                                                                <td class="column100 column8" data-column="column8">8:00 AM</td>
                                                                                        </tr>
                                
                                                                                        <tr class="row100">
                                                                                                <td class="column100 column1" data-column="column1">Sean Adams</td>
                                                                                                <td class="column100 column2" data-column="column2">--</td>
                                                                                                <td class="column100 column3" data-column="column3">5:00 PM</td>
                                                                                                <td class="column100 column4" data-column="column4">5:00 PM</td>
                                                                                                <td class="column100 column5" data-column="column5">--</td>
                                                                                                <td class="column100 column6" data-column="column6">9:00 AM</td>
                                                                                                <td class="column100 column7" data-column="column7">--</td>
                                                                                                <td class="column100 column8" data-column="column8">--</td>
                                                                                        </tr>
                                
                                                                                        <tr class="row100">
                                                                                                <td class="column100 column1" data-column="column1">Rachel Simpson</td>
                                                                                                <td class="column100 column2" data-column="column2">9:00 AM</td>
                                                                                                <td class="column100 column3" data-column="column3">--</td>
                                                                                                <td class="column100 column4" data-column="column4">--</td>
                                                                                                <td class="column100 column5" data-column="column5">--</td>
                                                                                                <td class="column100 column6" data-column="column6">--</td>
                                                                                                <td class="column100 column7" data-column="column7">2:00 PM</td>
                                                                                                <td class="column100 column8" data-column="column8">8:00 AM</td>
                                                                                        </tr>
                                
                                                                                        <tr class="row100">
                                                                                                <td class="column100 column1" data-column="column1">Mark Salazar</td>
                                                                                                <td class="column100 column2" data-column="column2">8:00 AM</td>
                                                                                                <td class="column100 column3" data-column="column3">--</td>
                                                                                                <td class="column100 column4" data-column="column4">--</td>
                                                                                                <td class="column100 column5" data-column="column5">8:00 AM</td>
                                                                                                <td class="column100 column6" data-column="column6">--</td>
                                                                                                <td class="column100 column7" data-column="column7">5:00 PM</td>
                                                                                                <td class="column100 column8" data-column="column8">8:00 AM</td>
                                                                                        </tr>-->
                            </tbody>
                        </table>
                    </div>

                    <b> <a align="center" href="index.html">Back</a></b>
                    <!--===============================================================================================-->	
                    <script src="..//temp/Table_Highlight_Vertical_Horizontal/vendor/jquery/jquery-3.2.1.min.js"></script>
                    <!--===============================================================================================-->
                    <script src="..//temp/Table_Highlight_Vertical_Horizontal/vendor/bootstrap/js/popper.js"></script>
                    <script src="..//temp/Table_Highlight_Vertical_Horizontal/vendor/bootstrap/js/bootstrap.min.js"></script>
                    <!--===============================================================================================-->
                    <script src="..//temp/Table_Highlight_Vertical_Horizontal/vendor/select2/select2.min.js"></script>
                    <!--===============================================================================================-->
                    <script src="..//temp/Table_Highlight_Vertical_Horizontal/js/main.js"></script>

                    </body>
                    </html>

