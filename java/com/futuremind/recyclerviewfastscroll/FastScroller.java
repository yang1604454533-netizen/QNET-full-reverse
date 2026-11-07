package com.futuremind.recyclerviewfastscroll;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.futuremind.recyclerviewfastscroll.viewprovider.DefaultScrollerViewProvider;
import com.futuremind.recyclerviewfastscroll.viewprovider.ScrollerViewProvider;

/* JADX INFO: loaded from: classes.dex */
public class FastScroller extends LinearLayout {
    private static final int STYLE_NONE = -1;
    private View bubble;
    private int bubbleColor;
    private int bubbleOffset;
    private int bubbleTextAppearance;
    private TextView bubbleTextView;
    private View handle;
    private int handleColor;
    private boolean manuallyChangingPosition;
    private int maxVisibility;
    private RecyclerView recyclerView;
    private final RecyclerViewScrollListener scrollListener;
    private int scrollerOrientation;
    private SectionTitleProvider titleProvider;
    private ScrollerViewProvider viewProvider;

    public FastScroller(Context context) {
        this(context, null);
    }

    public FastScroller(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScroller(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.scrollListener = new RecyclerViewScrollListener(this);
        setClipChildren(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.fastscroll__fastScroller, R.attr.fastscroll__style, 0);
        try {
            this.bubbleColor = typedArrayObtainStyledAttributes.getColor(R.styleable.fastscroll__fastScroller_fastscroll__bubbleColor, -1);
            this.handleColor = typedArrayObtainStyledAttributes.getColor(R.styleable.fastscroll__fastScroller_fastscroll__handleColor, -1);
            this.bubbleTextAppearance = typedArrayObtainStyledAttributes.getResourceId(R.styleable.fastscroll__fastScroller_fastscroll__bubbleTextAppearance, -1);
            typedArrayObtainStyledAttributes.recycle();
            this.maxVisibility = getVisibility();
            setViewProvider(new DefaultScrollerViewProvider());
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setViewProvider(ScrollerViewProvider scrollerViewProvider) {
        removeAllViews();
        this.viewProvider = scrollerViewProvider;
        scrollerViewProvider.setFastScroller(this);
        this.bubble = scrollerViewProvider.provideBubbleView(this);
        this.handle = scrollerViewProvider.provideHandleView(this);
        this.bubbleTextView = scrollerViewProvider.provideBubbleTextView();
        addView(this.bubble);
        addView(this.handle);
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        this.recyclerView = recyclerView;
        if (recyclerView.getAdapter() instanceof SectionTitleProvider) {
            this.titleProvider = (SectionTitleProvider) recyclerView.getAdapter();
        }
        recyclerView.addOnScrollListener(this.scrollListener);
        invalidateVisibility();
        recyclerView.setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.futuremind.recyclerviewfastscroll.FastScroller.1
            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewAdded(View view, View view2) {
                FastScroller.this.invalidateVisibility();
            }

            @Override // android.view.ViewGroup.OnHierarchyChangeListener
            public void onChildViewRemoved(View view, View view2) {
                FastScroller.this.invalidateVisibility();
            }
        });
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        this.scrollerOrientation = i;
        super.setOrientation(i == 0 ? 1 : 0);
    }

    public void setBubbleColor(int i) {
        this.bubbleColor = i;
        invalidate();
    }

    public void setHandleColor(int i) {
        this.handleColor = i;
        invalidate();
    }

    public void setBubbleTextAppearance(int i) {
        this.bubbleTextAppearance = i;
        invalidate();
    }

    public void addScrollerListener(RecyclerViewScrollListener.ScrollerListener scrollerListener) {
        this.scrollListener.addScrollerListener(scrollerListener);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        initHandleMovement();
        this.bubbleOffset = this.viewProvider.getBubbleOffset();
        applyStyling();
        this.scrollListener.updateHandlePosition(this.recyclerView);
    }

    private void applyStyling() {
        if (this.bubbleColor != -1) {
            setBackgroundTint(this.bubbleTextView, this.bubbleColor);
        }
        if (this.handleColor != -1) {
            setBackgroundTint(this.handle, this.handleColor);
        }
        if (this.bubbleTextAppearance != -1) {
            TextViewCompat.setTextAppearance(this.bubbleTextView, this.bubbleTextAppearance);
        }
    }

    private void setBackgroundTint(View view, int i) {
        Drawable drawableWrap = DrawableCompat.wrap(view.getBackground());
        if (drawableWrap == null) {
            return;
        }
        DrawableCompat.setTint(drawableWrap.mutate(), i);
        Utils.setBackground(view, drawableWrap);
    }

    private void initHandleMovement() {
        this.handle.setOnTouchListener(new View.OnTouchListener() { // from class: com.futuremind.recyclerviewfastscroll.FastScroller.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                FastScroller.this.requestDisallowInterceptTouchEvent(true);
                if (motionEvent.getAction() == 0 || motionEvent.getAction() == 2) {
                    if (FastScroller.this.titleProvider != null && motionEvent.getAction() == 0) {
                        FastScroller.this.viewProvider.onHandleGrabbed();
                    }
                    FastScroller.this.manuallyChangingPosition = true;
                    float relativeTouchPosition = FastScroller.this.getRelativeTouchPosition(motionEvent);
                    FastScroller.this.setScrollerPosition(relativeTouchPosition);
                    FastScroller.this.setRecyclerViewPosition(relativeTouchPosition);
                    return true;
                }
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                FastScroller.this.manuallyChangingPosition = false;
                if (FastScroller.this.titleProvider != null) {
                    FastScroller.this.viewProvider.onHandleReleased();
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getRelativeTouchPosition(MotionEvent motionEvent) {
        if (isVertical()) {
            return (motionEvent.getRawY() - Utils.getViewRawY(this.handle)) / (getHeight() - this.handle.getHeight());
        }
        return (motionEvent.getRawX() - Utils.getViewRawX(this.handle)) / (getWidth() - this.handle.getWidth());
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        this.maxVisibility = i;
        invalidateVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateVisibility() {
        if (this.recyclerView.getAdapter() == null || this.recyclerView.getAdapter().getItemCount() == 0 || this.recyclerView.getChildAt(0) == null || isRecyclerViewNotScrollable() || this.maxVisibility != 0) {
            super.setVisibility(4);
        } else {
            super.setVisibility(0);
        }
    }

    private boolean isRecyclerViewNotScrollable() {
        if (isVertical()) {
            return this.recyclerView.getChildAt(0).getHeight() * this.recyclerView.getAdapter().getItemCount() <= this.recyclerView.getHeight();
        }
        return this.recyclerView.getChildAt(0).getWidth() * this.recyclerView.getAdapter().getItemCount() <= this.recyclerView.getWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRecyclerViewPosition(float f) {
        if (this.recyclerView == null) {
            return;
        }
        int itemCount = this.recyclerView.getAdapter().getItemCount();
        int valueInRange = (int) Utils.getValueInRange(0.0f, itemCount - 1, (int) (f * itemCount));
        this.recyclerView.scrollToPosition(valueInRange);
        if (this.titleProvider == null || this.bubbleTextView == null) {
            return;
        }
        this.bubbleTextView.setText(this.titleProvider.getSectionTitle(valueInRange));
    }

    void setScrollerPosition(float f) {
        if (isVertical()) {
            this.bubble.setY(Utils.getValueInRange(0.0f, getHeight() - this.bubble.getHeight(), ((getHeight() - this.handle.getHeight()) * f) + this.bubbleOffset));
            this.handle.setY(Utils.getValueInRange(0.0f, getHeight() - this.handle.getHeight(), f * (getHeight() - this.handle.getHeight())));
        } else {
            this.bubble.setX(Utils.getValueInRange(0.0f, getWidth() - this.bubble.getWidth(), ((getWidth() - this.handle.getWidth()) * f) + this.bubbleOffset));
            this.handle.setX(Utils.getValueInRange(0.0f, getWidth() - this.handle.getWidth(), f * (getWidth() - this.handle.getWidth())));
        }
    }

    public boolean isVertical() {
        return this.scrollerOrientation == 1;
    }

    boolean shouldUpdateHandlePosition() {
        return (this.handle == null || this.manuallyChangingPosition || this.recyclerView.getChildCount() <= 0) ? false : true;
    }

    ScrollerViewProvider getViewProvider() {
        return this.viewProvider;
    }
}
