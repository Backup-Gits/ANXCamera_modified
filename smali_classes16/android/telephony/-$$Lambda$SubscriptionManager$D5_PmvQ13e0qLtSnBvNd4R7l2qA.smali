.class public final synthetic Landroid/telephony/-$$Lambda$SubscriptionManager$D5_PmvQ13e0qLtSnBvNd4R7l2qA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/telephony/-$$Lambda$SubscriptionManager$D5_PmvQ13e0qLtSnBvNd4R7l2qA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/-$$Lambda$SubscriptionManager$D5_PmvQ13e0qLtSnBvNd4R7l2qA;

    invoke-direct {v0}, Landroid/telephony/-$$Lambda$SubscriptionManager$D5_PmvQ13e0qLtSnBvNd4R7l2qA;-><init>()V

    sput-object v0, Landroid/telephony/-$$Lambda$SubscriptionManager$D5_PmvQ13e0qLtSnBvNd4R7l2qA;->INSTANCE:Landroid/telephony/-$$Lambda$SubscriptionManager$D5_PmvQ13e0qLtSnBvNd4R7l2qA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->lambda$addSubscriptionsIntoGroup$7(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
