.class public interface abstract Landroid/net/nsd/INsdManager;
.super Ljava/lang/Object;
.source "INsdManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/INsdManager$Stub;,
        Landroid/net/nsd/INsdManager$Default;
    }
.end annotation


# virtual methods
.method public abstract getMessenger()Landroid/os/Messenger;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
