package com.tencent.qnet.ui;

import android.animation.Animator;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.MenuItem;
import android.view.View;
import com.futuremind.recyclerviewfastscroll.FastScroller;
import com.tencent.qim.R;
import com.tencent.qnet.BuildConfig;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Observer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AppManager extends AppCompatActivity {
    public static final int REQUEST_CODE = 2081;
    private AppManagerAdapter adapter;
    private RecyclerView appListView;
    private FastScroller fastScroller;
    private View loadingView;

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.layout_apps);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        this.loadingView = findViewById(R.id.loading);
        this.appListView = (RecyclerView) findViewById(R.id.list);
        this.appListView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        this.appListView.setItemAnimator(new DefaultItemAnimator());
        this.fastScroller = (FastScroller) findViewById(R.id.fastscroller);
        Observable.create(new ObservableOnSubscribe<List<AppInfo>>() { // from class: com.tencent.qnet.ui.AppManager.1
            @Override // io.reactivex.ObservableOnSubscribe
            public void subscribe(ObservableEmitter<List<AppInfo>> observableEmitter) throws Exception {
                AppManager.this.queryAppInfo();
                AppManager.this.adapter = new AppManagerAdapter();
                observableEmitter.onComplete();
            }
        }).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Observer<List<AppInfo>>() { // from class: com.tencent.qnet.ui.AppManager.2
            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
            }

            @Override // io.reactivex.Observer
            public void onNext(List<AppInfo> list) {
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                AppManager.this.appListView.setAdapter(AppManager.this.adapter);
                AppManager.this.fastScroller.setRecyclerView(AppManager.this.appListView);
                AppManager.this.appListView.setAlpha(0.0f);
                AppManager.this.appListView.setVisibility(0);
                AppManager.this.appListView.animate().alpha(1.0f).setDuration(1L);
                AppManager.this.loadingView.animate().alpha(0.0f).setDuration(1L).setListener(new Animator.AnimatorListener() { // from class: com.tencent.qnet.ui.AppManager.2.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AppManager.this.loadingView.setVisibility(8);
                    }
                });
            }
        });
    }

    public void queryAppInfo() {
        PackageManager packageManager = getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        Collections.sort(listQueryIntentActivities, new ResolveInfo.DisplayNameComparator(packageManager));
        if (AppProxyManager.Instance.mlistAppInfo != null) {
            AppProxyManager.Instance.mlistAppInfo.clear();
            for (ResolveInfo resolveInfo : listQueryIntentActivities) {
                String str = resolveInfo.activityInfo.packageName;
                String str2 = (String) resolveInfo.loadLabel(packageManager);
                Drawable drawableLoadIcon = resolveInfo.loadIcon(packageManager);
                AppInfo appInfo = new AppInfo();
                appInfo.setAppLabel(str2);
                appInfo.setPkgName(str);
                appInfo.setAppIcon(drawableLoadIcon);
                if (!appInfo.getPkgName().equals(BuildConfig.APPLICATION_ID)) {
                    AppProxyManager.Instance.mlistAppInfo.add(appInfo);
                }
            }
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
