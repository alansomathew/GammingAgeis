/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionClass {
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    public ConnectionClass() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3308/db_gamingaegis", "root", "root");

        } catch (Exception ex) {
            System.out.println(ex);
        }
    }



    public boolean executeCommand(String str) {
        boolean bol = false;
        try {

            st = con.createStatement();
            st.executeUpdate(str);
            bol = true;

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return bol;
    }


    public ResultSet select(String selQry) {
        try {
            st = con.createStatement();
            rs = st.executeQuery(selQry);
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return rs;
    }
    public void closeConnnection()
    {
        try 
        {
            con.close();
        } 
        catch (SQLException ex) 
        {
         System.out.println("exception"+ex);
        }
    }
    
}
