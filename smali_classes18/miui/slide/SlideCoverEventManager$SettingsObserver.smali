.class final Lmiui/slide/SlideCoverEventManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SlideCoverEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/slide/SlideCoverEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/slide/SlideCoverEventManager;


# direct methods
.method public constructor <init>(Lmiui/slide/SlideCoverEventManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 13

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v1}, Lmiui/slide/SlideCoverEventManager;->access$1600(Lmiui/slide/SlideCoverEventManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "drive_mode_drive_mode"

    const-string v4, "gb_boosting"

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v10

    goto :goto_1

    :sswitch_1
    const-string v2, "status_bar_in_call_notification_floating"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v9

    goto :goto_1

    :sswitch_2
    const-string v2, "miui_slider_launch_pkg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_1

    :sswitch_4
    const-string v2, "miui_slider_tool_choice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    goto :goto_1

    :sswitch_5
    const-string v2, "miui_slider_sound_check"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v11, "SlideCoverEventManager"

    if-eqz v2, :cond_8

    const/4 v12, -0x2

    if-eq v2, v10, :cond_6

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v2, v1}, Lmiui/slide/SlideCoverEventManager;->access$2300(Lmiui/slide/SlideCoverEventManager;Landroid/content/ContentResolver;)V

    goto/16 :goto_2

    :cond_2
    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v2, v1}, Lmiui/slide/SlideCoverEventManager;->access$2200(Lmiui/slide/SlideCoverEventManager;Landroid/content/ContentResolver;)V

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v2, v1}, Lmiui/slide/SlideCoverEventManager;->access$2100(Lmiui/slide/SlideCoverEventManager;Landroid/content/ContentResolver;)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v1, v4, v9, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v10, :cond_5

    move v9, v10

    :cond_5
    invoke-static {v2, v9}, Lmiui/slide/SlideCoverEventManager;->access$2002(Lmiui/slide/SlideCoverEventManager;Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGameBoostMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v3}, Lmiui/slide/SlideCoverEventManager;->access$2000(Lmiui/slide/SlideCoverEventManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v1, v3, v9, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7

    move v9, v10

    :cond_7
    invoke-static {v2, v9}, Lmiui/slide/SlideCoverEventManager;->access$1902(Lmiui/slide/SlideCoverEventManager;Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInDriveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v3}, Lmiui/slide/SlideCoverEventManager;->access$1900(Lmiui/slide/SlideCoverEventManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v2, v1}, Lmiui/slide/SlideCoverEventManager;->access$1700(Lmiui/slide/SlideCoverEventManager;Landroid/content/ContentResolver;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneForegroundState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/slide/SlideCoverEventManager$SettingsObserver;->this$0:Lmiui/slide/SlideCoverEventManager;

    invoke-static {v3}, Lmiui/slide/SlideCoverEventManager;->access$1800(Lmiui/slide/SlideCoverEventManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7eb77517 -> :sswitch_5
        -0x3491c8c7 -> :sswitch_4
        -0x167de7bd -> :sswitch_3
        -0x9ab3f1 -> :sswitch_2
        0x469b48da -> :sswitch_1
        0x593d229f -> :sswitch_0
    .end sparse-switch
.end method
