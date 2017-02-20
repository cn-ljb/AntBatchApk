package com.ljb.demo.antpacksimple;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;

import java.io.IOException;
import java.io.InputStream;

public class MainActivity extends AppCompatActivity {

    private static final String CHANNEL_DEFAULT = "default";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView tv_channel = (TextView) findViewById(R.id.tv_channel);
        tv_channel.setText(getChannel());
    }

    private String getChannel() {
        String channel = CHANNEL_DEFAULT;
        try {
            InputStream in = getResources().getAssets().open("channel/channel");
            int length = in.available();
            byte[] buffer = new byte[length];
            in.read(buffer);
            channel =  new String(buffer, "utf-8");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return  channel;
    }
}
