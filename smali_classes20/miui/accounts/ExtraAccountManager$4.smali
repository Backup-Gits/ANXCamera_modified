.class Lmiui/accounts/ExtraAccountManager$4;
.super Landroid/content/BroadcastReceiver;
.source "ExtraAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/accounts/ExtraAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/accounts/ExtraAccountManager;


# direct methods
.method constructor <init>(Lmiui/accounts/ExtraAccountManager;)V
    .locals 0

    iput-object p1, p0, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$300(Lmiui/accounts/ExtraAccountManager;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    iget-object v0, v1, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    iget-object v7, v1, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Handler;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/accounts/MiuiOnAccountsUpdateListener;

    invoke-static {v7, v8, v9, v4}, Lmiui/accounts/ExtraAccountManager;->access$400(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;[Landroid/accounts/Account;)V

    goto :goto_0

    :cond_1
    monitor-exit v5

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const-string v0, "extra_account"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/accounts/Account;

    const-string v0, "extra_bundle"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    const/4 v0, -0x1

    const-string v4, "extra_update_type"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    if-eqz v11, :cond_4

    if-lez v13, :cond_4

    iget-object v0, v1, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v14

    monitor-enter v14

    :try_start_1
    iget-object v0, v1, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-static {v0}, Lmiui/accounts/ExtraAccountManager;->access$100(Lmiui/accounts/ExtraAccountManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v15, v4

    iget-object v4, v1, Lmiui/accounts/ExtraAccountManager$4;->this$0:Lmiui/accounts/ExtraAccountManager;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/accounts/MiuiOnAccountsUpdateListener;

    const-string v7, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move-object v7, v11

    move v8, v13

    move-object v9, v12

    invoke-static/range {v4 .. v10}, Lmiui/accounts/ExtraAccountManager;->access$200(Lmiui/accounts/ExtraAccountManager;Landroid/os/Handler;Lmiui/accounts/MiuiOnAccountsUpdateListener;Landroid/accounts/Account;ILandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_3
    monitor-exit v14

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    const-string v0, "ExtraAccountManager"

    const-string v4, "account changed, but no account or type"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    nop

    :goto_4
    return-void
.end method
