.class Landroid/widget/Editor$AnimatePopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatePopupWindow"
.end annotation


# instance fields
.field private mDismissing:Z

.field private mFader:Landroid/widget/Editor$Fader;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->this$0:Landroid/widget/Editor;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    iget-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-nez p1, :cond_0

    const p1, 0x110f0003

    invoke-virtual {p0, p1}, Landroid/widget/Editor$AnimatePopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Editor$Fader;->cancelAnimations()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    invoke-interface {v0}, Landroid/widget/Editor$Fader;->fadeOut()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    invoke-virtual {p0}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss()V

    :goto_0
    return-void
.end method

.method public isDismissing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    return v0
.end method

.method public setFader(Landroid/widget/Editor$Fader;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Editor$Fader;->cancelAnimations()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_1

    invoke-interface {v0, p3, p4}, Landroid/widget/Editor$Fader;->fadeIn(II)V

    :cond_1
    return-void
.end method

.method public update(IIII)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mDismissing:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v0, p0, Landroid/widget/Editor$AnimatePopupWindow;->mFader:Landroid/widget/Editor$Fader;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/widget/Editor$Fader;->setY(I)V

    :cond_0
    return-void
.end method
