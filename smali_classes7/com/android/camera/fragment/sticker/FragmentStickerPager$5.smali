.class Lcom/android/camera/fragment/sticker/FragmentStickerPager$5;
.super Ljava/lang/Object;
.source "FragmentStickerPager.java"

# interfaces
.implements Lcom/android/camera/network/resource/DownloadHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/sticker/FragmentStickerPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/sticker/FragmentStickerPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/sticker/FragmentStickerPager$5;->this$0:Lcom/android/camera/fragment/sticker/FragmentStickerPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadPath(Lcom/android/camera/network/resource/Resource;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/camera/sticker/StickerHelper;->getInstance()Lcom/android/camera/sticker/StickerHelper;

    move-result-object p0

    iget-wide v0, p1, Lcom/android/camera/network/resource/Resource;->id:J

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/sticker/StickerHelper;->getStickerPath(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
