.class Lcom/android/camera/features/gif/LimitInputEditText$InnerInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "LimitInputEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/LimitInputEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerInputConnection"
.end annotation


# instance fields
.field private pattern:Ljava/util/regex/Pattern;

.field final synthetic this$0:Lcom/android/camera/features/gif/LimitInputEditText;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/LimitInputEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/LimitInputEditText$InnerInputConnection;->this$0:Lcom/android/camera/features/gif/LimitInputEditText;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    const-string p1, "^[\\u4e00-\\u9fa5a-zA-Z0-9]+$"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/gif/LimitInputEditText$InnerInputConnection;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/LimitInputEditText$InnerInputConnection;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
