.class Lcom/android/camera/module/Camera2Module$9;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module;->startCount(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/Camera2Module;

.field final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/android/camera/module/Camera2Module;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    iput p2, p0, Lcom/android/camera/module/Camera2Module$9;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideAlert()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->tryRemoveCountDownMessage()V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/module/Camera2Module;->onShutterButtonFocus(ZI)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getTriggerMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/module/Camera2Module;->access$3300(Lcom/android/camera/module/Camera2Module;I)V

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/module/Camera2Module;->onShutterButtonFocus(ZI)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v1, -0x1

    invoke-static {p0, v1}, Lcom/android/camera/module/Camera2Module;->access$3402(Lcom/android/camera/module/Camera2Module;I)I

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->reInitAlert(Z)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/module/Camera2Module$9;->val$time:I

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    iget-object p0, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p0, p0, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module$9;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0, p1}, Lcom/android/camera/module/Camera2Module;->access$3202(Lcom/android/camera/module/Camera2Module;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0xac

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/module/d;

    invoke-direct {v2, p1}, Lcom/android/camera/module/d;-><init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    const-wide/16 v3, 0x78

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->clearFocusView(I)V

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$9;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget p0, p0, Lcom/android/camera/module/Camera2Module$9;->val$time:I

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->showDelayNumber(I)V

    return-void
.end method
