/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebService;

import DB.ConnectionClass;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author HP
 */
@WebService(serviceName = "AndroidWebService")
public class AndroidWebService {

    ConnectionClass con = new ConnectionClass();

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "GetDistrict")
    public String GetDistrict() {
        //TODO write your implementation code here:
        String sel = "select * from tbl_district ";
        ResultSet rs = con.select(sel);
        System.out.println(sel);
        JSONArray j = new JSONArray();
        try {
            while (rs.next()) {
                JSONObject jo = new JSONObject();
                {
                    try {
                        jo.put("did", rs.getString("district_id"));
                        jo.put("dname", rs.getString("district_name"));
                        j.put(jo);
                    } catch (JSONException ex) {
                        Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(j.toString());
        return j.toString();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "GetPlace")
    public String GetPlace(@WebParam(name = "district") String district) {
        //TODO write your implementation code here:
        String sel = "select * from tbl_place where district_id='" + district + "'";
        ResultSet rs = con.select(sel);
        System.out.println(sel);
        JSONArray j = new JSONArray();
        {
            try {
                while (rs.next()) {
                    JSONObject jo = new JSONObject();
                    {
                        try {
                            jo.put("pid", rs.getString("place_id"));
                            jo.put("pname", rs.getString("place_name"));
                            j.put(jo);
                        } catch (JSONException ex) {
                            Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
                        }

                    }
                }
            } catch (SQLException ex) {
                Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        System.out.println(j.toString());
        return j.toString();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "GetPlayerType")
    public String GetBlood() {
        String sel = "select*from tbl_playertype";
        ResultSet rs = con.select(sel);
        System.out.println(sel);
        JSONArray j = new JSONArray();
        try {
            while (rs.next()) {
                JSONObject jo = new JSONObject();
                {
                    try {
                        jo.put("ptid", rs.getString("playertype_id"));
                        jo.put("ptname", rs.getString("player_type"));
                        j.put(jo);
                    } catch (JSONException ex) {
                        Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println(j.toString());
        return j.toString();
    }
    /**
     * Web service operation
     */
    @WebMethod(operationName = "InsertUser")
    public String InsertUser(@WebParam(name = "name") String name, @WebParam(name = "contact") String contact, @WebParam(name = "email") String email, @WebParam(name = "address") String address, @WebParam(name = "placeid") String placeid, @WebParam(name = "gameid") String gameid, @WebParam(name = "gender") String gender, @WebParam(name = "pid") String pid, @WebParam(name = "dob") String dob, @WebParam(name = "username") String username, @WebParam(name = "password") String password) {
        String result = "";
        String ins = "insert into tbl_players(player_name,player_contact,player_email,player_address,place_id,game_id,player_gender,player_dob,playertype_id,player_uname,player_password)"
                + "values('" + name + "','" + contact + "','" + email + "','" + address + "','" + placeid + "','" + gameid + "','" + gender + "','" + dob + "','" + pid + "','" + username + "','" + password + "')";
        boolean status = con.executeCommand(ins);
        System.out.println(ins);
        if (status == true) {
            result = "Inserted Successfully";
        } else {
            result = "Insertion Faild";
        }
        return result;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "LoginDetails")
    public String LoginDetails(@WebParam(name = "username") String username, @WebParam(name = "password") String password) {

        String sel = "select * from tbl_players where player_uname='" + username + "' and player_password='" + password + "'";
        ResultSet rs = con.select(sel);
        System.out.println(sel);
        JSONArray j = new JSONArray();
        try {
            if (rs.next()) {
                JSONObject jo = new JSONObject();

                try {
                    jo.put("id", rs.getString("player_id"));
                    jo.put("name", rs.getString("player_name"));

                    j.put(jo);
                } catch (JSONException ex) {
                    Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return j.toString();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "GetUserData")
    public String GetUserData(@WebParam(name = "id") String id) {

        //TODO write your implementation code here:
        String sel = "select * from tbl_players where player_id='" + id + "'";
        ResultSet rs = con.select(sel);
        System.out.println(sel);
        JSONArray j = new JSONArray();
        {
            try {
                while (rs.next()) {
                    JSONObject jo = new JSONObject();
                    {
                        try {
                            jo.put("name", rs.getString("player_name"));
                            jo.put("contact", rs.getString("player_contact"));
                            jo.put("email", rs.getString("player_email"));
                            j.put(jo);
                        } catch (JSONException ex) {
                            Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
                        }

                    }
                }
            } catch (SQLException ex) {
                Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        System.out.println(j.toString());
        return j.toString();
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "UpdateProfile")
    public String UpdateProfile(@WebParam(name = "id") String id, @WebParam(name = "name") String name, @WebParam(name = "contact") String contact, @WebParam(name = "email") String email) {
        String result = "";
        String ins = "update tbl_players set player_name= '" + name + "',player_contact= '" + contact + "',player_email= '" + email + "' where player_id='" + id + "'";
        boolean status = con.executeCommand(ins);
        System.out.println(ins);
        if (status == true) {
            result = "Updated Successfully";
        } else {
            result = "Updated Faild";
        }
        return result;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "ChangePassword")
    public String ChangePassword(@WebParam(name = "CurrentPassword") String CurrentPassword, @WebParam(name = "NewPassword") String NewPassword, @WebParam(name = "RePassword") String RePassword, @WebParam(name = "id") String id) {
        String sel = "", cp = "", result = "";
        sel = "select * from tbl_players where player_id='" + id + "'";
        ResultSet rs = con.select(sel);
        try {
            if (rs.next()) {
                cp = rs.getString("player_password");
            }

            if (cp.equals(CurrentPassword)) {
                if (NewPassword.equals(RePassword)) {
                    String edit = "update tbl_players set player_password='" + NewPassword + "' where player_id='" + id + "'";
                    con.executeCommand(edit);
                    System.out.println(edit);
                    result = "Succesfuly Changed";
                } else {
                    result = "New Password Missmatched";
                }
            } else {
                result = "Current Password Missmatched";
            }
        } catch (SQLException ex) {
            Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "GetMyBookings")
    public String GetMyBookings(@WebParam(name = "id") String id) {
       String sel = "select * from tbl_applytournament a inner join tbl_tournament t on a.tournament_id=t.tournament_id inner join tbl_slot sl on a.slot_id=sl.slot_id inner join tbl_mode m on t.mode_id=m.mode_id inner join tbl_type ty on t.type_id=ty.type_id inner join tbl_community c on t.community_id=c.community_id where a.player_id='"+id+"'";
        ResultSet rs = con.select(sel);
        System.out.println(sel);
        JSONArray j = new JSONArray();
        {
            try {
                while (rs.next()) {
                    JSONObject jo = new JSONObject();
                    {
                        try {
                            jo.put("name", rs.getString("tournament_name"));
                            jo.put("date", rs.getString("tournament_date")+"/"+rs.getString("tournament_time"));
                            jo.put("mode", rs.getString("mode_name")+"/"+rs.getString("type_name"));
                            jo.put("slot", rs.getString("slot_no"));
                            jo.put("id", rs.getString("id"));
                            jo.put("pass", rs.getString("pass"));
                            j.put(jo);
                        } catch (JSONException ex) {
                            Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
                        }

                    }
                }
            } catch (SQLException ex) {
                Logger.getLogger(AndroidWebService.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        System.out.println(j.toString());
        return j.toString();
       
    }
    
}
