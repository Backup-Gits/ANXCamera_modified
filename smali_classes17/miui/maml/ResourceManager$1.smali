.class Lmiui/maml/ResourceManager$1;
.super Landroid/util/LruCache;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lmiui/maml/ResourceManager$BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ResourceManager;


# direct methods
.method constructor <init>(Lmiui/maml/ResourceManager;I)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/ResourceManager$1;->this$0:Lmiui/maml/ResourceManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lmiui/maml/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/ResourceManager$1;->sizeOf(Ljava/lang/String;Lmiui/maml/ResourceManager$BitmapInfo;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Lmiui/maml/ResourceManager$BitmapInfo;)I
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lmiui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
