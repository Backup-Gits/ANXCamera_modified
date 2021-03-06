.class public Lmiui/maml/elements/FramerateController;
.super Lmiui/maml/elements/ScreenElement;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/FramerateController$ControlPoint;
    }
.end annotation


# static fields
.field public static final INNER_TAG:Ljava/lang/String; = "ControlPoint"

.field public static final TAG_NAME:Ljava/lang/String; = "FramerateController"


# instance fields
.field private mControlPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/elements/FramerateController$ControlPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelay:J

.field private mLastUpdateTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoop:Z

.field private mNextUpdateInterval:J

.field private mStartTime:J

.field private mStopped:Z

.field private mTag:Ljava/lang/String;

.field private mTimeRange:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    const-string v0, "loop"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    const-string/jumbo v0, "tag"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    const-string v0, "delay"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/maml/elements/FramerateController;->mDelay:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FramerateController"

    const-string v3, "invalid delay attribute"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "ControlPoint"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    iget-object v4, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    new-instance v5, Lmiui/maml/elements/FramerateController$ControlPoint;

    invoke-direct {v5, v3}, Lmiui/maml/elements/FramerateController$ControlPoint;-><init>(Lorg/w3c/dom/Element;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v2, v2, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    iput-wide v2, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    iget-boolean v2, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lmiui/maml/elements/FramerateController;->mLoop:Z

    return-void
.end method

.method private restart(J)V
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lmiui/maml/elements/FramerateController;->mDelay:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lmiui/maml/elements/FramerateController;->mStartTime:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/elements/FramerateController;->mStopped:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    iput-wide v1, p0, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->requestUpdate()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 2

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    sub-long v0, p1, p3

    invoke-direct {p0, v0, v1}, Lmiui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public reset(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/FramerateController;->restart(J)V

    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/FramerateController;->mTag:Ljava/lang/String;

    invoke-static {p1, v0}, Lmiui/maml/elements/FramerateController;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/FramerateController;->show(Z)V

    return-void
.end method

.method public updateFramerate(J)J
    .locals 15

    move-object v1, p0

    move-wide/from16 v2, p1

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->updateVisibility()V

    invoke-virtual {p0}, Lmiui/maml/elements/FramerateController;->isVisible()Z

    move-result v0

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v4

    :cond_0
    iget-object v6, v1, Lmiui/maml/elements/FramerateController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v0, v1, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v0, :cond_1

    monitor-exit v6

    return-wide v4

    :cond_1
    iget-wide v7, v1, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    iget-wide v7, v1, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    sub-long v7, v2, v7

    cmp-long v0, v7, v9

    if-ltz v0, :cond_2

    iget-wide v11, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    cmp-long v0, v7, v11

    if-gez v0, :cond_2

    iget-wide v4, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    sub-long/2addr v4, v7

    iput-wide v4, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    iput-wide v2, v1, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    iget-wide v4, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v6

    return-wide v4

    :cond_2
    iget-wide v7, v1, Lmiui/maml/elements/FramerateController;->mStartTime:J

    sub-long v7, v2, v7

    cmp-long v0, v7, v9

    if-gez v0, :cond_3

    const-wide/16 v7, 0x0

    :cond_3
    iget-boolean v0, v1, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-eqz v0, :cond_4

    iget-wide v9, v1, Lmiui/maml/elements/FramerateController;->mTimeRange:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    rem-long v9, v7, v9

    goto :goto_0

    :cond_4
    move-wide v9, v7

    :goto_0
    const-wide/16 v11, 0x0

    iget-object v0, v1, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    :goto_1
    if-ltz v0, :cond_8

    iget-object v14, v1, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/maml/elements/FramerateController$ControlPoint;

    iget-wide v4, v14, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    cmp-long v4, v9, v4

    if-ltz v4, :cond_7

    iget v4, v14, Lmiui/maml/elements/FramerateController$ControlPoint;->mFramerate:I

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Lmiui/maml/elements/FramerateController;->requestFramerate(F)V

    iget-boolean v4, v1, Lmiui/maml/elements/FramerateController;->mLoop:Z

    if-nez v4, :cond_5

    iget-object v4, v1, Lmiui/maml/elements/FramerateController;->mControlPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v13

    if-ne v0, v4, :cond_5

    iput-boolean v13, v1, Lmiui/maml/elements/FramerateController;->mStopped:Z

    :cond_5
    iput-wide v2, v1, Lmiui/maml/elements/FramerateController;->mLastUpdateTime:J

    iget-boolean v4, v1, Lmiui/maml/elements/FramerateController;->mStopped:Z

    if-eqz v4, :cond_6

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_2

    :cond_6
    sub-long v4, v11, v9

    :goto_2
    iput-wide v4, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    iget-wide v4, v1, Lmiui/maml/elements/FramerateController;->mNextUpdateInterval:J

    monitor-exit v6

    return-wide v4

    :cond_7
    iget-wide v4, v14, Lmiui/maml/elements/FramerateController$ControlPoint;->mTime:J

    move-wide v11, v4

    add-int/lit8 v0, v0, -0x1

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_1

    :cond_8
    monitor-exit v6

    const-wide v4, 0x7fffffffffffffffL

    return-wide v4

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
