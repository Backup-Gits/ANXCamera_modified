.class Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;
.super Ljava/lang/Thread;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

.field final synthetic val$_on:Z


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    iput-boolean p3, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-static {v0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->access$300(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    invoke-static {v0}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->access$300(Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    :goto_0
    iget-object v0, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->this$0:Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;

    iget-boolean v1, p0, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand$1;->val$_on:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lmiui/maml/ActionCommand$UsbStorageSwitchCommand;->updateState(I)V

    return-void
.end method
