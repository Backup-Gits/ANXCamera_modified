.class Lmiui/maml/ScreenElementRoot$2;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Lmiui/maml/elements/ScreenElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ScreenElementRoot;->traverseElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ScreenElementRoot;


# direct methods
.method constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$2;->this$0:Lmiui/maml/ScreenElementRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lmiui/maml/elements/ScreenElement;)V
    .locals 2

    instance-of v0, p1, Lmiui/maml/elements/FramerateController;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lmiui/maml/elements/FramerateController;

    invoke-virtual {v0, v1}, Lmiui/maml/RendererController;->addFramerateController(Lmiui/maml/elements/FramerateController;)V

    :cond_0
    instance-of v0, p1, Lmiui/maml/elements/ElementGroupRC;

    if-nez v0, :cond_1

    instance-of v0, p1, Lmiui/maml/ScreenElementRoot;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$2;->this$0:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0}, Lmiui/maml/ScreenElementRoot;->access$000(Lmiui/maml/ScreenElementRoot;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
