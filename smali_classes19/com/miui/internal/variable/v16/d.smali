.class Lcom/miui/internal/variable/v16/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Preference_Preference$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/d;->j:Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    iget-object v0, p0, Lcom/miui/internal/variable/v16/d;->j:Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->a(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;JLandroid/preference/Preference;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public onBindView(Landroid/preference/Preference;Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/variable/v16/d;->j:Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;->a(Lcom/miui/internal/variable/v16/Android_Preference_Preference_class;JLandroid/preference/Preference;Landroid/view/View;)V

    return-void
.end method
