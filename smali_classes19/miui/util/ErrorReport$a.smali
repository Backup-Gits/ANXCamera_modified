.class Lmiui/util/ErrorReport$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/util/ErrorReport$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/ErrorReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private QU:Landroid/content/Context;

.field private RU:Ljava/lang/String;

.field private SU:Landroid/app/ActivityManager$ProcessErrorStateInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/util/ErrorReport$a;->QU:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/ErrorReport$a;->RU:Ljava/lang/String;

    iput-object p3, p0, Lmiui/util/ErrorReport$a;->SU:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method


# virtual methods
.method public getData()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lmiui/util/ErrorReport$a;->QU:Landroid/content/Context;

    iget-object v1, p0, Lmiui/util/ErrorReport$a;->RU:Ljava/lang/String;

    iget-object p0, p0, Lmiui/util/ErrorReport$a;->SU:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-static {v0, v1, p0}, Lmiui/util/ErrorReport;->getAnrData(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
