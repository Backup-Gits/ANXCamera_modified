.class Lmiui/hybrid/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/hybrid/HybridChromeClient;->onJsConfirm(Lmiui/hybrid/HybridView;Ljava/lang/String;Ljava/lang/String;Lmiui/hybrid/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XO:Lmiui/hybrid/JsResult;

.field final synthetic j:Lmiui/hybrid/HybridChromeClient;


# direct methods
.method constructor <init>(Lmiui/hybrid/HybridChromeClient;Lmiui/hybrid/JsResult;)V
    .locals 0

    iput-object p1, p0, Lmiui/hybrid/e;->j:Lmiui/hybrid/HybridChromeClient;

    iput-object p2, p0, Lmiui/hybrid/e;->XO:Lmiui/hybrid/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lmiui/hybrid/e;->XO:Lmiui/hybrid/JsResult;

    invoke-virtual {p0}, Lmiui/hybrid/JsResult;->cancel()V

    return-void
.end method
