.class Lmiui/slide/SlideCoverEventManager$2;
.super Lmiui/process/IActivityChangeListener$Stub;
.source "SlideCoverEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method constructor <init>(Lmiui/slide/SlideCoverEventManager;)V
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$2;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0}, Lmiui/process/IActivityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$2;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager;->access$200(Lmiui/slide/SlideCoverEventManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
