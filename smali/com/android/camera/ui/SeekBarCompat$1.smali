.class Lcom/android/camera/ui/SeekBarCompat$1;
.super Ljava/lang/Object;
.source "SeekBarCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SeekBarCompat;->startAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SeekBarCompat;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SeekBarCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat$1;->this$0:Lcom/android/camera/ui/SeekBarCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat$1;->this$0:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/ui/SeekBarCompat;->access$002(Lcom/android/camera/ui/SeekBarCompat;F)F

    iget-object p0, p0, Lcom/android/camera/ui/SeekBarCompat$1;->this$0:Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method
