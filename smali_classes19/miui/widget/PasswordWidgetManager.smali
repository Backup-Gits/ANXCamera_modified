.class public Lmiui/widget/PasswordWidgetManager;
.super Lmiui/widget/StateEditText$WidgetManager;
.source "SourceFile"


# static fields
.field private static final Bt:[I


# instance fields
.field private aZ:Lmiui/widget/StateEditText;

.field private bZ:Landroid/graphics/drawable/Drawable;

.field private mIsChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiui/widget/PasswordWidgetManager;->Bt:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/StateEditText$WidgetManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    sget p2, Lcom/miui/internal/R$attr;->visibilityIcon:I

    invoke-static {p1, p2}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/PasswordWidgetManager;->bZ:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getWidgetDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lmiui/widget/PasswordWidgetManager;->bZ:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public onAttached(Lmiui/widget/StateEditText;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/PasswordWidgetManager;->aZ:Lmiui/widget/StateEditText;

    return-void
.end method

.method public onWidgetClick(I)V
    .locals 1

    iget-boolean p1, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    iget-object p1, p0, Lmiui/widget/PasswordWidgetManager;->aZ:Lmiui/widget/StateEditText;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1
    iget-object p1, p0, Lmiui/widget/PasswordWidgetManager;->bZ:Landroid/graphics/drawable/Drawable;

    iget-boolean p0, p0, Lmiui/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz p0, :cond_2

    sget-object p0, Lmiui/widget/PasswordWidgetManager;->Bt:[I

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [I

    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method
