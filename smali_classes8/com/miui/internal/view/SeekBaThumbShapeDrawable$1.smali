.class Lcom/miui/internal/view/SeekBaThumbShapeDrawable$1;
.super Lmiui/animation/property/FloatProperty;
.source "SeekBaThumbShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/view/SeekBaThumbShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/animation/property/FloatProperty<",
        "Lcom/miui/internal/view/SeekBaThumbShapeDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/view/SeekBaThumbShapeDrawable;


# direct methods
.method constructor <init>(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$1;->this$0:Lcom/miui/internal/view/SeekBaThumbShapeDrawable;

    invoke-direct {p0, p2}, Lmiui/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;)F
    .locals 0

    invoke-virtual {p1}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->getShadowAlpha()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$1;->getValue(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;F)V
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :goto_0
    const/4 p2, 0x0

    cmpg-float v0, p0, p2

    if-gez v0, :cond_1

    move p0, p2

    :cond_1
    invoke-virtual {p1, p0}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;->setShadowAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/miui/internal/view/SeekBaThumbShapeDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/view/SeekBaThumbShapeDrawable$1;->setValue(Lcom/miui/internal/view/SeekBaThumbShapeDrawable;F)V

    return-void
.end method
