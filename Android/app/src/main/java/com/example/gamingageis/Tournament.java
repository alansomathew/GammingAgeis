package com.example.gamingageis;

import androidx.appcompat.app.AppCompatActivity;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class Tournament extends AppCompatActivity {

    WebView webview;
    private String Url,Id;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tournament);

        SharedPreferences sh=getSharedPreferences("user",MODE_PRIVATE);
        Id = sh.getString("id","");


        Url = "http://172.20.10.8:8084/Gaming_Aegis/WebView/tournamentlist.jsp?id="+Id;

        webview = findViewById(R.id.webview);
        webview.loadUrl(Url);

        webview.getSettings().setJavaScriptEnabled(true);
        webview.setWebViewClient(new WebViewClient()
        {
            public boolean shouldOverrideUrlLoading(WebView view , String url){

                view.loadUrl(url);
                return true;
            }
        });

    }

    @Override
    public void onBackPressed() {

        if(webview.canGoBack())
        {
            webview.goBack();
        }
        else
        super.onBackPressed();
    }
}