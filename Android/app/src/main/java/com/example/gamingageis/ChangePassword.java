package com.example.gamingageis;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.google.android.material.textfield.TextInputEditText;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ChangePassword extends AppCompatActivity {

    TextInputEditText cp,np,rp;
    TextView Fname;
    Button Cpass;
    String name,Id;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_change_password);
        SharedPreferences sh=getSharedPreferences("user",MODE_PRIVATE);
        Id = sh.getString("id","");
        name = sh.getString("name","");

        Fname=findViewById(R.id.full_name);
        Fname.setText(name);



        cp=findViewById(R.id.cpassword);
        np=findViewById(R.id.npassword);
        rp=findViewById(R.id.rpassword);
        Cpass=findViewById(R.id.cpass);

        Cpass.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                String cpass,npass,rpass,id;
                cpass = cp.getText().toString();
                npass = np.getText().toString();
                rpass = rp.getText().toString();
                id=Id;

                changePassword CP = new changePassword();
                CP.execute(id,cpass,npass,rpass);

            }
        });

    }

    public class changePassword extends AsyncTask<String, String, String> {


        @Override
        protected String doInBackground(String... strings) {
            WebServiceCaller wb = new WebServiceCaller();
            wb.setSoapObject("ChangePassword");
            wb.addProperty("id", strings[0]);
            wb.addProperty("CurrentPassword", strings[1]);
            wb.addProperty("NewPassword", strings[2]);
            wb.addProperty("RePassword", strings[3]);
            wb.callWebService();
            return wb.getResponse();
        }

        @Override
        protected void onPostExecute(String s) {
            super.onPostExecute(s);

            Toast.makeText(ChangePassword.this,s, Toast.LENGTH_SHORT).show();

            Intent i = new Intent(ChangePassword.this, HomePage.class);
            startActivity(i);

        }
    }

}