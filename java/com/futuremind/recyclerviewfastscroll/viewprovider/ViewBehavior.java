package com.futuremind.recyclerviewfastscroll.viewprovider;

/* JADX INFO: loaded from: classes.dex */
public interface ViewBehavior {
    void onHandleGrabbed();

    void onHandleReleased();

    void onScrollFinished();

    void onScrollStarted();
}
