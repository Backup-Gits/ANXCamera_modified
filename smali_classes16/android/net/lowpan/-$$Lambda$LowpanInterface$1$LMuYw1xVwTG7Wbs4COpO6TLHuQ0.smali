.class public final synthetic Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$LMuYw1xVwTG7Wbs4COpO6TLHuQ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/lowpan/LowpanInterface$Callback;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$LMuYw1xVwTG7Wbs4COpO6TLHuQ0;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iput-boolean p2, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$LMuYw1xVwTG7Wbs4COpO6TLHuQ0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$LMuYw1xVwTG7Wbs4COpO6TLHuQ0;->f$0:Landroid/net/lowpan/LowpanInterface$Callback;

    iget-boolean v1, p0, Landroid/net/lowpan/-$$Lambda$LowpanInterface$1$LMuYw1xVwTG7Wbs4COpO6TLHuQ0;->f$1:Z

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onEnabledChanged$0(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    return-void
.end method
