package com.tencent.qnet.ui.login.activity;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.connect.common.Constants;
import com.tencent.qim.R;
import com.tencent.qnet.global.QnetApplication;
import com.tencent.qnet.ui.login.LoginActivity;
import com.tencent.qnet.ui.login.manager.LoginManager;

/* JADX INFO: loaded from: classes.dex */
public class WetestMainActivity extends AppCompatActivity {
    private Button loginOut;
    private TextView text;
    private ImageView userPic;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_wetest_main);
        this.text = (TextView) findViewById(R.id.text);
        this.loginOut = (Button) findViewById(R.id.logout);
        this.userPic = (ImageView) findViewById(R.id.user_pic);
        this.loginOut.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.login.activity.WetestMainActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LoginManager.logOut(WetestMainActivity.this);
                Intent intent = new Intent();
                intent.setClass(WetestMainActivity.this, LoginActivity.class);
                WetestMainActivity.this.startActivity(intent);
                WetestMainActivity.this.finish();
            }
        });
        showUserInfo();
    }

    public void showUserInfo() {
        String string = ((QnetApplication) QnetApplication.getContext()).getmSetting().getString("uid", "");
        String string2 = ((QnetApplication) QnetApplication.getContext()).getmSetting().getString("nick", "");
        String string3 = ((QnetApplication) QnetApplication.getContext()).getmSetting().getString("face", "");
        int i = ((QnetApplication) QnetApplication.getContext()).getmSetting().getInt("LoginType", 0);
        String string4 = ((QnetApplication) QnetApplication.getContext()).getmSetting().getString("projs", "");
        String loginCookie = LoginManager.getLoginCookie();
        StringBuilder sb = new StringBuilder();
        sb.append("uid=");
        sb.append(string);
        sb.append("\nnick=");
        sb.append(string2);
        sb.append("\ntype=");
        sb.append(i == 2002 ? "RTX" : Constants.SOURCE_QQ);
        sb.append("\nface=");
        sb.append(string3);
        sb.append("\nprojs=");
        sb.append(string4);
        sb.append("\nseesionId=");
        sb.append(loginCookie);
        this.text.setText(sb.toString());
        Bitmap bitMapByUrl = string3.equals("") ? null : LoginManager.getBitMapByUrl(string3);
        if (bitMapByUrl == null) {
            bitMapByUrl = BitmapFactory.decodeResource(QnetApplication.getContext().getResources(), R.drawable.head_default1);
        }
        Bitmap roundedCornerBitmap = LoginManager.getRoundedCornerBitmap(bitMapByUrl, 90.0f);
        if (roundedCornerBitmap != null) {
            this.userPic.setImageBitmap(roundedCornerBitmap);
        }
    }
}
