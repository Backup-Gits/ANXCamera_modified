.class public final synthetic Lcom/android/camera/fragment/top/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/fragment/top/TopBarAnimationComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/top/TopBarAnimationComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/o;->kg:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/o;->kg:Lcom/android/camera/fragment/top/TopBarAnimationComponent;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/TopBarAnimationComponent;->Tc()V

    return-void
.end method
