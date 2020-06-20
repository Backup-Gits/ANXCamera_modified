.class public Lcom/miui/whetstone/Event/WhetstoneEventLog;
.super Ljava/lang/Object;
.source "WhetstoneEventLog.java"


# static fields
.field private static final DATA_START:I = 0x18

.field private static final INT_TYPE:B = 0x0t

.field private static final LENGTH_OFFSET:I = 0x0

.field private static final LIST_TYPE:B = 0x3t

.field private static final LONG_TYPE:B = 0x1t

.field private static final NANOSECONDS_OFFSET:I = 0x10

.field private static final PAYLOAD_START:I = 0x14

.field private static final PROCESS_OFFSET:I = 0x4

.field private static final SECONDS_OFFSET:I = 0xc

.field private static final STRING_TYPE:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "WhetstoneEventLog"

.field private static final TAG_OFFSET:I = 0x14

.field private static final THREAD_OFFSET:I = 0x8


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private mData:Ljava/lang/Object;

.field private mLength:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    goto :goto_0

    :cond_0
    instance-of v0, v0, Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    :cond_1
    :goto_0
    return-void
.end method

.method private decodeObject()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x100

    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    iput v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->decodeObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown entry type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iget-object v2, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    add-int v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v2, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    const-string v2, "WhetstoneEventLog"

    const-string v3, "UTF-8 is not supported"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2

    :cond_4
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_5
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private getObject(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mLength:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mData:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhetstoneEventLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getParameter(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_2

    move v1, v4

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_5

    add-int/lit8 v5, v0, 0x1

    if-le v4, v5, :cond_5

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p1, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    if-lez v0, :cond_4

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_4

    const/4 v5, -0x1

    if-ne v1, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_3

    add-int/lit8 v5, v0, 0x1

    if-le v4, v5, :cond_3

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p1, v2, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    move v0, v4

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v2

    :cond_6
    :goto_2
    return-object v2
.end method


# virtual methods
.method public declared-synchronized getData()Ljava/lang/Object;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->decodeObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "WhetstoneEventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Truncated entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "WhetstoneEventLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal entry payload: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTag()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getProcessId()I
    .locals 2

    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTag()I
    .locals 2

    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getThreadId()I
    .locals 2

    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTimeNanos()J
    .locals 4

    iget-object v0, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/whetstone/Event/WhetstoneEventLog;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public print()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getProcessId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTimeNanos()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getTag()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/whetstone/Event/WhetstoneEventLog;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WhetstoneEventLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
