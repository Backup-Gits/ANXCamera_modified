.class Landroid/telecom/RemoteConnectionService$1$2;
.super Landroid/telecom/RemoteConnection$Callback;
.source "RemoteConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/RemoteConnectionService$1;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/RemoteConnectionService$1;

.field final synthetic val$callId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1$2;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iput-object p2, p0, Landroid/telecom/RemoteConnectionService$1$2;->val$callId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/telecom/RemoteConnection$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/RemoteConnection;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1$2;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iget-object v0, v0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1$2;->val$callId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1$2;->this$1:Landroid/telecom/RemoteConnectionService$1;

    iget-object v0, v0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$800(Landroid/telecom/RemoteConnectionService;)V

    return-void
.end method
