.class Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$11;
.super Ljava/lang/Object;
.source "LightingAnimateDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->animateExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$11;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable$11;->this$0:Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;->access$202(Lcom/android/camera/ui/drawable/lighting/LightingAnimateDrawable;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
