package com.example.gamingageis;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Bundle;
import android.widget.ArrayAdapter;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MyBookings extends AppCompatActivity {

    RecyclerView recyclerView;
    String a[],b[],c[],d[],e[],f[],Id;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_my_bookings);

        SharedPreferences sh=getSharedPreferences("user",MODE_PRIVATE);
        Id = sh.getString("id","");

        recyclerView=findViewById(R.id.rvb);


        GetMyBookings gmb = new GetMyBookings();
        gmb.execute(Id);

    }
    public class GetMyBookings extends AsyncTask<String, String, String> {

    @Override
    protected String doInBackground(String... strings) {
        WebServiceCaller wb = new WebServiceCaller();
        wb.setSoapObject("GetMyBookings");
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
            a = new String[j.length() + 1];
            b = new String[j.length() + 1];
            c = new String[j.length() + 1];
            d = new String[j.length() + 1];
            e = new String[j.length() + 1];
            f = new String[j.length() + 1];
            a[0] = "Name";
            b[0] = "Date";
            c[0] = "Mode";
            d[0] = "Slot";
            e[0] = "Id";
            f[0] = "Pass";
            for (int i = 0; i < j.length(); i++) {
                JSONObject jo = j.getJSONObject(i);
                a[i + 1] = jo.getString("name");
                b[i + 1] = jo.getString("date");
                c[i + 1] = jo.getString("mode");
                d[i + 1] = jo.getString("slot");
                e[i + 1] = jo.getString("id");
                f[i + 1] = jo.getString("pass");

            }
        } catch (JSONException e) {
            e.printStackTrace();
        }

        MyAdapter1 myAdapter = new MyAdapter1(MyBookings.this,a,b,c,d,e,f);

        recyclerView.setAdapter(myAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(MyBookings.this));
    }
}
}