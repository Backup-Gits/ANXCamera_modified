.class public abstract Lmiui/maml/elements/ElementGroupRC;
.super Lmiui/maml/elements/ElementGroup;
.source "ElementGroupRC.java"


# instance fields
.field protected mController:Lmiui/maml/RendererController;

.field private mFrameRate:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const/4 v0, 0x0

    const-string v1, "frameRate"

    invoke-static {p1, v1, v0}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    iget v1, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    new-instance v0, Lmiui/maml/RendererController;

    invoke-direct {v0}, Lmiui/maml/RendererController;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ElementGroupRC;->onControllerCreated(Lmiui/maml/RendererController;)V

    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRendererController()Lmiui/maml/RendererController;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    iget v0, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ElementGroupRC;->requestFramerate(F)V

    return-void
.end method

.method protected abstract onControllerCreated(Lmiui/maml/RendererController;)V
.end method
