.class public Lmiui/telephony/dtmf/DTMFAudioInputStream;
.super Ljava/io/InputStream;
.source "DTMFAudioInputStream.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTMFAudioInputStream"


# instance fields
.field private mByteBuff:[B

.field private mReadedCnt:I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "DTMFAudioInputStream"

    const-string v1, "parameter error"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    aget-byte v0, v1, v0

    return v0
.end method

.method public read([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    if-eqz v0, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    move v1, p2

    array-length v2, v0

    iget v3, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    sub-int/2addr v2, v3

    if-ge v2, p2, :cond_1

    array-length v0, v0

    sub-int v1, v0, v3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    :goto_1
    const-string v0, "DTMFAudioInputStream"

    const-string v1, "paramenter error:fail to get subdatalist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method
