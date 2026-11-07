.class public Lcom/tencent/qnet/ui/float_window/FWService;
.super Landroid/app/Service;
.source "FWService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static Instance:Lcom/tencent/qnet/ui/float_window/FWService;


# instance fields
.field m_expand:Landroid/widget/LinearLayout;

.field m_float_window:Landroid/widget/LinearLayout;

.field m_float_window_info:Landroid/widget/LinearLayout;

.field m_fw_params:Landroid/view/WindowManager$LayoutParams;

.field m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

.field m_helperWnd:Landroid/view/View;

.field m_img_expand:Landroid/widget/ImageView;

.field m_img_icon:Landroid/widget/ImageView;

.field m_img_start:Landroid/widget/ImageView;

.field m_info_root:Landroid/widget/LinearLayout;

.field private m_is_expanded:Z

.field private m_is_started:Z

.field private m_ping_running:Z

.field m_qnet_activity:Z

.field m_root:Landroid/widget/LinearLayout;

.field private m_status_bar_visible:Z

.field private m_thread:Ljava/lang/Thread;

.field private m_update_ping_thread:Ljava/lang/Thread;

.field m_window_manager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_status_bar_visible:Z

    .line 60
    iput-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_started:Z

    .line 61
    iput-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_expanded:Z

    .line 63
    iput-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_qnet_activity:Z

    .line 65
    iput-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_ping_running:Z

    .line 67
    new-instance v0, Lcom/tencent/qnet/ui/float_window/FWService$1;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/float_window/FWService$1;-><init>(Lcom/tencent/qnet/ui/float_window/FWService;)V

    iput-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_update_ping_thread:Ljava/lang/Thread;

    .line 138
    sput-object p0, Lcom/tencent/qnet/ui/float_window/FWService;->Instance:Lcom/tencent/qnet/ui/float_window/FWService;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qnet/ui/float_window/FWService;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_ping_running:Z

    return p0
.end method

