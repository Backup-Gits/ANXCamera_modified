.class public Lcom/miui/whetstone/app/WhetstoneAppManager;
.super Ljava/lang/Object;
.source "WhetstoneAppManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WhetstoneAppManager"

.field private static final UNINIT:I = -0x2

.field private static _sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

.field private static final sMutex:Ljava/lang/Object;

.field private static sPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplicationThread:Landroid/os/IBinder;

.field private mContex:Landroid/content/Context;

.field public mEnable:Z

.field public mHasInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->sPackages:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mApplicationThread:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/whetstone/app/WhetstoneAppManager;->attach(Landroid/content/Context;)V

    return-void
.end method

.method public static addBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static addBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    return-void
.end method

.method public static addDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method private checkInit()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2

    const-class v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v1}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    sput-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    :cond_0
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/whetstone/app/WhetstoneAppManager;
    .locals 2

    const-class v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    :cond_0
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLeakCanaryWorksProperty()Z
    .locals 2

    const-string/jumbo v0, "persist.sys.mem_leak_debug"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static handleTrimMemory(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static restoreDirectBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public static setHardwareRendererIfNeeded()V
    .locals 0

    return-void
.end method

.method public static setWhetstonePackageRecordInfo(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public static trimHeapSizeIfNeeded(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
