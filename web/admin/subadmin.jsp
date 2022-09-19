<%-- 
    Document   : subadmin
    Created on : 14 Dec, 2020, 12:38:12 PM
    Author     : alanso
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sub admin Page</title>
        <%@include file="Head.jsp" %>
    </head>
    <body>
        
        <h3 align="center"><u> SUBADMIN REGISTRATION</u></h3>
         <%
        String subname="",ins="",subadd="",subph="",subgen="",dst="",mail="",uname="",subpass="",c="",cid="",cadd="",cph="",cm="",cun="",cpass="",di="",gen="";
        if(request.getParameter("btnsave")!=null)
        { 
            subname=request.getParameter("txt_name");
            subadd=request.getParameter("txt_address");
            subph=request.getParameter("txt_phno");
            subgen=request.getParameter("txt_gender");
            dst=request.getParameter("ddldistrict");
            mail=request.getParameter("txt_email");
            uname=request.getParameter("txt_usnme");
            subpass=request.getParameter("txt_pass");
            cid=request.getParameter("txtid");
            if(cid.equals(""))
            {
          ins="insert into tbl_subadmin(subadmin_name,subadmin_address,subadmin_contact,subadmin_email,subadmin_gender,subadmin_uname,subadmin_password,district_id) values('"+subname+"','"+subadd+"','"+subph+"','"+mail+"','"+subgen+"','"+uname+"','"+subpass+"','"+dst+"')";
         // out.println(ins);
          if(con.executeCommand(ins))
        {
            %>
            
            <script>alert('Value inserted sucessfully')</script>
          
            <%
          
        }
        }
        else
            {        
           String upd="update tbl_subadmin set subadmin_name='"+subname+"',subadmin_address='"+subadd+"',subadmin_contact='"+subph+"',subadmin_email='"+mail+"',subadmin_gender='"+subgen+"',subadmin_uname='"+uname+"',subadmin_password='"+subpass+"',district_id='"+dst+"' where subadmin_id='"+cid+"'";
                //out.println(upd);
           if(con.executeCommand(upd))
        {
            %><script>alert('Value updated sucessfully')</script><%
            
          
        }
           
            }
        }
       
         if(request.getParameter("editid")!=null)
        {
            String selc="select * from tbl_subadmin where subadmin_id=('"+request.getParameter("editid")+"')";
            ResultSet rs1=con.select(selc);
            if(rs1.next())
            {
                cid=rs1.getString("subadmin_id");
                c=rs1.getString("subadmin_name");
                cadd=rs1.getString("subadmin_address");
                cph=rs1.getString("subadmin_contact");
                cm=rs1.getString("subadmin_email");
                cun=rs1.getString("subadmin_uname");
                cpass=rs1.getString("subadmin_password");
                di=rs1.getString("district_id");
                gen=rs1.getString("subadmin_gender");
                //out.println(cid);
            }
        }
        %>
        <div id="tab">
        <form method="post">
            <table align="center" border="2">
                <tr>  
                    
                    <td>Sub Admin Name:</td><td><input type="text" name="txt_name" value="<%=c%>"><input type="hidden" name="txtid" value="<%=cid%>" required="required" autocomplete="off"></td>
                    </tr>
                <tr>
                    <td>Phone Number:</td><td><input type="text" name="txt_phno" value="<%=cph%>" required="required" autocomplete="off" pattern="[0-9+]{10,13}"></td>
                </tr>
                <tr>
                    <td>Gender:</td><td><input type="radio" name="txt_gender" value="male" <%if(gen.equals("male")){out.print("checked");}%> required="required" autocomplete="off">Male
                        <input type="radio" name="txt_gender" value="female"<%if(gen.equals("female")){out.print("checked");}%> required="required" autocomplete="off">Female</td>
                </tr>
                <tr>
                    <td>Address:</td><td><textarea name="txt_address" required="required"><%out.println(cadd);%></textarea></td>
                </tr>
                <tr>
                    <td>Email:</td><td><input type="email" name="txt_email" value="<%=cm%>" required="required" autocomplete="off"></td>
                </tr>
                <tr>
                <td>District:</td>
                    <td>
                        <select name="ddldistrict">
                            <option>
                               ---- Select----
                            </option>
                                  <%
                                  String sel="select * from tbl_district";
                                    ResultSet rs=con.select(sel);
                                    while(rs.next())
                                     {
                                  
                                 %> 
                                 <option value="<%=rs.getString("district_id")%>"<%if(rs.getString("district_id").equals(di)){out.print("selected");}%>><%=rs.getString("district_name")%></option>
                                 <%
                         
        }
                  %> 
                        </select></td>
                </tr>
               
                <tr>
                    <td>username:</td><td><input type="text" name="txt_usnme" value="<%=cun%>" required="required" autocomplete="off"></td>
                </tr>
                <tr>
                    <td>password:</td><td><input type="password" name="txt_pass" value="<%=cpass%>" required="required" autocomplete="off" pattern="[a-zA-Z0-9]{6-9}"></td>
                </tr>
                <tr>
                    <td colspan="2"  align="center"><input type="submit" name="btnsave">
                        <input type="reset" name="btnreset"></td>
                </tr>
            </table>
                <br>
                <br><br>
                <b> <a href="SubadminView.jsp">Details of Sub Admin</a></b>
                    
                    <br><br><br><br><br><br><br><br><br><br><br><br>
                
                        
                
        
       </form>
        </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>
