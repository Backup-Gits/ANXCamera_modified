.class public abstract Lmiui/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;,
        Lmiui/telephony/SubscriptionManager$ConstantsDefiner;,
        Lmiui/telephony/SubscriptionManager$Holder;
    }
.end annotation


# static fields
.field public static final DEFAULT_PHONE_ID:I

.field public static final DEFAULT_SLOT_ID:I

.field public static final DEFAULT_SUBSCRIPTION_ID:I

.field public static final INVALID_PHONE_ID:I

.field public static final INVALID_SLOT_ID:I

.field public static final INVALID_SUBSCRIPTION_ID:I

.field protected static final LOG_TAG:Ljava/lang/String; = "SubMgr"

.field public static final PHONE_KEY:Ljava/lang/String;

.field public static final SLOT_ID_1:I = 0x0

.field public static final SLOT_ID_2:I = 0x1

.field public static final SLOT_KEY:Ljava/lang/String;

.field public static final SUBSCRIPTION_KEY:Ljava/lang/String;


# instance fields
.field private mInsertedSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mSubscriptionsCacheEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getInvalidSubscriptionIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getInvalidPhoneIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getInvalidSlotIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getDefaultSubscriptionIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getDefaultPhoneIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getDefaultSlotIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getSubscriptionKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getPhoneKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getSlotKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lmiui/telephony/SubscriptionManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    return-void
.end method

.method static synthetic access$100(Lmiui/telephony/SubscriptionManager;)V
    .locals 0

    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;->notifyOnSubscriptionsChangedListeners()V

    return-void
.end method

.method private ensureSubscriptionInfoCache(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_4

    sget-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureSubscriptionInfoCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    const-string v2, ""

    goto :goto_0

    :cond_3
    const-string v2, "false"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " insert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubMgr"

    invoke-static {v2, v1}, Lmiui/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static getDefault()Lmiui/telephony/SubscriptionManager;
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static getPhoneId(Landroid/os/Bundle;I)I
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getPhoneIdExtra(Landroid/content/Intent;I)I
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSlotId(Landroid/os/Bundle;I)I
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSlotIdExtra(Landroid/content/Intent;I)I
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSubscriptionId(Landroid/os/Bundle;I)I
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSubscriptionIdExtra(Landroid/content/Intent;I)I
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isRealSlotId(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSlotId(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_1

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 1

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyOnSubscriptionsChangedListeners()V
    .locals 4

    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SubMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify OnSubscriptionsChangedListener size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-interface {v2}, Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static putPhoneId(Landroid/os/Bundle;I)V
    .locals 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    nop

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    return-void
.end method

.method public static putPhoneIdExtra(Landroid/content/Intent;I)V
    .locals 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    nop

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    return-void
.end method

.method public static putSlotId(Landroid/os/Bundle;I)V
    .locals 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    return-void
.end method

.method public static putSlotIdExtra(Landroid/content/Intent;I)V
    .locals 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    return-void
.end method

.method public static putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V
    .locals 1

    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static putSubscriptionId(Landroid/os/Bundle;I)V
    .locals 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    return-void
.end method

.method public static putSubscriptionIdExtra(Landroid/content/Intent;I)V
    .locals 2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    return-void
.end method

.method public static toSimpleString(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_4

    new-array v2, v1, [Lmiui/telephony/SubscriptionInfo;

    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "[ size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v2, v0

    if-nez v5, :cond_1

    const-string v6, "SubMgr"

    const-string v7, "toSimpleString SubscriptionInfo size was changed"

    invoke-static {v6, v7}, Lmiui/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-string v6, " {id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " iccid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmiui/telephony/TelephonyUtils;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " slot="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " active="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v6, 0x7d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "[]"

    return-object v0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 2

    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnSubscriptionsChangedListener listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubMgr"

    invoke-static {v1, v0}, Lmiui/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListenerInternal()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract addOnSubscriptionsChangedListenerInternal()V
.end method

.method public disableSubscriptionsCache()V
    .locals 2

    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListenerInternal()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "SubscriptionManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "mListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    nop

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInsertedSubscriptionInfos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public enableSubscriptionsCache()V
    .locals 2

    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListenerInternal()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAllSubscriptionInfoListInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultDataSlotId()I
.end method

.method public abstract getDefaultDataSubscriptionId()I
.end method

.method public abstract getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public getDefaultSlotId()I
    .locals 3

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    :goto_0
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v1

    :cond_1
    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotIdInternal()I

    move-result v1

    :cond_3
    return v1
.end method

.method protected abstract getDefaultSlotIdInternal()I
.end method

.method public getDefaultSmsSlotId()I
    .locals 1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    return v0
.end method

.method public abstract getDefaultSmsSubscriptionId()I
.end method

.method public abstract getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public getDefaultSubscriptionId()I
    .locals 2

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotIdInternal()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    :cond_2
    return v0
.end method

.method public getDefaultSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .locals 1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultVoiceSlotId()I
.end method

.method public abstract getDefaultVoiceSubscriptionId()I
.end method

.method public abstract getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public getPhoneIdForSlot(I)I
    .locals 0

    return p1
.end method

.method public getPhoneIdForSubscription(I)I
    .locals 2

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    return v0

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_1

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    :goto_0
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method protected getSlotId(I)I
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSlotIdForPhone(I)I
    .locals 0

    return p1
.end method

.method public getSlotIdForSubscription(I)I
    .locals 2

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    return v0

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_1

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    :goto_0
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method

.method public getSubscriptionIdForSlot(I)I
    .locals 5

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    return v0

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_1

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSubscriptionInfoCount()I
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;
    .locals 4

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result p1

    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    if-ne v3, p1, :cond_2

    return-object v2

    :cond_2
    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;
    .locals 4

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_2

    return-object v2

    :cond_2
    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getSubscriptionInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method protected abstract getSubscriptionInfoListInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected onSubscriptionInfoChanged()V
    .locals 5

    iget-boolean v0, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;->notifyOnSubscriptionsChangedListeners()V

    goto :goto_0

    :cond_0
    new-instance v0, Lmiui/telephony/SubscriptionManager$1;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManager$1;-><init>(Lmiui/telephony/SubscriptionManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Void;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lmiui/telephony/SubscriptionManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 2

    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    iget-boolean v1, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListenerInternal()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract removeOnSubscriptionsChangedListenerInternal()V
.end method

.method public abstract setDefaultDataSlotId(I)V
.end method

.method public setDefaultDataSubscriptionId(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultDataSlotId(I)V

    return-void
.end method

.method public setDefaultSmsSlotId(I)V
    .locals 1

    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget p1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    :cond_0
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSmsSlotId()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultSmsSubscriptionId(I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract setDefaultSmsSubscriptionId(I)V
.end method

.method public abstract setDefaultVoiceSlotId(I)V
.end method

.method public setDefaultVoiceSubscriptionId(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultVoiceSlotId(I)V

    return-void
.end method
