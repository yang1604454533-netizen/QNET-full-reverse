package com.futuremind.recyclerviewfastscroll;

import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerViewScrollListener extends RecyclerView.OnScrollListener {
    List<ScrollerListener> listeners = new ArrayList();
    int oldScrollState = 0;
    private final FastScroller scroller;

    public interface ScrollerListener {
        void onScroll(float f);
    }

    public RecyclerViewScrollListener(FastScroller fastScroller) {
        this.scroller = fastScroller;
    }

    public void addScrollerListener(ScrollerListener scrollerListener) {
        this.listeners.add(scrollerListener);
    }

    @Override // android.support.v7.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(RecyclerView recyclerView, int i) {
        super.onScrollStateChanged(recyclerView, i);
        if (i == 0 && this.oldScrollState != 0) {
            this.scroller.getViewProvider().onScrollFinished();
        } else if (i != 0 && this.oldScrollState == 0) {
            this.scroller.getViewProvider().onScrollStarted();
        }
        this.oldScrollState = i;
    }

    @Override // android.support.v7.widget.RecyclerView.OnScrollListener
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        if (this.scroller.shouldUpdateHandlePosition()) {
            updateHandlePosition(recyclerView);
        }
    }

    void updateHandlePosition(RecyclerView recyclerView) {
        float fComputeHorizontalScrollOffset;
        if (this.scroller.isVertical()) {
            fComputeHorizontalScrollOffset = recyclerView.computeVerticalScrollOffset() / (recyclerView.computeVerticalScrollRange() - recyclerView.computeVerticalScrollExtent());
        } else {
            fComputeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset() / (recyclerView.computeHorizontalScrollRange() - recyclerView.computeHorizontalScrollExtent());
        }
        this.scroller.setScrollerPosition(fComputeHorizontalScrollOffset);
        notifyListeners(fComputeHorizontalScrollOffset);
    }

    public void notifyListeners(float f) {
        Iterator<ScrollerListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onScroll(f);
        }
    }
}
