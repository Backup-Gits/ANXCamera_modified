.class Lcom/miui/internal/hybrid/HybridManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/hybrid/HybridManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private hy:Ljava/lang/String;

.field final synthetic j:Lcom/miui/internal/hybrid/HybridManager;

.field private mResponse:Lmiui/hybrid/Response;


# direct methods
.method public constructor <init>(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/hybrid/HybridManager$b;->j:Lcom/miui/internal/hybrid/HybridManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/hybrid/HybridManager$b;->mResponse:Lmiui/hybrid/Response;

    iput-object p3, p0, Lcom/miui/internal/hybrid/HybridManager$b;->hy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/hybrid/HybridManager$b;->j:Lcom/miui/internal/hybrid/HybridManager;

    iget-object v1, p0, Lcom/miui/internal/hybrid/HybridManager$b;->mResponse:Lmiui/hybrid/Response;

    iget-object v2, p0, Lcom/miui/internal/hybrid/HybridManager$b;->hy:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/internal/hybrid/HybridManager;->a(Lcom/miui/internal/hybrid/HybridManager;Lmiui/hybrid/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/internal/hybrid/HybridManager$b;->j:Lcom/miui/internal/hybrid/HybridManager;

    invoke-static {p0}, Lcom/miui/internal/hybrid/HybridManager;->b(Lcom/miui/internal/hybrid/HybridManager;)Lmiui/hybrid/HybridView;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/hybrid/HybridView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