.method static synthetic access$002(Lcom/tencent/qnet/ui/float_window/FWService;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_ping_running:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qnet/ui/float_window/FWService;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_status_bar_visible:Z

    return p0
.end method

.method static synthetic access$102(Lcom/tencent/qnet/ui/float_window/FWService;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_status_bar_visible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qnet/ui/float_window/FWService;IIZ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qnet/ui/float_window/FWService;->save_fw_pos(IIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qnet/ui/float_window/FWService;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_started:Z

    return p0
.end method

.method static synthetic access$302(Lcom/tencent/qnet/ui/float_window/FWService;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_started:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qnet/ui/float_window/FWService;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/float_window/FWService;->updateInfoActiveStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/qnet/ui/float_window/FWService;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_expanded:Z

    return p0
.end method

.method static synthetic access$502(Lcom/tencent/qnet/ui/float_window/FWService;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_expanded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/qnet/ui/float_window/FWService;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/float_window/FWService;->updateFWInfo(I)V

    return-void
.end method

.method private createHelperWnd()V
    .locals 3

    :try_start_0
    const-string v0, "window"

    .line 416
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/float_window/FWService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 417
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v2, 0x7f6

    .line 418
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x35

    .line 419
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v2, 0x8

    .line 420
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, 0x1

    .line 421
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x1

    .line 422
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x2

    .line 423
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 424
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_helperWnd:Landroid/view/View;

    .line 426
    iget-object v2, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_helperWnd:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_helperWnd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 428
    new-instance v2, Lcom/tencent/qnet/ui/float_window/FWService$7;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qnet/ui/float_window/FWService$7;-><init>(Lcom/tencent/qnet/ui/float_window/FWService;Landroid/view/WindowManager;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private create_fw(ZI)V
    .locals 2

    .line 162
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    .line 163
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_window_manager:Landroid/view/WindowManager;

    .line 165
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 167
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 169
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x8

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string p1, "FW_PRES"

    const/4 p2, 0x0

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qnet/ui/float_window/FWService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 174
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FW_X"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 175
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FW_Y"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 178
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 179
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 181
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0039

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window:Landroid/widget/LinearLayout;

    .line 185
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_window_manager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2, p2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 189
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window:Landroid/widget/LinearLayout;

    const p2, 0x7f090057

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_root:Landroid/widget/LinearLayout;

    return-void
.end method

.method private create_fw_info(I)V
    .locals 3

    .line 195
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    .line 196
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_window_manager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_window_manager:Landroid/view/WindowManager;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 201
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 203
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string p1, "FW_PRES"

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, p1, v0}, Lcom/tencent/qnet/ui/float_window/FWService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 207
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 208
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 209
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 212
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 213
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x43160000    # 150.0f

    mul-float p1, p1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 215
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 217
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c003b

    const/4 v2, 0x0

    .line 219
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    .line 221
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_window_manager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_fw_params_info:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 225
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    const v0, 0x7f090056

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_info_root:Landroid/widget/LinearLayout;

    return-void
.end method

.method private create_qnet_fw()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 232
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_expanded:Z

    const/16 v1, 0x7f6

    invoke-direct {p0, v0, v1}, Lcom/tencent/qnet/ui/float_window/FWService;->create_fw(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_expanded:Z

    const/16 v1, 0x7d3

    invoke-direct {p0, v0, v1}, Lcom/tencent/qnet/ui/float_window/FWService;->create_fw(ZI)V

    .line 237
    :goto_0
    invoke-direct {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->init_events()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private create_qnet_fw_info()V
    .locals 1

    const/16 v0, 0x7f6

    .line 246
    :try_start_0
    invoke-direct {p0, v0}, Lcom/tencent/qnet/ui/float_window/FWService;->create_fw_info(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x7d3

    .line 248
    :try_start_1
    invoke-direct {p0, v0}, Lcom/tencent/qnet/ui/float_window/FWService;->create_fw_info(I)V

    .line 251
    :goto_0
    invoke-direct {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->init_events_info()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/tencent/qnet/ui/float_window/FWService;
    .locals 1

    .line 142
    sget-object v0, Lcom/tencent/qnet/ui/float_window/FWService;->Instance:Lcom/tencent/qnet/ui/float_window/FWService;

    return-object v0
.end method

.method private getProfileOutInfo(Lcom/tencent/qnet/net/NetProfile;)Ljava/lang/String;
    .locals 11

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/global/GlobalSettings;->dumpPcap()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const-string v1, "%s %s\n"

    .line 521
    new-array v5, v3, [Ljava/lang/Object;

    const v6, 0x7f100041

    invoke-virtual {p0, v6}, Lcom/tencent/qnet/ui/float_window/FWService;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const v6, 0x7f100043

    invoke-virtual {p0, v6}, Lcom/tencent/qnet/ui/float_window/FWService;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "OutDelay"

    .line 524
    invoke-virtual {p1, v1}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v5, "InDelay"

    .line 525
    invoke-virtual {p1, v5}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-gtz v1, :cond_1

    if-lez v5, :cond_2

    :cond_1
    const-string v7, "%s: %d / %d ms\n"

    .line 527
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100046

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "OutDelayBias"

    .line 529
    invoke-virtual {p1, v1}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v5, "InDelayBias"

    .line 530
    invoke-virtual {p1, v5}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v5

    if-gtz v1, :cond_3

    if-lez v5, :cond_4

    :cond_3
    const-string v7, "%s: %d / %d ms\n"

    .line 532
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100045

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "OutRate"

    .line 534
    invoke-virtual {p1, v1}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v5, "InRate"

    .line 535
    invoke-virtual {p1, v5}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v5

    if-gtz v1, :cond_5

    if-lez v5, :cond_6

    :cond_5
    const-string v7, "%s: %d / %d %%\n"

    .line 537
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10004e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v1, "OutBandwidth"

    .line 539
    invoke-virtual {p1, v1}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v5, "InBandwidth"

    .line 540
    invoke-virtual {p1, v5}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v5

    if-gtz v1, :cond_7

    if-lez v5, :cond_8

    :cond_7
    const-string v7, "%s: %d / %d kbps\n"

    .line 542
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100044

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "OutPass"

    .line 545
    invoke-virtual {p1, v1}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v5, "OutLoss"

    .line 546
    invoke-virtual {p1, v5}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v5

    if-gtz v1, :cond_9

    if-lez v5, :cond_a

    :cond_9
    const-string v7, "%s: %d / %d ms\n"

    .line 548
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100049

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v1, "InPass"

    .line 550
    invoke-virtual {p1, v1}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v5, "InLoss"

    .line 551
    invoke-virtual {p1, v5}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v5

    if-gtz v1, :cond_b

    if-lez v5, :cond_c

    :cond_b
    const-string v7, "%s: %d / %d ms\n"

    .line 553
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f100047

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v1, "Protocol"

    .line 556
    invoke-virtual {p1, v1}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v6, :cond_e

    and-int/lit8 v1, p1, 0x1

    const v5, 0x7f10004d

    if-lez v1, :cond_d

    const-string p1, "%s: %s\n"

    .line 560
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "TCP"

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_d
    and-int/2addr p1, v3

    if-lez p1, :cond_e

    const-string p1, "%s: %s\n"

    .line 562
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "UDP"

    aput-object v2, v1, v4

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_e
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_f

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 569
    :cond_f
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f100048

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init_events()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window:Landroid/widget/LinearLayout;

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_icon:Landroid/widget/ImageView;

    .line 274
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/qnet/ui/float_window/FWService$2;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/float_window/FWService$2;-><init>(Lcom/tencent/qnet/ui/float_window/FWService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_icon:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/qnet/ui/float_window/FWService$3;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/float_window/FWService$3;-><init>(Lcom/tencent/qnet/ui/float_window/FWService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 330
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window:Landroid/widget/LinearLayout;

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_start:Landroid/widget/ImageView;

    const/4 v0, 0x1

    .line 331
    sput-boolean v0, Lcom/tencent/qnet/core/LocalVpnService;->IsActive:Z

    .line 332
    sget-boolean v0, Lcom/tencent/qnet/core/LocalVpnService;->IsActive:Z

    iput-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_started:Z

    .line 334
    iget-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_started:Z

    invoke-direct {p0, v0}, Lcom/tencent/qnet/ui/float_window/FWService;->updateInfoActiveStatus(Z)V

    .line 335
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_start:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_is_started:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08006f

    goto :goto_0

    :cond_0
    const v1, 0x7f080070

    :goto_0
    invoke-virtual {p0, v1}, Lcom/tencent/qnet/ui/float_window/FWService;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_start:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/qnet/ui/float_window/FWService$4;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/float_window/FWService$4;-><init>(Lcom/tencent/qnet/ui/float_window/FWService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window:Landroid/widget/LinearLayout;

    const v1, 0x7f090061

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_expand:Landroid/widget/ImageView;

    .line 351
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_img_expand:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/qnet/ui/float_window/FWService$5;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/float_window/FWService$5;-><init>(Lcom/tencent/qnet/ui/float_window/FWService;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private init_events_info()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_info_root:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/qnet/ui/float_window/FWService$6;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/float_window/FWService$6;-><init>(Lcom/tencent/qnet/ui/float_window/FWService;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private save_fw_pos(IIZ)V
    .locals 2

    :try_start_0
    const-string v0, "FW_PRES"

    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qnet/ui/float_window/FWService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "FW_X"

    .line 261
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "FW_Y"

    .line 262
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "FW_MODE"

    .line 263
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateFWInfo(I)V
    .locals 5

    .line 494
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 495
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposal()Ljava/util/List;

    move-result-object v0

    .line 496
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/net/NetProfile;

    .line 497
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    const v1, 0x7f0900f3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%s"

    const/4 v2, 0x1

    .line 498
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 500
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/float_window/FWService;->getProfileOutInfo(Lcom/tencent/qnet/net/NetProfile;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateInfoActiveStatus(Z)V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10004b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1060015

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10004c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1060017

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 149
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/global/GlobalSettings;->showFWInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->create_qnet_fw_info()V

    .line 151
    :cond_0
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/global/GlobalSettings;->showFWCtrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->create_qnet_fw()V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_update_ping_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->onProfileChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 451
    sput-object v0, Lcom/tencent/qnet/ui/float_window/FWService;->Instance:Lcom/tencent/qnet/ui/float_window/FWService;

    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_ping_running:Z

    .line 454
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_window_manager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_window_manager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_float_window_info:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 460
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onProfileChanged()V
    .locals 5

    .line 466
    :try_start_0
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager;->getProfileList()Ljava/util/List;

    move-result-object v0

    .line 467
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/profile/ProposalManager;->GetSelectedProfileID()I

    move-result v1

    .line 468
    iget-object v2, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_expand:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/tencent/qnet/ui/float_window/FWService;->m_expand:Landroid/widget/LinearLayout;

    const v3, 0x7f090076

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 471
    new-instance v3, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/float_window/FWService;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 472
    invoke-virtual {v3, v1}, Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;->setSelectPosition(I)V

    .line 473
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 474
    new-instance v0, Lcom/tencent/qnet/ui/float_window/FWService$8;

    invoke-direct {v0, p0, v3}, Lcom/tencent/qnet/ui/float_window/FWService$8;-><init>(Lcom/tencent/qnet/ui/float_window/FWService;Lcom/tencent/qnet/ui/float_window/QnetListViewAdapter;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 485
    :cond_0
    invoke-direct {p0, v1}, Lcom/tencent/qnet/ui/float_window/FWService;->updateFWInfo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 487
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    sget-object v1, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProfileChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized run()V
    .locals 0

    monitor-enter p0

    .line 446
    monitor-exit p0

    return-void
.end method
