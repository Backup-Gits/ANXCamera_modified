.class Lmiui/view/VolumeDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$200(Lmiui/view/VolumeDialog;)I

    move-result v3

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$200(Lmiui/view/VolumeDialog;)I

    move-result v3

    if-eq v3, v1, :cond_0

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$300(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v1

    iget-object v3, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->access$300(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v1, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v1, v2}, Lmiui/view/VolumeDialog;->access$202(Lmiui/view/VolumeDialog;I)I

    :cond_1
    return-void
.end method
