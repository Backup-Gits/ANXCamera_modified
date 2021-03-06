.class public Lmiui/app/ToggleManagerCompatibility;
.super Ljava/lang/Object;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;,
        Lmiui/app/ToggleManagerCompatibility$Point;,
        Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;
    }
.end annotation


# static fields
.field public static final CUSTOM_BASE_ID:I = 0x2710

.field private static final PROCESS_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final TAG:Ljava/lang/String; = "ToggleManagerCompatibility"

.field private static mCustomIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleComponentNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleImages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleLabelNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomToggleOffColor:I

.field private static mCustomToggleOnColor:I

.field private static mCustomToggleStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static mEnableCustom:Z

.field private static mIsSystemUI:Z

.field private static mObjectLock:Ljava/lang/Object;

.field private static mToggleManager:Lmiui/app/ToggleManager;

.field private static mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mCustomToggleChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

.field private final mDevelopmentObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mTogglOrderObserver:Landroid/database/ContentObserver;

.field private mToggleChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/app/ToggleManager$OnToggleChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mToggleOrderChangedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/app/ToggleManager$OnToggleOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    const/4 v0, 0x0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-direct {v0, p0}, Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;-><init>(Lmiui/app/ToggleManagerCompatibility;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    new-instance v0, Lmiui/app/ToggleManagerCompatibility$1;

    invoke-direct {v0, p0}, Lmiui/app/ToggleManagerCompatibility$1;-><init>(Lmiui/app/ToggleManagerCompatibility;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lmiui/app/ToggleManagerCompatibility$2;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/app/ToggleManagerCompatibility$2;-><init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lmiui/app/ToggleManagerCompatibility$3;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lmiui/app/ToggleManagerCompatibility$3;-><init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-nez v0, :cond_0

    invoke-static {p1}, Lmiui/app/ToggleManager;->createInstance(Landroid/content/Context;)Lmiui/app/ToggleManager;

    move-result-object v0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "ToggleManagerCompatibility"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11050054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->registerListener(Z)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/app/ToggleManagerCompatibility;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 1

    invoke-static {p0, p1}, Lmiui/app/ToggleManagerCompatibility;->isSystemApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getMd5Num(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lmiui/app/ToggleManagerCompatibility;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    return v0
.end method

.method static synthetic access$900(Lmiui/app/ToggleManagerCompatibility;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)Lmiui/app/ToggleManagerCompatibility;
    .locals 2

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/app/ToggleManagerCompatibility;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/ToggleManagerCompatibility;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    return-object v0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v3

    :cond_3
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getCustomToggleIds(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getToggleList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    :try_start_0
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x2710

    if-lt v4, v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-object v0
.end method

.method public static getCustomToggleTileSpecById(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getCustomToggleTileSpecs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getImageDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getStatus(I)Z

    move-result v1

    sget v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    sget v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    move v0, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    sget v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOnColor:I

    sget v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleOffColor:I

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDrawable(IZLandroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 15

    move v1, p0

    move-object/from16 v2, p2

    sget-object v3, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    const/16 v4, 0x2710

    if-lt v1, v4, :cond_1

    :try_start_0
    sget-object v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v5, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    move-object v0, v5

    goto :goto_0

    :cond_0
    monitor-exit v3

    return-object v0

    :cond_1
    sget-object v5, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static/range {p0 .. p2}, Lmiui/app/ToggleManager;->getImageDrawable(IZLandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v0, v5

    :goto_0
    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    const/4 v7, 0x0

    if-nez p1, :cond_5

    if-lt v1, v4, :cond_4

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x110701a5

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v4, v7, v7, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v7, Lmiui/app/ToggleManagerCompatibility$Point;

    invoke-direct {v7}, Lmiui/app/ToggleManagerCompatibility$Point;-><init>()V

    invoke-static {v2, v7}, Lmiui/app/ToggleManagerCompatibility;->getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V

    iget v10, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    int-to-double v10, v10

    div-double/2addr v10, v5

    double-to-int v10, v10

    iget v11, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    int-to-double v11, v11

    div-double/2addr v11, v5

    double-to-int v5, v11

    invoke-static {v2, v0, v10, v5}, Lmiui/app/ToggleManagerCompatibility;->zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    nop

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v0, v5, v5, v6, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v10, p5

    :try_start_2
    invoke-virtual {v0, v10, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_2
    move/from16 v10, p5

    :goto_1
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v6, v11, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v6

    goto :goto_2

    :cond_3
    move/from16 v10, p5

    :goto_2
    move/from16 v11, p3

    move/from16 v12, p4

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move/from16 v10, p5

    goto/16 :goto_4

    :cond_4
    move/from16 v10, p5

    move/from16 v11, p3

    move/from16 v12, p4

    goto/16 :goto_6

    :cond_5
    move/from16 v10, p5

    if-lt v1, v4, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x110701a6

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v4, v7, v7, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v11, p3

    :try_start_3
    invoke-virtual {v4, v11, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_6
    move/from16 v11, p3

    :goto_3
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v7, Lmiui/app/ToggleManagerCompatibility$Point;

    invoke-direct {v7}, Lmiui/app/ToggleManagerCompatibility$Point;-><init>()V

    invoke-static {v2, v7}, Lmiui/app/ToggleManagerCompatibility;->getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V

    iget v12, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    int-to-double v12, v12

    div-double/2addr v12, v5

    double-to-int v12, v12

    iget v13, v7, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    int-to-double v13, v13

    div-double/2addr v13, v5

    double-to-int v5, v13

    invoke-static {v2, v0, v12, v5}, Lmiui/app/ToggleManagerCompatibility;->zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    nop

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-virtual {v0, v5, v5, v6, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v12, p4

    :try_start_4
    invoke-virtual {v0, v12, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v6, v13, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v6

    goto :goto_6

    :cond_7
    move/from16 v12, p4

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    :goto_4
    move/from16 v11, p3

    :goto_5
    move/from16 v12, p4

    goto :goto_7

    :cond_8
    move/from16 v11, p3

    move/from16 v12, p4

    :goto_6
    monitor-exit v3

    return-object v0

    :catchall_3
    move-exception v0

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v10, p5

    :goto_7
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_7
.end method

.method private static getMd5Num(Ljava/lang/String;)I
    .locals 4

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getStatus(I)Z
    .locals 3

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    :try_start_0
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0}, Lmiui/app/ToggleManager;->getStatus(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    const/16 v2, 0x2710

    if-lt p0, v2, :cond_0

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    :cond_0
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getTargetDrawableSize(Landroid/content/Context;Lmiui/app/ToggleManagerCompatibility$Point;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x140

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1e0

    const/16 v3, 0x82

    if-eq v1, v2, :cond_1

    const/16 v2, 0x280

    if-eq v1, v2, :cond_0

    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x96

    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_0

    :cond_1
    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    iput v3, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x5e

    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mHeight:I

    iput v2, p1, Lmiui/app/ToggleManagerCompatibility$Point;->mWidth:I

    nop

    :goto_0
    return-void
.end method

.method public static getToggleList(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "status_bar_toggle_list_order_new"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "status_bar_toggle_page_order"

    :goto_0
    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getUserId(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    :goto_0
    return v1
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getUserSelectedToggleOrder(Landroid/content/Context;ZI)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "status_bar_toggle_list_order_new"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "status_bar_toggle_page_order"

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v5, v6, :cond_3

    :try_start_1
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_1

    sget-object v7, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {v6}, Lmiui/app/ToggleManager;->getName(I)I

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    sget-object v4, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v4

    invoke-static {p0, v4}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v4

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v5

    invoke-static {p0, v1, v4, v5}, Lmiui/app/ToggleManager;->validateToggleOrder(Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static initDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public static isDisabled(I)Z
    .locals 1

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    return v0
.end method

.method public static isInternationalBuilder()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static isListStyle(Landroid/content/Context;I)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "status_bar_style_type"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isSystemApp(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static isValid(Landroid/content/Context;I)Z
    .locals 3

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_0

    :try_start_0
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {p0, p1}, Lmiui/app/ToggleManager;->isValid(Landroid/content/Context;I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static onCustomTileChanged(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 4

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lmiui/app/ToggleManagerCompatibility;->updateUserSelectedToggleOrder(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queryCustomToggles(Z)V
    .locals 4

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleQueryRunnable:Lmiui/app/ToggleManagerCompatibility$CustomToggleQueryRunnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private registerListener(Z)V
    .locals 9

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_0
    sget-boolean v1, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    :goto_1
    move-object v5, v1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "development_settings_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "status_bar_toggle_page_order"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "status_bar_toggle_list_order_new"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public static resetInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManagerCompatibility:Lmiui/app/ToggleManagerCompatibility;

    return-void
.end method

.method public static toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateImageView(ILandroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lmiui/app/ToggleManagerCompatibility;->updateImageView(ILandroid/widget/ImageView;I)V

    return-void
.end method

.method public static updateImageView(ILandroid/widget/ImageView;I)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lmiui/app/ToggleManagerCompatibility;->getImageDrawable(ILandroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    if-lt p0, v1, :cond_1

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getStatus(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public static updateTextView(ILandroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->getStatusName(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected static updateToggleStatus(IZ)V
    .locals 4

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_0

    :try_start_0
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v1, p0, p1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updateUserSelectedToggleOrder(Landroid/content/Context;)V
    .locals 11

    const/4 v0, 0x0

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, v1}, Lmiui/app/ToggleManagerCompatibility;->isListStyle(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "status_bar_toggle_list_order_new"

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "status_bar_toggle_page_order"

    :goto_0
    nop

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getToggleList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, " "

    if-nez v6, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_2

    :try_start_0
    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    sget-object v9, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    :cond_3
    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {p0}, Lmiui/app/ToggleManagerCompatibility;->getUserId(Landroid/content/Context;)I

    move-result v7

    invoke-static {v6, v3, v4, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static zoomDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-static/range {p1 .. p1}, Lmiui/app/ToggleManagerCompatibility;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v10, v0

    move/from16 v11, p2

    int-to-float v0, v11

    int-to-float v1, v7

    div-float v12, v0, v1

    move/from16 v13, p3

    int-to-float v0, v13

    int-to-float v1, v8

    div-float v14, v0, v1

    invoke-virtual {v10, v12, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    move v3, v7

    move v4, v8

    move-object v5, v10

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mDevelopmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility;->mTogglOrderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0}, Lmiui/app/ToggleManager;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "sToggleManager"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_4
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_5
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_6
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleStatus:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_7
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_8
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_a
    sput-object v1, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-static {}, Lmiui/app/ToggleManagerCompatibility;->resetInstance()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method

.method public performToggle(I)Z
    .locals 1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->performToggle(I)Z

    move-result v0

    return v0
.end method

.method public queryCustomToggles()V
    .locals 1

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mIsSystemUI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCustomToggleChangeListener(Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->removeToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    :cond_1
    return-void
.end method

.method public removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->removeToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V

    :cond_1
    return-void
.end method

.method public setOnCustomToggleChangeListener(Lmiui/app/ToggleManagerCompatibility$OnCustomToggleChangedListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V
    .locals 2

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setOnToggleChangedListener(Lmiui/app/ToggleManager$OnToggleChangedListener;)V

    :cond_0
    return-void
.end method

.method public setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V
    .locals 1

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleOrderChangedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setOnToggleOrderChangeListener(Lmiui/app/ToggleManager$OnToggleOrderChangedListener;)V

    :cond_1
    return-void
.end method

.method public setUserSelectedToggleOrder(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1}, Lmiui/app/ToggleManager;->setUserSelectedToggleOrder(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateCustomToggleImageAndText(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lmiui/app/ToggleManagerCompatibility;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v4, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleComponentNames:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p4, :cond_4

    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleImages:Ljava/util/HashMap;

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmiui/app/ToggleManagerCompatibility;->mCustomToggleLabelNames:Ljava/util/HashMap;

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, p5}, Lmiui/app/ToggleManagerCompatibility;->updateToggleStatus(IZ)V

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    iget-object v4, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/app/ToggleManager$OnToggleChangedListener;

    if-nez v5, :cond_1

    iget-object v6, p0, Lmiui/app/ToggleManagerCompatibility;->mToggleChangedListener:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lmiui/app/ToggleManager$OnToggleChangedListener;->OnToggleChanged(I)V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    goto :goto_3

    :cond_3
    goto :goto_0

    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateToggleDisabled(IZ)V
    .locals 1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmiui/app/ToggleManagerCompatibility;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0, p1, p2}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    return-void
.end method
