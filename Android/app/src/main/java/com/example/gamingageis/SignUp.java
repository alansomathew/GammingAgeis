package com.example.gamingageis;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Toast;

import com.google.android.material.textfield.TextInputEditText;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.net.PasswordAuthentication;
import java.util.Calendar;
import java.util.Date;

public class SignUp extends AppCompatActivity implements AdapterView.OnItemSelectedListener {


    TextInputEditText name, email, phno, address, dob, pid, username, password;
    Button go, login;
    String distid[], distname[];
    String placeid[], placename[];
    String pltid[], pltname[];
    String districtid;
    ArrayAdapter<String> districtadapter;
    ArrayAdapter<String> placeadapter;
    ArrayAdapter<String> playertypeadapter;
    Spinner district, place, player;
    RadioGroup rg;
    RadioButton rb;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);
        setContentView(R.layout.activity_sign_up);


        GetDistrict gd = new GetDistrict();
        gd.execute();
        GetPlayerType gpt = new GetPlayerType();
        gpt.execute();



        district = findViewById(R.id.district);
        place = findViewById(R.id.place);

        player = findViewById(R.id.pt);
        name = findViewById(R.id.name);
        email = findViewById(R.id.email);
        address = findViewById(R.id.address);
        phno = findViewById(R.id.phoneNo);
        dob = findViewById(R.id.dob);
        pid = findViewById(R.id.pid);
        username = findViewById(R.id.username);
        password = findViewById(R.id.password);
        go = findViewById(R.id.go);
        login = findViewById(R.id.login);

        district.setOnItemSelectedListener(this);


        rg = findViewById(R.id.radioGroup);
        int selectedId = rg.getCheckedRadioButtonId();
        rb = (RadioButton) findViewById(selectedId);


        go.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                String Name, Email, Address, Gender, Phno, Dob, PID, Username, Password, Placeid, PlayerTypeId;
                int plid,ptid;

                Name = name.getText().toString();
                Email = email.getText().toString();
                Address = address.getText().toString();
                Gender = ((RadioButton)findViewById(rg.getCheckedRadioButtonId())).getText().toString();
                Phno = phno.getText().toString();
                Dob = dob.getText().toString();
                PID = pid.getText().toString();
                Username = username.getText().toString();
                Password = password.getText().toString();

                plid = place.getSelectedItemPosition();
                ptid = player.getSelectedItemPosition();


                Placeid = placeid[plid];
                PlayerTypeId = pltid[ptid];


                InsertUser in=new InsertUser();
                in.execute(Name,Phno,Email,Address,Placeid,Gender,PID,Dob,PlayerTypeId,Username,Password);


            }
        });

        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                Intent intent = new Intent(SignUp.this, Login.class);
                startActivity(intent);

            }
        });


    }
    protected class InsertUser extends AsyncTask<String,String,String>
    {

        @Override
        protected String doInBackground(String... strings) {
            WebServiceCaller wb= new WebServiceCaller();
            wb.setSoapObject("InsertUser");
            wb.addProperty("name",strings[0]);
            wb.addProperty("contact",strings[1]);
            wb.addProperty("email",strings[2]);
            wb.addProperty("address",strings[3]);
            wb.addProperty("placeid",strings[4]);
            wb.addProperty("gender",strings[5]);
            wb.addProperty("gameid",strings[6]);
            wb.addProperty("dob",strings[7]);
            wb.addProperty("pid",strings[8]);
            wb.addProperty("username",strings[9]);
            wb.addProperty("password",strings[10]);

            wb.callWebService();
            return wb.getResponse();
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            Toast.makeText(SignUp.this,s, Toast.LENGTH_SHORT).show();

        }
    }

    @Override
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {

        switch (parent.getId()) {
            case R.id.district:

                districtid = distid[position];


                GetPlace gp = new GetPlace();
                gp.execute(districtid);

                break;


        }

    }

    @Override
    public void onNothingSelected(AdapterView<?> parent) {

        Toast.makeText(this, "Not Selected", Toast.LENGTH_SHORT).show();
    }


    public class GetPlace extends AsyncTask<String, String, String> {


        @Override
        protected String doInBackground(String... strings) {
            WebServiceCaller wb = new WebServiceCaller();
            wb.setSoapObject("GetPlace");
            wb.addProperty("district", strings[0]);
            wb.callWebService();
            return wb.getResponse();
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            JSONArray j = null;
            try {
                j = new JSONArray(s);
                placeid = new String[j.length() + 1];
                placename = new String[j.length() + 1];
                placename[0] = "--Select--";
                placeid[0] = "";
                for (int i = 0; i < j.length(); i++) {
                    JSONObject jo = j.getJSONObject(i);
                    placeid[i + 1] = jo.getString("pid");
                    placename[i + 1] = jo.getString("pname");

                }
            } catch (JSONException e) {
                e.printStackTrace();
            }

            placeadapter = new ArrayAdapter<String>(SignUp.this, android.R.layout.simple_spinner_item, placename);
            placeadapter.setDropDownViewResource(android.R.layout.simple_spinner_item);
            place.setAdapter(placeadapter);
        }
    }

       public class GetDistrict extends AsyncTask<String, String, String> {

        @Override
        protected String doInBackground(String... strings) {
            WebServiceCaller wb = new WebServiceCaller();
            wb.setSoapObject("GetDistrict");
            wb.callWebService();
            return wb.getResponse();

        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);
            JSONArray j = null;
            try {
                j = new JSONArray(s);
                distid = new String[j.length() + 1];
                distname = new String[j.length() + 1];
                distname[0] = "--Select--";
                distid[0] = "";
                for (int i = 0; i < j.length(); i++) {
                    JSONObject jo = j.getJSONObject(i);
                    distid[i + 1] = jo.getString("did");
                    distname[i + 1] = jo.getString("dname");

                }
            } catch (JSONException e) {
                e.printStackTrace();
            }


            districtadapter = new ArrayAdapter<String>(SignUp.this, android.R.layout.simple_spinner_item, distname);
            districtadapter.setDropDownViewResource(android.R.layout.simple_spinner_item);
            district.setAdapter(districtadapter);

        }
    }

    public class GetPlayerType extends AsyncTask<String, String, String> {

        @Override
        protected String doInBackground(String... strings) {
            WebServiceCaller wb = new WebServiceCaller();
            wb.setSoapObject("GetPlayerType");
            wb.callWebService();
            return wb.getResponse();

        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);

            Log.d("zz", s);
            JSONArray j = null;
            try {
                j = new JSONArray(s);
                pltid = new String[j.length() + 1];
                pltname = new String[j.length() + 1];
                pltname[0] = "--Select--";
                pltid[0] = "";
                for (int i = 0; i < j.length(); i++) {
                    JSONObject jo = j.getJSONObject(i);
                    pltid[i + 1] = jo.getString("ptid");
                    pltname[i + 1] = jo.getString("ptname");

                }
            } catch (JSONException e) {
                e.printStackTrace();
            }


            playertypeadapter = new ArrayAdapter<String>(SignUp.this, android.R.layout.simple_spinner_item, pltname);
            playertypeadapter.setDropDownViewResource(android.R.layout.simple_spinner_item);
            player.setAdapter(playertypeadapter);

        }
    }

}