.class Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$SelectionHandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    return-void
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public updatePosition(FF)V
    .locals 5

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    return-void

    :cond_0
    iget v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    invoke-static {v2, v0, v3, p2}, Landroid/widget/Editor;->access$6400(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    if-lt v3, v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    :cond_2
    iput v2, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    invoke-direct {p0, v3}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    return-void
.end method

.method public updateSelection(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable(Z)V

    return-void
.end method
