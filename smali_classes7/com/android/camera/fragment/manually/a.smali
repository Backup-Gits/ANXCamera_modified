.class public final synthetic Lcom/android/camera/fragment/manually/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic kg:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/manually/FragmentManuallyExtra;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/manually/a;->kg:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/manually/a;->kg:Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;->Na()V

    return-void
.end method
