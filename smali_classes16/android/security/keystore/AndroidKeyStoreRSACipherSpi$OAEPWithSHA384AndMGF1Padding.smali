.class public Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding;
.super Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreRSACipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEPWithSHA384AndMGF1Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->finalize()V

    return-void
.end method