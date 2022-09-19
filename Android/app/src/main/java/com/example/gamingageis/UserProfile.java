package com.example.gamingageis;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.hardware.camera2.TotalCaptureResult;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.textfield.TextInputEditText;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UserProfile extends AppCompatActivity {

    TextView fname;
    TextInputEditText name,contact,email;
    Button cpass,up;
    String Id, Name,Contact,Email;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_profile);

        SharedPreferences sh=getSharedPreferences("user",MODE_PRIVATE);
        Id = sh.getString("id","");

        GetUserData gud = new GetUserData();
        gud.execute(Id);


        fname = findViewById(R.id.full_name);
        name = findViewById(R.id.name);
        contact = findViewById(R.id.contact);
        email = findViewById(R.id.email);



        cpass=findViewById(R.id.cp);
        up=findViewById(R.id.update);

        cpass.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                Intent i = new Intent(UserProfile.this,ChangePassword.class);
                startActivity(i);
            }
        });

        up.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                String ename,eid,econtact,eemail;
                eid=Id;
                ename = name.getText().toString();
                econtact = contact.getText().toString();
                eemail = email.getText().toString();

               UpdateProfile up = new UpdateProfile();
                up.execute(eid,ename,econtact,eemail);

            }
        });

    }
    public class GetUserData extends AsyncTask<String, String, String> {


        @Override
        protected String doInBackground(String... strings) {
            WebServiceCaller wb = new WebServiceCaller();
            wb.setSoapObject("GetUserData");
            wb.addProperty("id", strings[0]);
            wb.callWebService();
            return wb.getResponse();
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);

            JSONArray j = null;
            try {
                j = new JSONArray(s);

                    JSONObject jo = j.getJSONObject(0);
                    Name= jo.getString("name");
                    Contact = jo.getString("contact");
                    Email = jo.getString("email");


            } catch (JSONException e) {
                e.printStackTrace();
            }

            fname.setText(Name);
            name.setText(Name);
            contact.setText(Contact);
            email.setText(Email);

        }
    }
    public class UpdateProfile extends AsyncTask<String, String, String> {

        @Override
        protected String doInBackground(String... strings) {
            WebServiceCaller wb = new WebServiceCaller();
            wb.setSoapObject("UpdateProfile");
            wb.addProperty("id", strings[0]);
            wb.addProperty("name", strings[1]);
            wb.addProperty("contact", strings[2]);
            wb.addProperty("email", strings[3]);
            wb.callWebService();
            return wb.getResponse();
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);

            Toast.makeText(UserProfile.this,s, Toast.LENGTH_SHORT).show();

            GetUserData gud = new GetUserData();
            gud.execute(Id);

        }
    }
}