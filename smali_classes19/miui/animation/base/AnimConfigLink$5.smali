.class Lmiui/animation/base/AnimConfigLink$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/animation/base/AnimConfigLink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/base/AnimConfigLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmiui/animation/base/AnimConfigLink$a<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget-wide p0, p1, Lmiui/animation/base/AnimConfig;->minDuration:J

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lmiui/animation/base/AnimConfigLink$5;->a(Lmiui/animation/base/AnimConfig;Lmiui/animation/property/FloatProperty;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
