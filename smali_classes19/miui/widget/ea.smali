.class Lmiui/widget/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/Rotation3DLayout;->resetRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lmiui/widget/Rotation3DLayout;


# direct methods
.method constructor <init>(Lmiui/widget/Rotation3DLayout;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ea;->j:Lmiui/widget/Rotation3DLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lmiui/widget/ea;->j:Lmiui/widget/Rotation3DLayout;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/widget/Rotation3DLayout;->b(Lmiui/widget/Rotation3DLayout;FZ)V

    return-void
.end method
