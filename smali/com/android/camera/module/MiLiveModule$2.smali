.class Lcom/android/camera/module/MiLiveModule$2;
.super Ljava/lang/Object;
.source "MiLiveModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl$IRecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MiLiveModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MiLiveModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecorderCancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v0}, Lcom/android/camera/module/MiLiveModule;->access$400(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRecorderCancel"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p0}, Lcom/android/camera/module/MiLiveModule;->access$700(Lcom/android/camera/module/MiLiveModule;)V

    return-void
.end method

.method public onRecorderError()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v0}, Lcom/android/camera/module/MiLiveModule;->access$400(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRecorderError"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p0}, Lcom/android/camera/module/MiLiveModule;->access$700(Lcom/android/camera/module/MiLiveModule;)V

    return-void
.end method

.method public onRecorderFinish(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v2}, Lcom/android/camera/module/MiLiveModule;->access$600(Lcom/android/camera/module/MiLiveModule;)Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getTotalRecordingTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p1}, Lcom/android/camera/module/MiLiveModule;->access$400(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onFinish of no segments !!"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p1}, Lcom/android/camera/module/MiLiveModule;->access$700(Lcom/android/camera/module/MiLiveModule;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object v4, v3, Lcom/android/camera/module/MiLiveModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, v3, Lcom/android/camera/module/MiLiveModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v4, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v3}, Lcom/android/camera/module/MiLiveModule;->access$400(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "listen none"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v3}, Lcom/android/camera/module/MiLiveModule;->access$800(Lcom/android/camera/module/MiLiveModule;)V

    iget-object v3, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v3, p1, p2}, Lcom/android/camera/module/MiLiveModule;->access$900(Lcom/android/camera/module/MiLiveModule;Ljava/util/List;Ljava/lang/String;)V

    :goto_1
    xor-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isBackCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1, v1}, Lcom/android/camera/module/BaseModule;->updateZoomRatioToggleButtonState(Z)V

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isUltraWideBackCamera()Z

    move-result p1

    const p2, 0x3f19999a    # 0.6f

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1, p2}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p1}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result p1

    mul-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-virtual {p1, p2}, Lcom/android/camera/module/BaseModule;->setMinZoomRatio(F)V

    iget-object p0, p0, Lcom/android/camera/module/MiLiveModule$2;->this$0:Lcom/android/camera/module/MiLiveModule;

    const/high16 p1, 0x40c00000    # 6.0f

    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getMaxZoomRatio()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setMaxZoomRatio(F)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onRecorderPaused(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
