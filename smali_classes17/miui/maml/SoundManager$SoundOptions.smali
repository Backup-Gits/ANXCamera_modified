.class public Lmiui/maml/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundOptions"
.end annotation


# instance fields
.field public mKeepCur:Z

.field public mLoop:Z

.field public mVolume:F


# direct methods
.method public constructor <init>(ZZF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmiui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    iput-boolean p2, p0, Lmiui/maml/SoundManager$SoundOptions;->mLoop:Z

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    iput v0, p0, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_1

    iput v0, p0, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_0

    :cond_1
    iput p3, p0, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    :goto_0
    return-void
.end method
