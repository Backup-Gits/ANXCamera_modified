.class Lmiui/maml/elements/AnimatedScreenElement$4;
.super Ljava/lang/Object;
.source "AnimatedScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/AnimatedScreenElement;->folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/AnimatedScreenElement;

.field final synthetic val$configName:Ljava/lang/String;

.field final synthetic val$fromStateName:Ljava/lang/String;

.field final synthetic val$toStateName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/AnimatedScreenElement$4;->this$0:Lmiui/maml/elements/AnimatedScreenElement;

    iput-object p2, p0, Lmiui/maml/elements/AnimatedScreenElement$4;->val$fromStateName:Ljava/lang/String;

    iput-object p3, p0, Lmiui/maml/elements/AnimatedScreenElement$4;->val$toStateName:Ljava/lang/String;

    iput-object p4, p0, Lmiui/maml/elements/AnimatedScreenElement$4;->val$configName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lmiui/maml/elements/AnimatedScreenElement$4;->this$0:Lmiui/maml/elements/AnimatedScreenElement;

    iget-object v1, p0, Lmiui/maml/elements/AnimatedScreenElement$4;->val$fromStateName:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/elements/AnimatedScreenElement$4;->val$toStateName:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/elements/AnimatedScreenElement$4;->val$configName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lmiui/maml/elements/AnimatedScreenElement;->access$600(Lmiui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
