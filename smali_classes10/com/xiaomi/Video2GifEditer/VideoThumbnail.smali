.class public Lcom/xiaomi/Video2GifEditer/VideoThumbnail;
.super Ljava/lang/Object;
.source "VideoThumbnail.java"


# static fields
.field private static TAG:Ljava/lang/String; = "MediaThumbnail"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CancelThumbnails()V
    .locals 2

    sget-object v0, Lcom/xiaomi/Video2GifEditer/VideoThumbnail;->TAG:Ljava/lang/String;

    const-string v1, "CancelThumbnails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/Video2GifEditer/VideoThumbnail;->CancelThumbnailsJni()V

    return-void
.end method

.method private static native CancelThumbnailsJni()V
.end method

.method public static GenerateThumbnails(Ljava/lang/String;Ljava/lang/String;III)[Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/xiaomi/Video2GifEditer/VideoThumbnail;->TAG:Ljava/lang/String;

    const-string v1, "GenerateThumbnails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/Video2GifEditer/VideoThumbnail;->GenerateThumbnailsJni(Ljava/lang/String;Ljava/lang/String;III)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native GenerateThumbnailsJni(Ljava/lang/String;Ljava/lang/String;III)[Ljava/lang/String;
.end method